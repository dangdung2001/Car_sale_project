package user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import user.entity.roleEntity;
import user.entity.userEntity;


@Controller
public class homepage {
	
	@Autowired
	private HibernateTemplate HibernateTemplate; 
	
	
	@RequestMapping("/home")
	public String displayHomepage () {
		
		return "home";
	}
	
	@RequestMapping("/profile")
	public String profile () {
		
		return "profile";
	}
	
}
