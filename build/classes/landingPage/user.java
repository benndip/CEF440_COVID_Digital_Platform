package com.xadmin.usermanagement.bean;

public class User {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String dob;
	private String password;
	private String family;
	private String region;
	private String division;
	private String subdivision;
	private String town;
	private String quarter;
	
	public User(int id, String name, String email, String phone, String dob, String password, String family, String region, String division, String subdivision, String town, String quarter) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.password = password;
		this.family = family;
		this.region = region;
		this.division = division;
		this.subdivision = subdivision;
		this.town = town;
		this.quarter = quarter;
	}
	
	public User(String name, String email, String phone, String dob, String password, String family, String region, String division, String subdivision, String town, String quarter) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.password = password;
		this.family = family;
		this.region = region;
		this.division = division;
		this.subdivision = subdivision;
		this.town = town;
		this.quarter = quarter;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getSubdivision() {
		return subdivision;
	}

	public void setSubdivision(String subdivision) {
		this.subdivision = subdivision;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getQuarter() {
		return quarter;
	}

	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}

	
	
}
