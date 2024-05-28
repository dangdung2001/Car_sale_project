package user.DTO;

public class changePassRequest {

	private String newpass;
 
	public changePassRequest() {
		// TODO Auto-generated constructor stub
	}
	
	public changePassRequest(String newpass) {
		super();
		this.newpass = newpass;
	}

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	
	
}
