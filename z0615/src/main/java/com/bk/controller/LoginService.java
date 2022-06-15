package com.bk.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.MemberDAO;
import com.bk.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");		
		String id =  request.getParameter("id");
		String pw =  request.getParameter("pw");	
		
		MemberVO mvo = new MemberVO();		
		mvo.setId(id);
		mvo.setPw(pw);
		
		MemberDAO mao = new MemberDAO();		
		MemberVO mvo2 = mao.Login(mvo);
		
		if(mvo2!=null) {		
			System.out.println("성공");
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo2);
		}else {
			System.out.println("실패");
		}
		response.sendRedirect("Home.jsp");
		return;
	}
}
