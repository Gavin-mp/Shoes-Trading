package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.AdminMapping;
import com.niit.pojo.Admin;
import com.niit.pojo.User;

@Service
public class AdminService {

	@Autowired
	private AdminMapping adminMapping;
	
	public void insertServiceAdmin(Admin newAdmin) {
		adminMapping.insertAdmin(newAdmin);
	}
	
	public Admin selectServiceAdmin(String adminid) {
		return adminMapping.selectAdmin(adminid);
	}
	
	public List<User> selectServiceAllUser() {
		return adminMapping.selectAllUser();
	}
	
	public User selectServiceAuser(String userid) {
		return adminMapping.selectAuser(userid);
	}
	
	public void updateServiceAuserState(String newstate, String userid) {
		adminMapping.updateAuserState(newstate, userid);
	}
}
