package com.niit.controller;

import java.awt.Component;
import java.awt.Frame;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.pojo.Shoes;
import com.niit.service.ShoesService;

@Controller
@RequestMapping("/shoes")
public class ShoesController {
	
	@Autowired
	private ShoesService shoesService;
	
	@RequestMapping("/shoestoadd")
	public String toAddShoes() {
		return "adminaddshoes";
	}
	
	@RequestMapping(value = "/shoesadd",method = RequestMethod.POST)
	public String addShoes(@RequestParam("file") MultipartFile file, HttpServletRequest req,Shoes newshoes)
			throws IllegalStateException, IOException  {
		Frame frame = new Frame();
		frame.setAlwaysOnTop(true);
		// 判断文件是否为空，空则返回失败页面
		if (file.isEmpty()) {
			JOptionPane.showMessageDialog((Component)frame, "您上传的图片为空请重新上传!", "文件为空", JOptionPane.ERROR_MESSAGE);
			return "adminaddshoes";
		}
		// 获取文件存储路径（绝对路径）
		String path = req.getServletContext().getRealPath("/shoesimg");
		// 获取原文件名
		String fileName = file.getOriginalFilename();
		String suffix = fileName.substring(fileName.lastIndexOf("."));
		
		Date date = new Date();
		String newfilename = date.getTime()+suffix;
		
		String sqlpath = "shoesimg/"+newfilename;
		// 创建文件实例
		File filePath = new File(path, newfilename);
		// 写入文件
		file.transferTo(filePath);
		
		newshoes.setShoesimg(sqlpath);
		shoesService.insertServiceShoes(newshoes);
		
		return "adminviewuser";
	}
	
	@RequestMapping("/shoesviewall")
	public String viewAllShoes(Map<String, Object> map){
		List<Shoes> shoeslist = shoesService.selectServiceAllShoes();
		map.put("shoeslist", shoeslist);
		return "adminviewshoes";
	}
	
	@RequestMapping("/shoesdeleteone")
	public String deleteOneShoes(@RequestParam("shoesid")int shoesid, HttpServletRequest req,Map<String, Object> map) {
		Shoes shoes = shoesService.selectServiceShoes(shoesid);
		shoesService.deleteServiceShoes(shoesid);
		String path = req.getServletContext().getRealPath("/shoesimg");
		String img = shoes.getShoesimg();
		img = img.substring("shoesimg/".length());
		File file = new File(path+"\\"+img);
		file.delete();
		return viewAllShoes(map);
	}
	
	@RequestMapping("/shoestochange")
	public String toChangeShoes(int shoesid,Map<String, Object> map) {
		Shoes shoes = shoesService.selectServiceShoes(shoesid);
		map.put("shoes", shoes);
		return "adminchangeshoes";
	}
	
	@RequestMapping("/shoeschange")
	public String changeShoes(String s40,String s41,String s42,String s43,String s44,String s45,String s46,String shoesprice,String shoesimg,Map<String, Object> map) {
		shoesService.updteServiceShoes(s40, s41, s42, s43, s44, s45, s46, shoesprice, shoesimg);
		return viewAllShoes(map);
	}
	
	@RequestMapping("/shoesfind")
	public String findShoes(String fshoesname,Map<String, Object> map) {
		List<Shoes> shoeslist = shoesService.findServiceShoes(fshoesname);
		map.put("shoeslist", shoeslist);
		return "adminviewshoes";
	}
	
	@RequestMapping("/shoesclassview")
	public String viewClassShoes(String shoesclass,Map<String, Object> map) {
		List<String> shclasslist = shoesService.selectServiceShoesClass();
		map.put("shclasslist", shclasslist);
		return "adminshoesclass";
	}
}
