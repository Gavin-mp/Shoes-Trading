package com.niit.pojo;

public class Order {
	private int orderid;
	private String orderuid;
	private String orderuname;
	private String orderutel;
	private String orderuaddress;
	private String ordersname;
	private String ordersnum;
	private String orderssize;
	private String ordersimg;
	private String ordersprice;
	
	public Order() {
		
	}
	
	public Order(int orderid, String orderuid, String orderuname, String orderutel, String orderuaddress,
			String ordersname, String ordersnum, String orderssize, String ordersimg, String ordersprice) {
		this.orderid = orderid;
		this.orderuid = orderuid;
		this.orderuname = orderuname;
		this.orderutel = orderutel;
		this.orderuaddress = orderuaddress;
		this.ordersname = ordersname;
		this.ordersnum = ordersnum;
		this.orderssize = orderssize;
		this.ordersimg = ordersimg;
		this.ordersprice = ordersprice;
	}


	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getOrderuid() {
		return orderuid;
	}

	public void setOrderuid(String orderuid) {
		this.orderuid = orderuid;
	}

	public String getOrderuname() {
		return orderuname;
	}

	public void setOrderuname(String orderuname) {
		this.orderuname = orderuname;
	}

	public String getOrderutel() {
		return orderutel;
	}

	public void setOrderutel(String orderutel) {
		this.orderutel = orderutel;
	}

	public String getOrderuaddress() {
		return orderuaddress;
	}

	public void setOrderuaddress(String orderuaddress) {
		this.orderuaddress = orderuaddress;
	}

	public String getOrdersname() {
		return ordersname;
	}

	public void setOrdersname(String ordersname) {
		this.ordersname = ordersname;
	}

	public String getOrdersnum() {
		return ordersnum;
	}

	public void setOrdersnum(String ordersnum) {
		this.ordersnum = ordersnum;
	}

	public String getOrderssize() {
		return orderssize;
	}

	public void setOrderssize(String orderssize) {
		this.orderssize = orderssize;
	}

	public String getOrdersimg() {
		return ordersimg;
	}

	public void setOrdersimg(String ordersimg) {
		this.ordersimg = ordersimg;
	}

	public String getOrdersprice() {
		return ordersprice;
	}

	public void setOrdersprice(String ordersprice) {
		this.ordersprice = ordersprice;
	}
}
