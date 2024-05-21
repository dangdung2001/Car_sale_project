package user.DAO;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.entity.userEntity;

@Repository
public class userDAO{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
//	find user by user name
	@Transactional
	public userEntity FindUserByUsername (String username){
		
		List<userEntity> users = (List<userEntity>) this.hibernateTemplate.find("from userEntity u where u.username = ?0", username);
		userEntity user = null;
		if(users != null && !users.isEmpty()) {
			System.out.println(users);
			user = users.get(0);
		}
		return user;
	}
	
//	find user by email
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Transactional(readOnly = false)
	public userEntity FindUserByEmail (String email){
		
		List<userEntity> users = new ArrayList<userEntity>();
		String finduserByMail = "from userEntity u where u.email = ?0";
		users = (List<userEntity>) this.hibernateTemplate.find(finduserByMail, email);
		if(users.isEmpty())
			return null;
		System.out.println(users.get(0));
		return users.get(0);
	}
	

//	insert new user
	@Transactional(readOnly = false)
	public userEntity insertNewUser (userEntity newuser) {
		int IDNewUser = 0;
		if(newuser != null) {
		   IDNewUser =(int)this.hibernateTemplate.save(newuser);
		   newuser.setId(IDNewUser);
		}
		return newuser;
	}
	
//	update user
	public userEntity updateUser (userEntity user) {
		return null;
	}
	
//	delete user
	public userEntity deleteUser (userEntity user) {
		return null;
	}
}
