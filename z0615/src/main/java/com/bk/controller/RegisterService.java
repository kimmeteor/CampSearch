package com.bk.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bk.model.MemberDAO;
import com.bk.model.MemberVO;

@WebServlet("/RegisterService")
public class RegisterService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SimpleDateFormat yydate = new SimpleDateFormat("yyyy");
	Date time = new Date();

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int year = Integer.parseInt(yydate.format(time));
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int age = Integer.parseInt(request.getParameter("age"));
		String memlocation = request.getParameter("memlocation");

		age = year - age + 1; 

		int sex = 0;
		if (request.getParameter("sex").equals("남자")) {
			sex = 0; 
		} else {
			sex = 1; 
		}

		System.out.println(sex);
		System.out.println(id);
		System.out.println(pw);
		System.out.println(age);
		System.out.println(memlocation);
		

		MemberVO mvo = new MemberVO();

		mvo.setId(id);
		mvo.setSex(sex);
		mvo.setPw(pw);
		mvo.setAge(age);
		mvo.setMemlocation(memlocation);

		MemberDAO mao = new MemberDAO();

		int cnt = mao.Register(mvo);

		if (cnt > 0) {
			System.out.println("회원가입성공");
			request.setAttribute("id", mvo);
			RequestDispatcher rd = request.getRequestDispatcher("Login.html");
			rd.forward(request, response);

		} else {
			System.out.println("회원가입실패");
			response.sendRedirect("RegisterService");
		}
	}
}
