package com.niit.pojo;

public class User {
	private String userid;
	private String useremail;
	private String userpassword;
	private String username;
	private String usergender;
	private String usertel;
	private String usershsize;
	private String userstate;
	private String useraddress;
	
	
	public User() {
	}

	public User(String userid, String useremail, String userpassword, String username, String usergender,
			String usertel, String usershsize, String userstate, String useraddress) {
		this.userid = userid;
		this.useremail = useremail;
		this.userpassword = userpassword;
		this.username = username;
		this.usergender = usergender;
		this.usertel = usertel;
		this.usershsize = usershsize;
		this.userstate = userstate;
		this.useraddress = useraddress;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsergender() {
		return usergender;
	}
	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getUsershsize() {
		return usershsize;
	}
	public void setUsershsize(String usershsize) {
		this.usershsize = usershsize;
	}
	public String getUserstate() {
		return userstate;
	}
	public void setUserstate(String userstate) {
		this.userstate = userstate;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
}
