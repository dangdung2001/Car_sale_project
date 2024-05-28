package user.DTO;

import java.time.LocalDate;

import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class userDTO {

//	save path avatar user
	@NotNull
	@NotEmpty
	private String avatar;

	@NotNull
	@NotEmpty
	private String username;
	
	@NotNull
	@NotEmpty
	private String firstname;

	@NotNull
	@NotEmpty
	private String lastname;

	@NotNull
	@NotEmpty
	private String email;

	@NotNull
	@NotEmpty
	private String birthdayString;
	
	
	@NotNull
	@NotEmpty
	private String gender;

	public userDTO() {
		// TODO Auto-generated constructor stub
	}

	public userDTO(@NotNull @NotEmpty String avatar, @NotNull @NotEmpty String username,  @NotNull @NotEmpty String first_name,
			@NotNull @NotEmpty String last_name, @NotNull @NotEmpty String mail, @NotNull @NotEmpty String birthday,
			@NotNull @NotEmpty String gender) {
		super();
		this.avatar = avatar;
		this.username = username;
		this.firstname = first_name;
		this.lastname = last_name;
		this.email = mail;
		this.gender = gender;
		this.birthdayString = birthday;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthdayString() {
		return birthdayString;
	}

	public void setBirthdayString(String birthdayString) {
		this.birthdayString = birthdayString;
	}

	
	
}
