package com.manggo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import com.manggo.Util.JdbcUtils;
import com.manggo.bean.Goods;
import com.manggo.bean.Order;

public class GoodsDAO {
	/**
	 * 添加商品
	 * 
	 * @param g
	 * @return
	 */
	public static boolean addGoods(Goods g) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = true;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into goods_info(type,name,img,description,prices,old_prices,number,time,countdown) values(?,?,?,?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, g.getType());
			ps.setString(2, g.getName());
			ps.setString(3, g.getImg());
			ps.setString(4, g.getDescription());
			ps.setFloat(5, g.getPrices());
			ps.setFloat(6, g.getOld_prices());
			ps.setInt(7, g.getNumber());
			ps.setTime(8, new java.sql.Time(g.getTime().getTime()));
			ps.setTime(9, (Time) g.getCountdown());
			// ps.setDate(5, new java.sql.Date(new java.util.Date().getDate()));
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			flag = false;
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return flag;
	}

	/**
	 * 返回商品详情
	 * 
	 * @param goodsid
	 * @return
	 */
	public static Goods findGoods(String goodsid) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods g = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from goods_info where goodsid = '" + goodsid
					+ "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				g = new Goods();
				g.setGoodsid(rs.getInt(1));
				g.setType(rs.getString(2));
				g.setName(rs.getString(3));
				g.setImg(rs.getString(4));
				g.setDescription(rs.getString(5));
				g.setPrices(rs.getFloat(6));
				g.setOld_prices(rs.getFloat(7));
				g.setNumber(rs.getInt(8));
				g.setTime(rs.getTimestamp(9));
				g.setCountdown(rs.getTimestamp(10));
			} else {
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return g;
	}

	/**
	 * 获得所有商品
	 * 
	 * @return
	 */
	public static List<Goods> getall(int n) {
		System.out.println("getall");
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Goods> list = new ArrayList<Goods>();
		Goods g = null;
		try {
			conn = JdbcUtils.getConnection();
			// String sql = "select top 10 * from goods_info" +
			// "where goodsid>(select max(goodsid) from(select top "+page*10+" goodsid from goods_info order by goodsid))"
			// +
			// "order by goodsid";
			String sql = " select * from goods_info limit " + n * 10 + ",10";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				g = new Goods();
				g.setGoodsid(rs.getInt(1));
				g.setType(rs.getString(2));
				g.setName(rs.getString(3));
				g.setImg(rs.getString(4));
				g.setDescription(rs.getString(5));
				g.setPrices(rs.getFloat(6));
				g.setOld_prices(rs.getFloat(7));
				g.setNumber(rs.getInt(8));
				g.setTime(rs.getTimestamp(9));
				g.setCountdown(rs.getTimestamp(10));

				list.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return list;
	}

	/**
	 * 根据用户id返回所有订单
	 * 
	 * @param id
	 * @return
	 */
	public static List<Order> getGoodsByUserid(int id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Order> list = new ArrayList<Order>();
		Order o = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select a.orderid,a.userid,a.time,a.pay_way,a.status,a.solved,b.name,b.prices from order_info as a,goods_info as b where a.userid='"
					+ id + "' and a.goodsid=b.goodsid";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				o = new Order();
				o.setOrderid(rs.getInt(1));
				o.setUserid(rs.getInt(2));
				o.setTime(rs.getTimestamp(3));
				o.setPay_way(rs.getString(4));
				o.setStatus(rs.getInt(5));
				o.setSolved(rs.getInt(6));
				o.setGoodsname(rs.getString(7));
				o.setPrices(rs.getFloat(8));
				list.add(o);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return list;
	}
}
