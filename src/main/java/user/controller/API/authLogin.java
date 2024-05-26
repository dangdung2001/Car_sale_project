package user.controller.API;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.jsonwebtoken.Claims;
import user.DTO.AuthenticationRequest;
import user.DTO.AuthenticationResponse;
import user.Services.UserDetailsservice;
import user.Services.authService;
import user.authJWT.jwtService;

@RestController
@RequestMapping("/api/v1/login")
public class authLogin {
	
	@Autowired
	private authService authService;
	
	@Autowired
	private jwtService jwtService;
	
	@Autowired
	private UserDetailsservice detailsservice;
	
	@PostMapping("/auth")
	public ResponseEntity<AuthenticationResponse> authLogin (@RequestBody AuthenticationRequest authrequest ,HttpServletRequest request, HttpServletResponse response){
		
		return  ResponseEntity.ok(authService.authentication(authrequest)); 
	}
	
	
	@PostMapping("/refreshToken")
	public ResponseEntity<AuthenticationResponse> refreshtoken(HttpServletRequest request) throws Exception {
		// From the HttpRequest get the claims
		Claims claims = (Claims) request.getAttribute("claims");
		UserDetails user = detailsservice.loadUserByUsername(claims.getSubject());
		
		String token = jwtService.generateToken(claims, user);
		return ResponseEntity.ok(new AuthenticationResponse(token));
	}
}
