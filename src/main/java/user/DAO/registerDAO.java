package user.DAO;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.DTO.districtsDTO;
import user.DTO.userDTO;
import user.entity.districtEntity;
import user.entity.userEntity;
import user.entity.wardEntity;

@Repository
public class registerDAO {

	@Autowired
	private HibernateTemplate HibernateTemp;
	
	@Autowired
	private userDAO userDao;

	public List<districtEntity> getDistrictsBy_IDcity(String idcity) {

		List<districtEntity> districts = new ArrayList<>();
		
		String hql = "from districtEntity d where d.province_code = ?0";
		
		districts = (List<districtEntity>) this.HibernateTemp.find(hql, idcity);

		return districts;
	}

	public List<wardEntity> getWardsBy_IDdistrict(String IDdistrict) {

		List<wardEntity> districts = new ArrayList<>();
		
		String hql = "from wardEntity w where w.district_code = ?0";
		
		districts = (List<wardEntity>) this.HibernateTemp.find(hql, IDdistrict);
		
		return districts;
		
	}
	
	@Transactional
	public userEntity findUserByUsername (String username) {
		
		List<userEntity> users =(List<userEntity>) this.HibernateTemp.find("from userEntity u where u.username = ?0", username);
		if(users.isEmpty()) {
			return null;
		}
		return users.get(0);
	}
	
	@Transactional
	public userEntity findUserByEmail(String email) {
		
		return this.userDao.FindUserByEmail(email);
	}
	
	
//	insert new account 
	@Transactional(readOnly = false)
	public userEntity insertNewUser (userEntity newuser) {
		
		return this.userDao.insertNewUser(newuser);
	}
	

}
