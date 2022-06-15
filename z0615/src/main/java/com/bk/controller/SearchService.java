package com.bk.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;

@WebServlet("/SearchService")
public class SearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String search =  request.getParameter("search");
		System.out.println(search);
		
		CampDAO cao = new CampDAO();
		CampVO cvo2 = cao.Search(search);
		
		if(cvo2!=null) {
			System.out.println("검색성공");
			HttpSession session = request.getSession();
			session.setAttribute("cvo", cvo2);
		}else {
			System.out.println("검색실패");
		}
		response.sendRedirect("Home.jsp");
	}
}
