package user.DTO;

public class AuthenticationResponse {
	
	private String jwt;

	public AuthenticationResponse(String jwt) {
		super();
		this.jwt = jwt;
	}

	public AuthenticationResponse() {
		// TODO Auto-generated constructor stub
	}
	
	public String getJwt() {
		return jwt;
	}

	public void setJwt(String jwt) {
		this.jwt = jwt;
	}
	
	
	
}
