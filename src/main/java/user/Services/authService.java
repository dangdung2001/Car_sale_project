package user.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import user.DTO.AuthenticationRequest;
import user.DTO.AuthenticationResponse;
import user.authJWT.jwtService;

@Service
public class authService {

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private UserDetailsservice userDetailsservice;
	
	@Autowired
	private jwtService jwtService;
	
	public AuthenticationResponse authentication (AuthenticationRequest authRequest) {
		String jwt = null;
		try {
			authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequest.getUsername(), authRequest.getPassword()));
			UserDetails userdetails = this.userDetailsservice.loadUserByUsername(authRequest.getUsername());
			
			 jwt = jwtService.generateToken(userdetails);
			 
		} catch (Exception e) {
			System.out.println(e);
		}
		AuthenticationResponse authResp = new AuthenticationResponse(jwt);
		return authResp;
		
	}
	
	public AuthenticationResponse register (UserDetails user) { 
		String jwt = jwtService.generateToken(user);
		
		AuthenticationResponse authResp = new AuthenticationResponse(jwt);
		return authResp;
	}
}
