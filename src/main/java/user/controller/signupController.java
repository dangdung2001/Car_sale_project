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
import org.springframework.security.core.userdetails.UserDetails;
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

//	show form register
	@RequestMapping("/signup")
	public ModelAndView showSignupForm(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}

//	after submit form register , to verify email 
	@RequestMapping(path = "/verifyemail", method = RequestMethod.POST)
	public ModelAndView showformVerifyEmail(@RequestParam("file") MultipartFile file, @ModelAttribute("user") @Valid userEntity user, HttpServletRequest request)
			throws IOException {

		request.getSession().setAttribute("user", user);
		
		request.getSession().setAttribute("byteFile", file.getBytes());
		
		request.getSession().setAttribute("namefile" , file.getOriginalFilename());
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("verifyEmail");
		
		return mv;
	}


	

}
