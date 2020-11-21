package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.User;

public interface UserMapping {
	
	public void insertUser(User newUser);
	
	public User selectUser(String userid);
	
	public void updateUserPassword(@Param("newpassword")String newpassword,@Param("userid")String userid);
	
	public void updateUserInfo(@Param("newname")String newname,@Param("newgender")String newgender,@Param("newshsize")String newshsize,@Param("newaddress")String newaddress,@Param("userid")String userid);
	
	public List<User> findUser(String userfind);
}
