package com.manggo.bean;

import java.util.Date;

public class Order {

	private int orderid;
	private int goodsid;
	private int userid;
	private Date time;
	private String pay_way;
	private int status;
	private int solved;
	private String goodsname;
	private float prices;

	public Order() {
		super();
		this.solved = 0;
	}

	public Order(int orderid, int goodsid, int userid, Date time,
			String pay_way, int status, int solved, String goodsname,
			float prices) {
		super();
		this.orderid = orderid;
		this.goodsid = goodsid;
		this.userid = userid;
		this.time = time;
		this.pay_way = pay_way;
		this.status = status;
		this.solved = solved;
		this.goodsname = goodsname;
		this.prices = prices;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getPay_way() {
		return pay_way;
	}

	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getSolved() {
		return solved;
	}

	public void setSolved(int solved) {
		this.solved = solved;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public float getPrices() {
		return prices;
	}

	public void setPrices(float prices) {
		this.prices = prices;
	}

	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", goodsid=" + goodsid
				+ ", userid=" + userid + ", time=" + time + ", pay_way="
				+ pay_way + ", status=" + status + ", solved=" + solved
				+ ", goodsname=" + goodsname + ", prices=" + prices + "]";
	}

}
