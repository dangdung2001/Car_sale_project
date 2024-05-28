package user.controller.API;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import user.DTO.userDTO;
import user.Services.UserDetailsservice;
import user.Services.mapDTOService;
import user.Services.registerService;
import user.entity.userEntity;

@RestController
@RequestMapping("/api/user/")
public class userAPI {

	@Autowired
	private UserDetailsservice detailsservice;
	
	@Autowired
	private registerService registerService;
	
	@Autowired
	private mapDTOService dtoService;
	
	@PostMapping("/fetchUser")
	public ResponseEntity<userDTO> fetchUser (HttpServletRequest request){
		 
		 UsernamePasswordAuthenticationToken authenticationToken = 
				 (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
		
		 UserDetails userAuth =(UserDetails) authenticationToken.getPrincipal();
		 
		 if(userAuth.getUsername() != null) {
			 
			userEntity user = (userEntity) this.registerService.getUserByUsername(userAuth.getUsername());
			
			return ResponseEntity.ok(this.dtoService.MapUserDTO(user));
		 }
		 
		return ResponseEntity.status(404).body(null);
		
	}
}
