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
		
		authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authRequest.getUsername(), authRequest.getPassword()));
		
		UserDetails userdetails = this.userDetailsservice.loadUserByUsername(authRequest.getUsername());
		
		String jwt = jwtService.generateToken(userdetails);
		
		AuthenticationResponse authResp = new AuthenticationResponse(jwt);
		
		return authResp;
		
	}
}
