package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.UserMapping;
import com.niit.pojo.User;

@Service
public class UserService {
	
	@Autowired
	private UserMapping userMapping;
	
	public void insertServiceUser(User newUser) {
		userMapping.insertUser(newUser);
	}
	
	public User selectServiceUser(String userid) {
		return userMapping.selectUser(userid);
	}
	
	public void updateServiceUserPassword(String newpassword,String userid) {
		userMapping.updateUserPassword(newpassword, userid);
	}
	
	public void updateServiceUserInfo(String newname, String newgender, String newshsize, String newaddress, String userid) {
		userMapping.updateUserInfo(newname, newgender, newshsize, newaddress, userid);
	}
	
	public List<User> findServiceUser(String userfind){
		return userMapping.findUser(userfind);
	}
}
