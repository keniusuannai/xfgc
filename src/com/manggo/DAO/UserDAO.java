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
import com.manggo.bean.User;

public class UserDAO {

	/**
	 * 用户注册
	 * 
	 * @param u
	 * @return
	 */
	public static int addUser(User u) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		int id = 0;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into user_info(username,userpwd) values(?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getUserpwd());
			// ps.setDate(5, new java.sql.Date(new java.util.Date().getDate()));
			n = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		if (n > 0) {
			id = findUser(u.getUsername(), u.getUserpwd());
		}
		return id;
	}

	/**
	 * 返回用户详情
	 * 
	 * @param userid
	 * @return
	 */
	public static User getInfo(int userid) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User u = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select username,img,type,email,phone,address from user_info where userid = '"
					+ userid + "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				u = new User();
				u.setUserid(userid);
				u.setUsername(rs.getString(1));
				u.setImg(rs.getString(2));
				u.setType(rs.getInt(3));
				u.setEmail(rs.getString(4));
				u.setPhone(rs.getString(5));
				u.setAddress(rs.getString(6));
			} else {
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return u;
	}

	/**
	 * 用户登录
	 * 
	 * @param username
	 * @param userpwd
	 * @return
	 */
	public static int findUser(String username, String userpwd) {
		int id = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from user_info where username = '"
					+ username + "' and " + "userpwd='" + userpwd + "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				id = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return id;
	}

	/**
	 * 判断用户名是否已经被使用
	 * 
	 * @param username
	 * @return
	 */
	public static boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = true;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select userid from user_info where username = '"
					+ username + "'";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				flag = true;
			} else {
				flag = false;
			}
			// ps.setDate(5, new java.sql.Date(new java.util.Date().getDate()));
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
	 * 更新用户信息,除了密码和头像
	 * 
	 * @param username
	 * @return
	 */
	public static boolean updateUser(User user) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = true;
		int n = 0;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update user_info set email='" + user.getEmail()
					+ "' ,phone='" + user.getPhone() + "', address='"
					+ user.getAddress() + "', username='" + user.getUsername()
					+ "' where userid='" + user.getUserid() + "'";
			System.out.println(sql);
			ps = conn.prepareStatement(sql);
			n = ps.executeUpdate();
			System.out.println(n);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			flag = false;
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return flag;
	}

	public static boolean changePwd(String userid, String oldpwd, String newpwd) {

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int n = 0;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update user_info set userpwd=' " + newpwd
					+ "' where userid='" + userid + "' and userpwd='" + oldpwd
					+ "'";
			ps = conn.prepareStatement(sql);
			n = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtils.close(rs, ps, conn);
		}
		return n == 0 ? false : true;
	}

}
