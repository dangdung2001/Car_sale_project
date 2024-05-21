package user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.Services.UserDetailsservice;

@Controller
public class loginController {

	
	
	@Autowired
	private UserDetailsservice UserDetailsService;
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {

		return "login";
	}

	
}
