package user.DTO;


public class addressDTO {
	
	private String name;
	
	private String address;
	
	private String phone;
	
	private String setup_default;

	public addressDTO(String name, String address, String phone, String setup_default) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.setup_default = setup_default;
	}

	public addressDTO() {
		// TODO Auto-generated constructor stub
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
	
	
	
	
}
