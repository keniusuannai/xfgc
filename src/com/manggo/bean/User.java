package com.manggo.bean;

public class User {

	private int userid;
	private String username;
	private String userpwd;
	private String img;
	private int type;
	private String email;
	private String phone;
	private String address;

	public User() {
		super();
		this.email = "未知";
		this.address = "未知";
		this.phone = "未知";
	}

	public User(String username, String userpwd) {
		super();
		this.username = username;
		this.userpwd = userpwd;
		this.img = img;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public User(int userid, String username, String userpwd, String img,
			int type, String email, String phone, String address) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.img = img;
		this.type = type;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", userpwd=" + userpwd + ", img=" + img + ", type=" + type
				+ ", email=" + email + ", phone=" + phone + ", address="
				+ address + "]";
	}

}
