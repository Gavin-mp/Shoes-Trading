package com.niit.mapping;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.niit.pojo.Order;

public interface OrderMapping {
	
	public void insertOrder(Order newOrder);
	
	public List<Order> selectOrder(String orderuid);
	
	public List<Order> selectAllOrder();
	
	public List<Order> findUserOrder(@Param("orderfind")String orderfind,@Param("orderuid")String orderuid);
	
	public List<Order> findOrder(String orderfind);
	
}
