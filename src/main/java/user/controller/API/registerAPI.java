package user.controller.API;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import user.DTO.AuthenticationRequest;
import user.DTO.AuthenticationResponse;
import user.Services.authService;
import user.Services.registerService;
import user.entity.userEntity;

@RestController
@RequestMapping("/api/register")
public class registerAPI {

	@Autowired
	private registerService registerService;
	
	

	private final HashMap<String, String> usernameIsChecked = new HashMap<String, String>();

//	api for check user name when user create account is existed or not
	@PostMapping("/checkusernameExisted/{username}")
	public ResponseEntity<String> isUsernameExisted(@PathVariable("username") String username) {

		Gson gson = new Gson();
		JsonObject objectResultfalse = new JsonObject();
		objectResultfalse.addProperty("result", false);

		if (!usernameIsChecked.isEmpty()) {
			if (usernameIsChecked.get(username) != null) {
				return ResponseEntity.ok(usernameIsChecked.get(username));
			}
		}

		System.out.println(username);
		JsonObject objectResultTrue = new JsonObject();
		objectResultTrue.addProperty("result", true);

		String jsonTrue = gson.toJson(objectResultTrue);
		String jsonFalse = gson.toJson(objectResultfalse);
		userEntity user = registerService.getUserByUsername(username);
		if (user == null) {
			usernameIsChecked.put(username, jsonFalse);
			return ResponseEntity.ok(jsonFalse);
		}
		usernameIsChecked.put(username, jsonTrue);
		return ResponseEntity.ok(jsonTrue);
	}

	@PostMapping ("/checkEmailExisted/{email}")
	public ResponseEntity<String> isEmailExisted (@PathVariable("email") String email ){
		
		System.out.println(email);
		userEntity user = this.registerService.getUserByEmail(email);
		if(user == null) {
			return ResponseEntity.ok("false");
		}
		else return ResponseEntity.ok("true");
		
	}
	
	@PostMapping("/sendCodeToMail")
	public ResponseEntity<Boolean> sendCodeToMail ( HttpServletRequest request){
		
		int code = this.registerService.createCode();
		
		request.getSession().setAttribute("code", code);
		request.getSession().setMaxInactiveInterval(60);
		
		  userEntity newuser =(userEntity) request.getSession().getAttribute("user");
		 
		
		  String mailregister = newuser.getEmail();
		return ResponseEntity.ok(this.registerService.sendVerificationCode(mailregister, code));
	}
	
	@PostMapping("/confirmCode")
	public ResponseEntity<Boolean> confirmCodeToMail ( @RequestParam("code") int code, HttpServletRequest request){
		
		Integer codeinserver =(Integer) request.getSession().getAttribute("code");
		if(codeinserver != null) {
			
			 if(this.registerService.checkcodeMail(code, codeinserver)) {
				 
				 return ResponseEntity.ok(true);
			 }
		}
		return ResponseEntity.ok(false);
	}
}
