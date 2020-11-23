package com.niit.controller;

import java.awt.Component;
import java.awt.Frame;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.pojo.Admin;
import com.niit.pojo.User;
import com.niit.service.AdminService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/admintologin")
	public String toLoginAdmin() {
		return "adminlogin";
	}
	
	@RequestMapping("/admintoregister")
	public String toRegisterAdmin() {
		return "adminregister";
	}
	
	@RequestMapping(value="/adminregister", method = RequestMethod.POST)
	public String registerAdmin(Admin newAdmin) {
		adminService.insertServiceAdmin(newAdmin);
		return "adminlogin";
	}
	
	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String loginAdmin(String adminid, String adminpassword,HttpSession session,HttpSession session2) {
		Admin admin = adminService.selectServiceAdmin(adminid);
		Frame frame = new Frame();
		frame.setAlwaysOnTop(true);
		if (admin == null) {
			JOptionPane.showMessageDialog((Component)frame, "您输入的账号不存在!", "账号错误", JOptionPane.ERROR_MESSAGE);
			return "adminlogin";
		}else if (admin.getAdminpassword().equals(adminpassword)) {
			session.setAttribute("admin", admin);
			List<User> userlist = adminService.selectServiceAllUser();
			session2.setAttribute("userlist", userlist);
			return "adminviewuser";
		}else {
			JOptionPane.showMessageDialog((Component)frame, "您的密码输入错误!", "密码错误", JOptionPane.ERROR_MESSAGE);
			return "adminlogin";
		}
	}
	
	@RequestMapping("/adminunsealuser")
	public String unsealUser(String userid,HttpSession session) {
		User user = adminService.selectServiceAuser(userid);
		String newstate;
		if (user.getUserstate().equals("账号封禁")) {
			newstate = "账号正常";
			adminService.updateServiceAuserState(newstate,userid);
			List<User> userlist= adminService.selectServiceAllUser();
			session.setAttribute("userlist", userlist);
			return "adminviewuser";
		}else {
			newstate = "账号封禁";
			adminService.updateServiceAuserState(newstate,userid);
			List<User> userlist= adminService.selectServiceAllUser();
			session.setAttribute("userlist", userlist);
			return "adminviewuser";
		}
	}
	
	@RequestMapping("/adminfinduser")
	public String findUserAdmin(String userfind,Map<String, Object> map) {
		List<User> userlist = userService.findServiceUser(userfind);
		map.put("userlist",userlist);
		return "adminviewuser";
	}
	
	@RequestMapping("/adminlogout")
	public String adminLogout() {
		return "adminlogin";
	}
	
	@RequestMapping("/admintoasp")
	public String toAdminAsp() {
		return "adminviewuser";
	}
}
