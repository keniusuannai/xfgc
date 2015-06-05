package com.manggo.bean;

import java.util.Date;

public class Goods {

	private int goodsid;
	private String type;
	private String name;
	private String img;
	private String description;
	private float prices;
	private float old_prices;
	private int number;
	private Date time;
	private Date countdown;

	public Goods() {
		super();
	}

	public Goods(int goodsid, String type, String name, String img,
			String description, float prices, float old_prices, int number,
			Date time, Date countdown) {
		super();
		this.goodsid = goodsid;
		this.type = type;
		this.name = name;
		this.img = img;
		this.description = description;
		this.prices = prices;
		this.old_prices = old_prices;
		this.number = number;
		this.time = time;
		this.countdown = countdown;
	}

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrices() {
		return prices;
	}

	public void setPrices(float prices) {
		this.prices = prices;
	}

	public float getOld_prices() {
		return old_prices;
	}

	public void setOld_prices(float old_prices) {
		this.old_prices = old_prices;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Date getCountdown() {
		return countdown;
	}

	public void setCountdown(Date countdown) {
		this.countdown = countdown;
	}

	@Override
	public String toString() {
		return "Goods [goodsid=" + goodsid + ", type=" + type + ", name="
				+ name + ", img=" + img + ", description=" + description
				+ ", prices=" + prices + ", old_prices=" + old_prices
				+ ", number=" + number + ", time=" + time + ", countdown="
				+ countdown + "]";
	}

}
