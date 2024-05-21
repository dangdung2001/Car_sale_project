package user.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "districts")
public class districtEntity {

	
	@Id
	private String code;
	
	private String name;
	
	private String name_en;
	
	private String full_name;
	
	private String full_name_en;
	
	private String code_name;
	
	private String province_code;
	
	private int administrative_unit_id;
	
	
	public districtEntity() {
		// TODO Auto-generated constructor stub
	}


	public districtEntity(String code, String name, String name_en, String full_name, String full_name_en,
			String code_name, String province_code, int administrative_unit_id) {
		super();
		this.code = code;
		this.name = name;
		this.name_en = name_en;
		this.full_name = full_name;
		this.full_name_en = full_name_en;
		this.code_name = code_name;
		this.province_code = province_code;
		this.administrative_unit_id = administrative_unit_id;
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


	public String getProvince_code() {
		return province_code;
	}


	public void setProvince_code(String province_code) {
		this.province_code = province_code;
	}


	public int getAdministrative_unit_id() {
		return administrative_unit_id;
	}


	public void setAdministrative_unit_id(int administrative_unit_id) {
		this.administrative_unit_id = administrative_unit_id;
	}


	@Override
	public String toString() {
		return "districtEntity [code=" + code + ", name=" + name + ", name_en=" + name_en + ", full_name=" + full_name
				+ ", full_name_en=" + full_name_en + ", code_name=" + code_name + ", province_code=" + province_code
				+ ", administrative_unit_id=" + administrative_unit_id + "]";
	}
	
	
	
}
