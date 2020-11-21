package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Admin;
import com.niit.pojo.User;

public interface AdminMapping {

	public void insertAdmin(Admin newAdmin);
	
	public Admin selectAdmin(String adminid);
	
	public List<User> selectAllUser();
	
	public User selectAuser(String userid);
	
	public void  updateAuserState(@Param("newstate")String newstate, @Param("userid")String userid);
	
}
