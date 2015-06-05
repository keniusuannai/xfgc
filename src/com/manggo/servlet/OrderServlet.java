package com.manggo.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manggo.DAO.GoodsDAO;
import com.manggo.DAO.OrderDAO;
import com.manggo.DAO.UserDAO;
import com.manggo.bean.Goods;
import com.manggo.bean.Order;

public class OrderServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		request.setCharacterEncoding("utf8");
		String method = request.getParameter("method");
		if (("addOrder").equals(method)) {
			Order o = new Order();
			o.setGoodsid(Integer.parseInt(request.getParameter("goodsid")));
			o.setUserid(Integer.parseInt(request.getParameter("userid")));
			try {
				o.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss",
						Locale.ENGLISH).parse(request.getParameter("time")));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				System.out.println("转换失败!");
				e.printStackTrace();
			}
			o.setPay_way(request.getParameter("pay_way"));
			o.setStatus(0);//支付状态
			if (OrderDAO.addOrder(o)) {
				response.getWriter().write("下单成功!");
			} else {
				response.getWriter().write("下单失败!");
			}
		} else if(("findOrder").equals(method)){
			String id = request.getParameter("orderid");
			Order o = OrderDAO.findOrder(id);
			if(o!=null){
				response.getWriter().write(o.toString());
			}else{
				response.getWriter().write("获取失败订单成功!");
			}
		}else if (("findOrderAll").equals(method)) {
			List<Order> list = new ArrayList<Order>();
			list = OrderDAO.findOrderAll();
			for(Order o:list) {
				response.getWriter().write(o.toString());
			}
		}
		else if (("findOrderSolved").equals(method)) {
			List<Order> list = new ArrayList<Order>();
			list = OrderDAO.findOrderSolved(Integer.parseInt(request.getParameter("isSolved")));
			for(Order o:list) {
				response.getWriter().write(o.toString());
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
