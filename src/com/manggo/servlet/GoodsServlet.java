package com.manggo.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.manggo.DAO.GoodsDAO;
import com.manggo.bean.Goods;
import com.manggo.bean.Order;

import net.sf.json.JSONArray;
public class GoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setHeader("Content-Type", "text/html; charset=UTF-8");
		request.setCharacterEncoding("utf8");

		Goods g = null;
		String method = request.getParameter("method");

		if (("addGoods").equals(method)) {
			g = new Goods();
			g.setImg(request.getParameter("img"));
			g.setName(request.getParameter("name"));
			g.setDescription(request.getParameter("description"));
			g.setPrices(Float.parseFloat(request.getParameter("prices")));
			g.setNumber(Integer.parseInt(request.getParameter("number")));
			try {
				g.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss",Locale.ENGLISH).parse(request.getParameter("time")));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				System.out.println("转换失败");
				e.printStackTrace();
			}
			if (GoodsDAO.addGoods(g)) {
				response.getWriter().write("商品添加成功!");
			} else {
				response.getWriter().write("商品添加失败!");
			}
		} else if (("getGoodsDetail").equals(method)) {
			String goodsid = request.getParameter("goodsid");
			g = GoodsDAO.findGoods(goodsid);
			if (g != null) {
				request.setAttribute("goods", g);
				request.getRequestDispatcher("info.jsp").forward(request, response);
			} else {
				response.getWriter().write("获取商品失败!");
			}
		}else if (("getGoodsByUserid").equals(method)) {
			List<Order> list = GoodsDAO.getGoodsByUserid((Integer) request.getSession().getAttribute(
					"userid"));
			JSONArray json = new JSONArray();  
	        json.addAll(list);
			response.getWriter().println(json);
			System.out.println(list.toString());
		}else{
			int n;
			if(request.getParameter("page")!=null){
				n=Integer.parseInt(request.getParameter("page"));
			}else{
				n=0;
			}
			
			List<Goods> list = GoodsDAO.getall(n);
			JSONArray json = new JSONArray();  
	        json.addAll(list);
			response.getWriter().println(json);
			//request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
