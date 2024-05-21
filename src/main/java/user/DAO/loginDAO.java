package user.DAO;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.entity.userEntity;

@Repository
public class loginDAO {

	@Autowired
	private userDAO userDAO; 
	
	@Transactional
	public userEntity fetchUserByUsername (String username) {
		userEntity user = this.userDAO.FindUserByUsername(username);
		return user;
	}
	
	@Transactional
	public userEntity fetchUserByEmail (String email) {
		userEntity user = this.userDAO.FindUserByEmail(email);
		
		return user;
	}
	
	
}
