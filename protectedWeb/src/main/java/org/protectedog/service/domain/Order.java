package org.protectedog.service.domain;

import java.util.Date;

public class Order {
	//Field
	private int orderNo;
	private Product prodNo;
	private User id;
	private User phone;
	private Coupon couponNo;
	private String receiverAddr;
	private String receiverName;
	private String receiverPhone;
	private String orderRequest;
	private int paymentCode;
	private Date orderDate;
	private int orderQuantity;
	private int totalPrice;
	private int order_code;
	private int delivery_code;
	
	//Constructor
	public Order() {
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Product getProdNo() {
		return prodNo;
	}

	public void setProdNo(Product prodNo) {
		this.prodNo = prodNo;
	}

	public User getId() {
		return id;
	}

	public void setId(User id) {
		this.id = id;
	}

	public User getPhone() {
		return phone;
	}

	public void setPhone(User phone) {
		this.phone = phone;
	}

	public Coupon getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(Coupon couponNo) {
		this.couponNo = couponNo;
	}

	public String getReceiverAddr() {
		return receiverAddr;
	}

	public void setReceiverAddr(String receiverAddr) {
		this.receiverAddr = receiverAddr;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getReceiverPhone() {
		return receiverPhone;
	}

	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	public String getOrderRequest() {
		return orderRequest;
	}

	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}

	public int getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(int paymentCode) {
		this.paymentCode = paymentCode;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getOrder_code() {
		return order_code;
	}

	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}

	public int getDelivery_code() {
		return delivery_code;
	}

	public void setDelivery_code(int delivery_code) {
		this.delivery_code = delivery_code;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", prodNo=" + prodNo + ", id=" + id + ", phone=" + phone + ", couponNo="
				+ couponNo + ", receiverAddr=" + receiverAddr + ", receiverName=" + receiverName + ", receiverPhone="
				+ receiverPhone + ", orderRequest=" + orderRequest + ", paymentCode=" + paymentCode + ", orderDate="
				+ orderDate + ", orderQuantity=" + orderQuantity + ", totalPrice=" + totalPrice + ", order_code="
				+ order_code + ", delivery_code=" + delivery_code + "]";
	}
	
	
	
	
	

}