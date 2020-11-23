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

import com.niit.pojo.Shoes;
import com.niit.pojo.User;
import com.niit.service.ShoesService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ShoesService shoesService;
	
	@RequestMapping("/toregister")
	public String toRegister(){	
		return "register";
	}
	
	@RequestMapping(value = "/userregister",method = RequestMethod.POST)
	public String registerUser(User newUser) {
		User user = null;
		user = userService.selectServiceUser(newUser.getUserid());
		if (user == null) {
			newUser.setUserstate("账号正常");
			userService.insertServiceUser(newUser);
			return "main";
		}else {
			Frame frame=new Frame();
			frame.setAlwaysOnTop(true);
			JOptionPane.showMessageDialog((Component)frame, "您输入的账号已存在!", "账号重复", JOptionPane.ERROR_MESSAGE);
			return "register";
		}
	}
	
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String loginUser(String userid,String userpassword,HttpSession session, HttpSession session2){
		User user = userService.selectServiceUser(userid);
		Frame frame=new Frame();
		frame.setAlwaysOnTop(true);
		if (user == null) {
			JOptionPane.showMessageDialog((Component)frame, "您输入的账号不存在!", "账号错误", JOptionPane.ERROR_MESSAGE);
			return "main";
		}else {
			if(user.getUserpassword().equals(userpassword) && user.getUserstate().equals("账号正常")) {
				session.setAttribute("user", user);
				List<Shoes> shoeslist = shoesService.selectServiceAllShoes();
				session2.setAttribute("shoeslist", shoeslist);
				return "home";
			}else if (user.getUserpassword().equals(userpassword) && user.getUserstate().equals("账号封禁")) {
				JOptionPane.showMessageDialog((Component)frame, "您的账号已被封禁!", "账号封禁", JOptionPane.ERROR_MESSAGE);
				return "main";
			}else {
				JOptionPane.showMessageDialog((Component)frame, "您的密码输入错误!", "密码错误", JOptionPane.ERROR_MESSAGE);
				return "main";
			}
		}
	}
	
	@RequestMapping("/usershowinfo")
	public String showUserInfo(String userid) {
		return "myinfo";
	}
	
	@RequestMapping(value = "/usermodifyinfo", method = RequestMethod.POST)
	public String modifyUserInfo(String userid,String username,String usergender,String usershsize,String useraddress,HttpSession session) {
		userService.updateServiceUserInfo(username, usergender, usershsize, useraddress, userid);
		User user = userService.selectServiceUser(userid);
		session.setAttribute("user", user);
		return "home";
	}
	
	@RequestMapping("/tochangepassword")
	public String toChangePassword(String userid) {
		return "changepassword";
	}
	
	@RequestMapping(value = "/userchangepassword", method = RequestMethod.POST)
	public String changeUserPassword(String userid, String userpassword, String newpassword,String repeatpassword) {
		User user = userService.selectServiceUser(userid);
		Frame frame=new Frame();
		frame.setAlwaysOnTop(true);
		if (user.getUserpassword().equals(userpassword)) {
			if (newpassword.equals(repeatpassword)) {
				userService.updateServiceUserPassword(newpassword, userid);
				return "main";
			}else {
				JOptionPane.showMessageDialog((Component)frame, "您输入的两次密码不一致!", "密码不一致", JOptionPane.ERROR_MESSAGE);
				return "changepassword";
			}
		}else {
			JOptionPane.showMessageDialog((Component)frame, "您的密码输入错误!", "密码错误", JOptionPane.ERROR_MESSAGE);
			return "changepassword";
		}
	}
	
	
	@RequestMapping("/userbuyshoes")
	public String buyUserShoes(int shoesid,String userid,HttpSession session2,HttpSession session) {
		User user = userService.selectServiceUser(userid);
		Shoes shoes = shoesService.selectServiceShoes(shoesid);
		session2.setAttribute("shoes", shoes);
		session.setAttribute("user", user);
		return "buyshoes";
	}
	
	@RequestMapping("/userfindshoes")
	public String findShoesUser(String fshoesname,Map<String, Object> map) {
		List<Shoes> shoeslist = shoesService.findServiceShoes(fshoesname);
		map.put("shoeslist", shoeslist);
		return "home";
	}
	
	@RequestMapping("/userlogout")
	public String userLogout() {
		return "main";
	}
	
	@RequestMapping("/usertohome")
	public String toUserHome(){
		return "home";
	}
}
