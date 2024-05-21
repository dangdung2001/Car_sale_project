package user.Services;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import user.DAO.loginDAO;
import user.DAO.userDAO;
import user.entity.roleEntity;
import user.entity.userEntity;

@Service("UserDetailsService")
public class UserDetailsservice implements UserDetailsService{

	@Autowired
	private loginDAO loginDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		userEntity user = this.loginDAO.fetchUserByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException("username not found!!!");
		}
		
		Set<GrantedAuthority> authories = new HashSet<GrantedAuthority>();
		for (roleEntity role : user.getRoles()) {
			authories.add(new SimpleGrantedAuthority(role.getRole().trim()));
		}
		
		return new User(user.getUsername().trim(), user.getPassword().trim(),authories);
	}
	
}
