package user.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import user.DTO.userDTO;
import user.Services.registerService;
import user.entity.userEntity;

@Controller
@RequestMapping("/user")
public class signupController {

	@Autowired
	private registerService registerService;

	@RequestMapping("/signup")
	public ModelAndView showSignupForm(HttpServletRequest request) {

		userDTO userDTO = new userDTO();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		mv.addObject("user", userDTO);
		return mv;
	}

	@RequestMapping(path = "/verifyemail", method = RequestMethod.POST)
	public ModelAndView showformVerifyEmail(@RequestParam("file") MultipartFile imgAvatar,
			@ModelAttribute("user") @Valid userEntity user, HttpServletRequest request) throws IOException {

		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		if(!imgAvatar.isEmpty()) {
			
			int codeVerifyEmail = this.registerService.sendVerificationCode(user.getEmail().trim());
			
			System.out.println(codeVerifyEmail);
			
			mv.setViewName("verifyEmail");
			
			session.setAttribute("code", codeVerifyEmail);
			session.setMaxInactiveInterval(300);
			
			session.setAttribute("newuser", user);
			
			session.setAttribute("byteImg", imgAvatar.getBytes());
			
			session.setAttribute("nameImg", imgAvatar.getOriginalFilename());
		}
		else {
			mv.setViewName("register");
		}
		return mv;
	}
	
	
	@RequestMapping("/verifyemailfailed")
	public ModelAndView showformVerifyMailFailed () {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("annotationFailed", "code not correct!!! please check your email");
		mv.setViewName("verifyEmail");
		return mv;
	}
	
	
	/**
	 *  create account when the user enters the correct code 
	 * */
	@RequestMapping(path = "/processingRegister", method = RequestMethod.POST)
	public ModelAndView registerUserAccount( HttpServletRequest request, @RequestParam("codeUser") int code) {

		HttpSession session = request.getSession();
		
		int codeVerifyEmail = (int) session.getAttribute("code");
		if(code != codeVerifyEmail) {
			// add annotation to user when verify code failed !
			return new ModelAndView("redirect:/user/verifyemailfailed");
		}
		
		System.out.println("new account : " + session.getAttribute("newuser"));
		String nameImg = (String) session.getAttribute("nameImg");
		byte[] byteImg = (byte[]) session.getAttribute("byteImg");
		userEntity user = (userEntity) session.getAttribute("newuser");
		
		
		
		if (user != null && byteImg != null) {

			this.registerService.uploadfileProcessing(byteImg, nameImg, request, user.getUsername());
			userDTO newuserSavedDTO = this.registerService.createAccount(user);

			if (newuserSavedDTO != null) {
				session.setAttribute("userLoged", newuserSavedDTO);
				System.out.println("user is login sucess!");
				return new ModelAndView("redirect:/home");
			}

		}
		session.removeAttribute("newuser");
		session.removeAttribute("imgAvatar");
		
		request.setAttribute("resutlRegister", "create account is fail!");
		System.out.println("user is login fail");
		return new ModelAndView("redirect:/user/signup");

	}

	
}
