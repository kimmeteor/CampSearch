package com.bk.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.google.gson.Gson;

@WebServlet("/Survey2Ajax")
public class Survey2Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String text =request.getParameter("q");
		System.out.println(text);
		
		CampDAO dao = new CampDAO();
		List<CampVO> ex_list = new ArrayList<CampVO>();
		ex_list = dao.SearchDivision(text);
		
		for(CampVO a : ex_list){
     		if(a.getHomepage()==null){
     			a.setHomepage("홈페이지가 없어요ㅠ");
     		}
     		if(a.getAddress()==null){
     			a.setHomepage("주소가 없어요ㅠ");
     		}
     	}     
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();		
		String json = gson.toJson(ex_list);
		System.out.println(json);
		out.print(json);
	
	
	}

}
