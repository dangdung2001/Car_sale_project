package user.DTO;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonProperty;

public class districtsDTO {

	@NotNull
	@NotEmpty
	@JsonProperty("code")
	private String code;
	
	@NotNull
	@NotEmpty
	@JsonProperty("fullname")
	private String fullname;

	
	
	public districtsDTO(@NotNull @NotEmpty String code, @NotNull @NotEmpty String fullname) {
		super();
		this.code = code;
		this.fullname = fullname;
	}

	public String getCode() {
		return code;
	}

	public void setId(String code) {
		this.code = code;
	}

	public String getName() {
		return fullname;
	}

	public void setName(String fullname) {
		this.fullname = fullname;
	}
	
	
}
