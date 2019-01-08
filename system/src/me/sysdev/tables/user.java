package me.sysdev.tables;

public class user {
	
	private int id;
	private String username,password,cpassword,email,status;
	public boolean valid;
	
	//id settings
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//username settings
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	//password settings
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//rpassword settings
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	//email settings
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	//status settings
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
