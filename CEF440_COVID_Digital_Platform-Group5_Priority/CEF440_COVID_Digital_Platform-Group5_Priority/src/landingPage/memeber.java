package landingPage;

public class memeber {
	
	private String uname,password,phone,location;
	
	public memeber() {
		super();
	}
	public memeber(String uname, String password, String phone, String location) {
		super();
		this.uname = uname;
		this.password = password;
		this.phone = phone;
		this.location = location;
	}
	public memeber(String uname2, String password2, String email, String phone2, String location2) {
		// TODO Auto-generated constructor stub
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		// TODO Auto-generated method stub
		return null;
	}



	
}
