package com.bk.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;

@WebServlet("/ResultAjax")
public class ResultAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int num = Integer.parseInt(request.getParameter("num"));

		CampDAO dao = new CampDAO();
		CampVO vo = new CampVO();
		vo = dao.SearchOne(num);
		
		HttpSession session = request.getSession();
		session.setAttribute("vo", vo);
		
		String nextPage = "Camp-Site.jsp";		
		response.sendRedirect(nextPage);	
		
		
	}
}
