package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.mapping.OrderMapping;
import com.niit.pojo.Order;

@Service
public class OrderService {
	
	@Autowired
	private OrderMapping orderMapping;
	
	public void insertServiceOrder(Order newOrder) {
		orderMapping.insertOrder(newOrder);
	}
	
	public List<Order> selectServiceOrder(String orderuid) {
		return orderMapping.selectOrder(orderuid);
	}
	
	public List<Order> selectServiceAllOrder(){
		return orderMapping.selectAllOrder();
	}
	
	public List<Order> findServiceUserOrder(String orderfind,String orderuid){
		return orderMapping.findUserOrder(orderfind, orderuid);
	}
	
	public List<Order> findServiceOrder(String orderfind){
		return orderMapping.findOrder(orderfind);
	}
	
}