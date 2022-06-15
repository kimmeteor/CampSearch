package com.bk.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;
@WebServlet("/Recommend")
public class Recommend extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String text = request.getParameter("res");
		System.out.println(text);
		String[] camp_num = text.split(" ");
		for(int i = 0; i<camp_num.length;i++) {
			System.out.println(camp_num[i]);
		}
		
		
		CampDAO dao = new CampDAO();
		List<CampVO> list = new ArrayList<CampVO>();
		for(int i = 0; i<camp_num.length;i++) {
			list.add(dao.SearchOne(Integer.parseInt(camp_num[i])));
		}
		
		for(CampVO cvo :list) {
			System.out.println(cvo.getCamp_name());
			System.out.println(cvo.getLocation());
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		//String nextPage = "GoResult2";		
		//response.sendRedirect(nextPage);	
	
	}

}
