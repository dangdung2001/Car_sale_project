package user.controller.API;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import user.DTO.AuthenticationRequest;
import user.DTO.AuthenticationResponse;
import user.Services.authService;

@RestController
@RequestMapping("/api/v1/login")
public class authLogin {
	
	@Autowired
	private authService authService;
	
	@PostMapping("/auth")
	public ResponseEntity<AuthenticationResponse> authLogin (@RequestBody AuthenticationRequest authrequest ,HttpServletRequest request, HttpServletResponse response){
		
		return  ResponseEntity.ok(authService.authentication(authrequest)); 
	}
}
