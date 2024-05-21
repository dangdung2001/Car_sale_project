package user.DTO;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class userDTO {

//	save path avatar user
	@NotNull
	@NotEmpty
	private String avatar;

	@NotNull
	@NotEmpty
	private String first_name;

	@NotNull
	@NotEmpty
	private String last_name;

	@NotNull
	@NotEmpty
	private String Mail;

	@NotNull
	@NotEmpty
	private String address;

	@NotNull
	@NotEmpty
	private String gender;

	public userDTO() {
		// TODO Auto-generated constructor stub
	}

	public userDTO(@NotNull @NotEmpty String avatar, @NotNull @NotEmpty String first_name,
			@NotNull @NotEmpty String last_name, @NotNull @NotEmpty String mail, @NotNull @NotEmpty String address,
			@NotNull @NotEmpty String gender) {
		super();
		this.avatar = avatar;
		this.first_name = first_name;
		this.last_name = last_name;
		Mail = mail;
		this.address = address;
		this.gender = gender;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getMail() {
		return Mail;
	}

	public void setMail(String mail) {
		Mail = mail;
	}

	@Override
	public String toString() {
		return "userDTO [avatar=" + avatar + ", first_name=" + first_name + ", last_name=" + last_name + ", Mail="
				+ Mail + ", address=" + address + ", gender=" + gender + "]";
	}

}
