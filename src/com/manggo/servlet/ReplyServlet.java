package com.manggo.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manggo.DAO.ReplyDAO;
import com.manggo.bean.Reply;

public class ReplyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		request.setCharacterEncoding("utf8");
		
		String method = request.getParameter("method");
		if (("addReply").equals(method)) {
			Reply r = new Reply();
			r.setGoodsid(Integer.parseInt(request.getParameter("goodsid")));
			r.setUserid(Integer.parseInt(request.getParameter("userid")));
			r.setTime(new Date());
			r.setContent(request.getParameter("content"));
			if(ReplyDAO.addReply(r)){
				response.getWriter().write("评论成功!");
			}else{
				response.getWriter().write("评论失败!");
			}
		} else if(("findReply").equals(method)){
			List<Reply> list = new ArrayList<Reply>();
			list = ReplyDAO.findReply(request.getParameter("goodsid"));
			for(Reply r:list) {
				response.getWriter().write(r.toString());
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
