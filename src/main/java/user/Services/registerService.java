package user.Services;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.*;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import user.DAO.registerDAO;
import user.DTO.districtsDTO;
import user.DTO.userDTO;
import user.DTO.wardDTO;
import user.entity.districtEntity;
import user.entity.roleEntity;
import user.entity.userEntity;
import user.entity.wardEntity;

@Service
public class registerService {

	@Autowired
	private registerDAO registerDAO;

	public int createCode() {
		Random coderandom = new Random();
		return coderandom.nextInt(10000000, 1000000000);
	}

	public static boolean sendVerificationCode(String recipientEmail, int code) {

		final String username = "phamdangdung5621@gmail.com";
		final String password = "zguq vzbf tajx qypr";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
			message.setSubject("Verification Code");
			message.setText("Your verification code is: " + code);

			Transport.send(message);

			System.out.println("Email sent successfully.");

		} catch (MessagingException e) {

			System.out.println("error sent conde to mail : " + e);
			return false;
		}

		return true;
	}

	/**
	 * city is available in box address of page 'create account' value is code of
	 * city in database , when user choice city then code sent to this method fetch
	 * all district by code city when user select city in box address of page create
	 * account this method use for api 'addressAPI'
	 */
	public List<districtsDTO> getDistrictsBy_IDcity(String codeCity) {

		List<districtEntity> districts = this.registerDAO.getDistrictsBy_IDcity(codeCity);

		List<districtsDTO> districtsDTO = new ArrayList<districtsDTO>();

		for (districtEntity district : districts) {

			String code = district.getCode();

			String fullname = district.getFull_name().trim();

			districtsDTO districtDTO = new districtsDTO(code, fullname);

			districtsDTO.add(districtDTO);
		}

		return districtsDTO;
	}

	/**
	 * fetch all ward by id dictrict when user select dictrict in box address of
	 * page create account this method use for api 'addressAPI'
	 */
	public List<wardDTO> getWardBy_IDdictrict(String IDdictrict) {

		List<wardEntity> wards = this.registerDAO.getWardsBy_IDdistrict(IDdictrict);

		List<wardDTO> wardsDTO = new ArrayList<wardDTO>();

		for (wardEntity ward : wards) {

			String code = ward.getCode();

			String fullname = ward.getFull_name().trim();

			wardDTO wardDTO = new wardDTO(code, fullname);

			wardsDTO.add(wardDTO);
		}

		return wardsDTO;
	}

	
	
	@Transactional(readOnly = false)
	public UserDetails createAccount(userEntity newuser) {

		UserDetails user = null;
		if (newuser != null) {

			if (newuser.getPassword().equals(newuser.getConfirmPassword())) {
				String passwordEncoded = PasswordEncoder().encode(newuser.getPassword());
				newuser.setPassword(passwordEncoded);
			} else
				return user;

//			set address
			String address = newuser.getWard() + "," + newuser.getDistrict() + "," + newuser.getCity();
			newuser.setAddress(address);

//			set birthday
			Month month = Month.valueOf(newuser.getMonth().toUpperCase());
			LocalDate birthday = LocalDate.of(Integer.valueOf(newuser.getYear()), month,
					Integer.valueOf(newuser.getDay()));
			newuser.setBirthday(birthday);

//			set time create
			newuser.setTimeCreateAccount(LocalDateTime.now());

//			add roles
			roleEntity roleuser = new roleEntity(1, "USER");
			List<roleEntity> roles = new ArrayList<roleEntity>();
			roles.add(roleuser);
			newuser.setRoles(roles);

			newuser.setAvatar("default");

//			insert user to sql
			user = this.registerDAO.insertNewUser(newuser);

		}
		return user;
	}

	
	
	@Transactional
	public userEntity getUserByUsername(String username) {

		return this.registerDAO.findUserByUsername(username);

	}

	@Transactional
	public userEntity getUserByEmail(String email) {

		return this.registerDAO.findUserByEmail(email);
	}

	private BCryptPasswordEncoder PasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	public String uploadfileProcessing(byte[] byteImg, String nameImg, HttpServletRequest request, String username) {

		if (byteImg != null) {
			try {
				String filename = username + "avatar" + nameImg.substring(nameImg.lastIndexOf("."));
				System.out.println(filename);
				String ServerPathSaveFile = request.getSession(true).getServletContext().getRealPath("/")
						+ "WEB-INF/filesUser/avatar/" + filename;
				File fileUser = new File(ServerPathSaveFile);

				BufferedOutputStream Stream = new BufferedOutputStream(new FileOutputStream(fileUser));
				Stream.write(byteImg);
				Stream.flush();
				Stream.close();

				return filename;
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		return null;
	}
	
	
	public boolean checkcodeMail (int code, int codeinServer) {
		
		return code == codeinServer;
	}

}
