package com.manggo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.manggo.Util.JdbcUtils;
import com.manggo.bean.Reply;

public class ReplyDAO {
	/**
	 * 添加评论
	 * @param r
	 * @return
	 */
	public static boolean addReply(Reply r) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = true;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into reply_info(goodsid,userid,time,content) values(?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, r.getGoodsid());
			ps.setInt(2, r.getUserid());
			ps.setTime(3, new java.sql.Time(r.getTime().getTime()));
			ps.setString(4, r.getContent());
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
	 * 根据商品id获取评论列表
	 * @param goodsid
	 * @return
	 */
	public static List<Reply> findReply(String goodsid) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Reply r = null;
		List<Reply> list = new ArrayList<Reply>();
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from reply_info where goodsid = '" + goodsid
					+ "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				r = new Reply();
				r.setGoodsid(rs.getInt(2));
				r.setUserid(rs.getInt(3));
				r.setTime(rs.getTimestamp(4));
				r.setContent(rs.getString(5));
				list.add(r);
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
