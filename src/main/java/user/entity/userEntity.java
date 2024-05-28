package user.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import user.validator.PasswordMatches;
import user.validator.ValidEmail;

@Entity
@Table(name = "users")
@PasswordMatches
public class userEntity implements UserDetails{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column
	private String avatar;
	
	@Column
	private String username;
	
	@Column(name = "passwords")
	private String password;
	
	@Transient
	private String confirmPassword;
	
	@Column
	private String firstname;
	
	@Column
	private String lastname;
	
	@Column
	private String address;
	
	@Transient
	private String city;
	
	@Transient
	private String district;
	
	@Transient
	private String ward;
	
	@Column
	private LocalDate birthday;
	
	@Transient
	private String birthdayString;
	
	@Transient
	private String day;
	@Transient
	private String month;
	@Transient
	private String year;
	
	@Column
	private String gender;
	
	@Column
	@ValidEmail
	private String email;
	
	@Column
	private LocalDateTime TimeCreateAccount;
	
	@OneToMany(mappedBy="users",fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<roleEntity> roles;
	
	@OneToMany(mappedBy = "userEntity",fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<addressEntity> addresses;

	
	

	public userEntity(int id, String avatar, String username, String password, String confirmPassword, String firstname,
			String lastname, String address, String city, String district, String ward, LocalDate birthday, String day,
			String month, String year, String gender, String email, LocalDateTime timeCreateAccount,
			List<roleEntity> roles , List<addressEntity> addresses) {
		
		this.avatar = avatar;
		this.username = username;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.firstname = firstname;
		this.lastname = lastname;
		this.address = address;
		this.city = city;
		this.district = district;
		this.ward = ward;
		this.birthday = birthday;
		this.day = day;
		this.month = month;
		this.year = year;
		this.gender = gender;
		this.email = email;
		this.TimeCreateAccount = timeCreateAccount;
		this.roles = roles;
		this.addresses = addresses;
	}

	public userEntity() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public LocalDate getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public LocalDateTime getTimeCreateAccount() {
		return TimeCreateAccount;
	}

	public void setTimeCreateAccount(LocalDateTime timeCreateAccount) {
		TimeCreateAccount = timeCreateAccount;
	}

	public String getGender() {
		
		return gender;
	}
	
	public String getBirthdayString() {
		
		int day = this.birthday.getDayOfMonth();
		int month = this.birthday.getMonthValue();
		int year = this.birthday.getYear();
		return day + "/" + month + "/" + year;
	}

	public void setBirthdayString(String birthdayString) {
		this.birthdayString = birthdayString;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<roleEntity> getRoles() {
		return roles;
	}

	public void setRoles(List<roleEntity> roles) {
		this.roles = roles;
	}

	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		for (roleEntity roleEntity : this.roles) {
			roles.add(new SimpleGrantedAuthority(roleEntity.getRole()));
		}
		return roles;
	}
	
	
	public List<addressEntity> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<addressEntity> addresses) {
		this.addresses = addresses;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	
	

}
