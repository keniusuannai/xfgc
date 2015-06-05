package com.manggo.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.manggo.DAO.UserDAO;
import com.manggo.bean.Order;
import com.manggo.bean.User;

public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		request.setCharacterEncoding("utf8");
		User u = null;
		String method = request.getParameter("method");
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		if (("checkUsername").equals(method)) {
			if (UserDAO.checkUsername(username)) {
				response.getWriter().write("用户名已经存在!");
			} else {
				response.getWriter().write("该用户名可以注册");
			}
		} else if (("regist").equals(method)) {
			int id = UserDAO.addUser(new User(username, userpwd));
			if (id > 0) {
				request.getSession().setAttribute("userid", id);
				response.sendRedirect("index.jsp");
			} else {
				response.getWriter().write("注册失败!");
			}
		} else if (("login").equals(method)) {
			int id = UserDAO.findUser(username, userpwd);
			if (id != 0) {
				request.getSession().setAttribute("userid", id);
				response.sendRedirect("index.jsp");
			} else {
				response.getWriter().write("登陆失败!密码或用户名错误!");
			}
		} else if (("userinfo").equals(method)) {
			u = UserDAO.getInfo((Integer) request.getSession().getAttribute(
					"userid"));
			if (u != null) {
				request.setAttribute("userinfo", u);
				System.out.println(u.toString());
				request.getRequestDispatcher("userinfo.jsp").forward(request,
						response);
			} else {
				response.getWriter().write("获取失败!");
			}
		} else if (("updateUser").equals(method)) {
			u = new User();
			u.setUsername(request.getParameter("username"));
			// u.setUserpwd(request.getParameter("userpwd"));
			// u.setImg(request.getParameter("img"));
			u.setEmail(request.getParameter("email"));
			u.setPhone(request.getParameter("phone"));
			u.setAddress(request.getParameter("address"));
			u.setUserid((Integer) request.getSession().getAttribute("userid"));
			if (UserDAO.updateUser(u)) {
				request.setAttribute("userinfo", u);
				request.getRequestDispatcher("userinfo.jsp").forward(request,
						response);
			} else {
				response.getWriter().write("更新失败!");
			}
		} else if (("changePwd").equals(method)) {
			String userid = request.getSession().getAttribute("userid")
					.toString();
			String oldpwd = request.getParameter("oldpwd");
			String newpwd = request.getParameter("newpwd");
			System.out.println(userid + " " + oldpwd + " " + newpwd);
			if (UserDAO.changePwd(userid, oldpwd, newpwd)) {
				response.getWriter().write("1");
			} else {
				response.getWriter().write("0");
			}
		} else if (("exit").equals(method)) {
			request.getSession().invalidate();
			response.sendRedirect("index.jsp");
		} else {
			response.getWriter().write("输入地址有误!");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
