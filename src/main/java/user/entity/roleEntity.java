package user.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="roles")
public class roleEntity {

	@Id
	private int id;
	
	private String role;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private userEntity users;

	
	
	public roleEntity(int id, String role) {
		super();
		this.id = id;
		this.role = role;
	}
	
	public roleEntity() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
	@Override
	public String toString() {
		return "roleEntity [id=" + id + ", role=" + role;
	}
	 
	
	
}
