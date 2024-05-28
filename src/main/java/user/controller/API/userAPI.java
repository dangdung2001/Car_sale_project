package user.controller.API;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import user.DTO.addressDTO;
import user.DTO.changePassRequest;
import user.DTO.userDTO;
import user.Services.UserDetailsservice;
import user.Services.mapDTOService;
import user.Services.registerService;
import user.entity.addressEntity;
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
	
	
	@PostMapping("/fetchAddressUser")
	public ResponseEntity<List<addressDTO>> fetchAddressUser (HttpServletRequest request){
		 
		 UsernamePasswordAuthenticationToken authenticationToken = 
				 (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
		
		 UserDetails userAuth =(UserDetails) authenticationToken.getPrincipal();
		 
		 if(userAuth.getUsername() != null) {
			 
			userEntity user = (userEntity) this.registerService.getUserByUsername(userAuth.getUsername());
			
			List<addressEntity> addressEntity = user.getAddresses();
			
			List<addressDTO> addressDTOs = new ArrayList<addressDTO>();
			for (addressEntity address : addressEntity) {
				addressDTOs.add(this.dtoService.MapAddressDTO(address));
			}
			
			return ResponseEntity.ok(addressDTOs);
		 }
		 
		return ResponseEntity.status(404).body(null);
		
	}
	
	@PostMapping("/changePassUser")
	public ResponseEntity<Boolean> changePassUser (@RequestBody changePassRequest passRequest,HttpServletRequest request){
		 
		 UsernamePasswordAuthenticationToken authenticationToken = 
				 (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
		
		 UserDetails userAuth =(UserDetails) authenticationToken.getPrincipal();
		 
		 if(userAuth.getUsername() != null) {
			 
			userEntity user = (userEntity) this.registerService.getUserByUsername(userAuth.getUsername());
			
			if(user != null) {
				
				String newpass = passRequest.getNewpass();
				
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
				String passEncode = encoder.encode(newpass);
				
				user.setPassword(passEncode);
				
				System.out.println(user);
				
				boolean updateUser = this.detailsservice.updateUser(user);
				
				System.out.println(updateUser);
				
				return ResponseEntity.ok(updateUser);
			}
		 }
		 
		return ResponseEntity.status(404).body(false);
		
	}
}
