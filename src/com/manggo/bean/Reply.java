package com.manggo.bean;

import java.util.Date;

public class Reply {

	private int replyid;
	private int goodsid;
	private int userid;
	private Date time;
	private String content;

	public Reply() {
		super();
	}

	public Reply(int goodsid, Date time, int userid, String content) {
		super();
		this.goodsid = goodsid;
		this.time = time;
		this.userid = userid;
		this.content = content;
	}

	public int getReplyid() {
		return replyid;
	}

	public void setReplyid(int replyid) {
		this.replyid = replyid;
	}

	public int getGoodsid() {
		return goodsid;
	}

	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Reply [replyid=" + replyid + ", goodsid=" + goodsid
				+ ", userid=" + userid + ", time=" + time + ", content="
				+ content + "]";
	}

}
