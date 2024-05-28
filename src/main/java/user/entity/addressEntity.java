package user.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="addresses")
public class addressEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;
	
	private String name;
	
	private String address;
	
	private String phone;
	
	private String setup_default;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private userEntity userEntity;
	
	public addressEntity() {
		// TODO Auto-generated constructor stub
	}

	public addressEntity(int iD, String name, String address, String phone, String setup_default
			) {
		super();
		ID = iD;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.setup_default = setup_default;
		
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSetup_default() {
		return setup_default;
	}

	public void setSetup_default(String setup_default) {
		this.setup_default = setup_default;
	}

	public userEntity getUserEntity() {
		return userEntity;
	}

	public void setUserEntity(userEntity userEntity) {
		this.userEntity = userEntity;
	}
	
	
	
	
}
