package com.manggo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.manggo.Util.JdbcUtils;
import com.manggo.bean.Goods;
import com.manggo.bean.Order;

public class OrderDAO {

	public static boolean addOrder(Order o) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = true;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into order_info(goodsid,userid,time,pay_way,status,solved) values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, o.getGoodsid());
			ps.setInt(2, o.getUserid());
			ps.setTime(3, new java.sql.Time(o.getTime().getTime()));
			ps.setString(4, o.getPay_way());
			ps.setInt(5, o.getStatus());
			ps.setInt(6, o.getSolved());
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

	public static Order findOrder(String orderid) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Order o = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from order_info where orderid = '" + orderid
					+ "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				o = new Order();
				o.setGoodsid(rs.getInt(2));
				o.setUserid(rs.getInt(3));
				o.setTime(rs.getTimestamp(4));
				o.setPay_way(rs.getString(5));
				o.setStatus(rs.getInt(6));
				o.setSolved(rs.getInt(7));
			} else {
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return o;
	}

	/**
	 * 获得所有订单
	 * 
	 * @return
	 */
	public static List<Order> findOrderAll() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Order o = null;
		List<Order> list = new ArrayList<Order>();
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from order_info order by time desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				o = new Order();
				o.setGoodsid(rs.getInt(2));
				o.setUserid(rs.getInt(3));
				o.setTime(rs.getTimestamp(4));
				o.setPay_way(rs.getString(5));
				o.setStatus(rs.getInt(6));
				o.setSolved(rs.getInt(7));
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
	/**
	 * 获得已处理或未处理的订单
	 * @param isSolved
	 * @return
	 */
	public static List<Order> findOrderSolved(int isSolved) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Order o = null;
		List<Order> list = new ArrayList<Order>();
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from order_info where solved='"+isSolved+"' order by time desc";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				o = new Order();
				o.setGoodsid(rs.getInt(2));
				o.setUserid(rs.getInt(3));
				o.setTime(rs.getTimestamp(4));
				o.setPay_way(rs.getString(5));
				o.setStatus(rs.getInt(6));
				o.setSolved(rs.getInt(7));
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
