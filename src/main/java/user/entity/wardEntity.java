package user.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="wards")
public class wardEntity {

	@Id
	private String code;

	private String name;

	private String name_en;

	private String full_name;

	private String full_name_en;

	private String code_name;

	private String district_code;

	public wardEntity(String code, String name, String name_en, String full_name, String full_name_en, String code_name,
			String district_code) {
		super();
		this.code = code;
		this.name = name;
		this.name_en = name_en;
		this.full_name = full_name;
		this.full_name_en = full_name_en;
		this.code_name = code_name;
		this.district_code = district_code;
	}
	
	public wardEntity() {
		// TODO Auto-generated constructor stub
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName_en() {
		return name_en;
	}

	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getFull_name_en() {
		return full_name_en;
	}

	public void setFull_name_en(String full_name_en) {
		this.full_name_en = full_name_en;
	}

	public String getCode_name() {
		return code_name;
	}

	public void setCode_name(String code_name) {
		this.code_name = code_name;
	}

	public String getDistrict_code() {
		return district_code;
	}

	public void setDistrict_code(String district_code) {
		this.district_code = district_code;
	}

	@Override
	public String toString() {
		return "wardEntity [code=" + code + ", name=" + name + ", name_en=" + name_en + ", full_name=" + full_name
				+ ", full_name_en=" + full_name_en + ", code_name=" + code_name + ", district_code=" + district_code
				+ "]";
	}

}
