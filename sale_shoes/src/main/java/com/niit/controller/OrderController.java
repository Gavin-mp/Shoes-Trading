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

import com.niit.pojo.Order;
import com.niit.pojo.Shoes;
import com.niit.pojo.User;
import com.niit.service.OrderService;
import com.niit.service.ShoesService;
import com.niit.service.UserService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ShoesService shoesService;
	
	@RequestMapping("/orderadd")
	public String addOuterOrder(Order newOrder,Map<String, Object> map,HttpSession session) {
		Shoes shoes = shoesService.selectServiceImgShoes(newOrder.getOrdersimg());
		String buynum = newOrder.getOrdersnum();
		String size = newOrder.getOrderssize();
		String num;
		int num2;
		int buynum2;
		Frame frame=new Frame();
		frame.setAlwaysOnTop(true);
		if (size.equals("40")) {
			num = shoes.getS40();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋40尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(num, shoes.getS41(), shoes.getS42(), shoes.getS43(), shoes.getS44(), shoes.getS45(), shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else if (size.equals("41")) {
			num = shoes.getS41();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋41尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), num, shoes.getS42(), shoes.getS43(), shoes.getS44(), shoes.getS45(), shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else if (size.equals("42")) {
			num = shoes.getS42();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋42尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), shoes.getS41(), num, shoes.getS43(), shoes.getS44(), shoes.getS45(), shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else if (size.equals("43")) {
			num = shoes.getS43();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋43尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), shoes.getS41(), shoes.getS42(), num, shoes.getS44(), shoes.getS45(), shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else if (size.equals("44")) {
			num = shoes.getS44();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋44尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), shoes.getS41(), shoes.getS42(), shoes.getS43(), num, shoes.getS45(), shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else if (size.equals("45")) {
			num = shoes.getS45();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋45尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), shoes.getS41(), shoes.getS42(), shoes.getS43(), shoes.getS44(), num, shoes.getS46(), shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}else {
			num = shoes.getS46();
			num2=Integer.parseInt(num);
			buynum2=Integer.parseInt(buynum);
			if (num2==0 ||num2-buynum2<0) {
				JOptionPane.showMessageDialog((Component)frame, "该鞋46尺码库存不足!", "库存不足", JOptionPane.ERROR_MESSAGE);
				return "buyshoes";
			}else {
				num2 = num2-buynum2;
				num =num2+"";
				shoesService.updteServiceShoes(shoes.getS40(), shoes.getS41(), shoes.getS42(), shoes.getS43(), shoes.getS44(), shoes.getS45(), num, shoes.getShoesprice(), shoes.getShoesimg());
				return addInnerOrder(newOrder, map, session);
			}
		}
	}
	
	@RequestMapping("/viewallorder")
	public String viewAllOrder(Map<String, Object> map) {
		List<Order> orderlist = orderService.selectServiceAllOrder();
		map.put("orderlist", orderlist);
		return "adminvieworder";
	}
	
	@RequestMapping("/vieworder")
	public String viewOrder(String orderuid,Map<String, Object> map) {
		List<Order> orderlist = orderService.selectServiceOrder(orderuid);
		map.put("orderlist", orderlist);
		return "vieworder";
	}
	
	@RequestMapping("/finduserorder")
	public String findUserOrder(String orderuid,String orderfind,Map<String, Object> map) {
		List<Order> orderlist = orderService.findServiceUserOrder(orderfind, orderuid);
		map.put("orderlist", orderlist);
		return "vieworder";
	}
	
	@RequestMapping("/findorder")
	public String findUOrder(String orderfind,Map<String, Object> map) {
		List<Order> orderlist = orderService.findServiceOrder(orderfind);
		map.put("orderlist", orderlist);
		return "adminvieworder";
	}
	
	public String addInnerOrder(Order newOrder,Map<String, Object> map,HttpSession session) {
		User user = userService.selectServiceUser(newOrder.getOrderuid());
		Shoes shoes = shoesService.selectServiceImgShoes(newOrder.getOrdersimg());
		int i = Integer.parseInt(newOrder.getOrdersnum());
		int j = Integer.parseInt(shoes.getShoesprice());
		i = i*j;
		String ordersprice = i+"";
		newOrder.setOrderuname(user.getUsername());
		newOrder.setOrderutel(user.getUsertel());
		newOrder.setOrderuaddress(user.getUseraddress());
		newOrder.setOrdersname(shoes.getShoesname());
		newOrder.setOrdersprice(ordersprice);
		String orderuid = newOrder.getOrderuid();
		orderService.insertServiceOrder(newOrder);
		List<Order> orderlist = orderService.selectServiceOrder(orderuid);
		map.put("orderlist", orderlist);
		session.setAttribute("user", user);
		return "vieworder";
	}
}
