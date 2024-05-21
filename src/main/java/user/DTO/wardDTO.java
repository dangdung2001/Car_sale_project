package user.DTO;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class wardDTO {

	@NotNull
	@NotEmpty
	private String code;

	@NotNull
	@NotEmpty
	private String fullname;

	public wardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public wardDTO(@NotNull @NotEmpty String code, @NotNull @NotEmpty String fullname) {
		super();
		this.code = code;
		this.fullname = fullname;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	@Override
	public String toString() {

		return "wardDTO [code=" + code + ", fullname=" + fullname + "]";
	}

}
