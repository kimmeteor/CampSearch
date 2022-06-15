package com.bk.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bk.model.CampDAO;
import com.bk.model.CampVO;

@WebServlet("/SurveyAjax")
public class SurveyAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random ran = new Random();
		
		String text =request.getParameter("q");
		String[] x = text.split("/");
		// 검색할수 있게 전처리				
		if(x[1].equals("캠핑은 정석대로 하고 싶어!")) {
			x[1]="일반야영장";
		}else if(x[1].equals("내 몸 누울 곳만 있으면 되지")) {
			x[1]="자동차야영장";
		}else if(x[1].equals("캠핑은 럭셔리해야지!")) {
			x[1]="글램핑";
		}else if(x[1].equals("내 집 째로 이동하고 싶어!")) {
			x[1]="카라반";
		}
		
		// 반려동물도 전처리
		 if(x[2].equals("없으면 좋겠어요")) {
			x[2]="2";
		}else if(x[2].equals("상관 없어요")) {
			x[2]="1";
		}else if(x[1].equals("네!!")) {
			x[1]="0";		
		} 				
		 
		 // 첫번째 분류		
		CampDAO dao = new CampDAO();
		List<CampVO> list = new ArrayList<CampVO>();
		list = dao.SearchLoc(x[0]);
		
		// 2번째 분류
		List<CampVO> list2 = new ArrayList<CampVO>();
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getMainfacilities().contains(x[1])) {
				list2.add(list.get(i));
			}			
		}
		// 만약 분류했는데 값이 안들어가면 이전꺼로 바꿔줌
		if(list2.isEmpty()) {
			list2 = list;			
		}		
		
		// 3번째 분류
		List<CampVO> list3 = new ArrayList<CampVO>();
		for(int i=0; i<list2.size(); i++) {
			if(list2.get(i).getPet().equals(x[2])) {
				list3.add(list2.get(i));
			}			
		}
		if(list3.isEmpty()) {
			list3 = list2;			
		}
		
		// 4번째 분류
		List<CampVO> list4 = new ArrayList<CampVO>();
		for(int i=0; i<list3.size(); i++) {
			if(list3.get(i).getAmenities().contains(x[3])) {
				list4.add(list3.get(i));
			}			
		}
		if(list4.isEmpty()) {
			list4 = list3;			
		}
		
		// 5번째 분류
		List<CampVO> list5 = new ArrayList<CampVO>();
		for(int i=0; i<list4.size(); i++) {
			if(list4.get(i).getTag().contains(x[4])) {
				list5.add(list4.get(i));
			}			
		}
		if(list5.isEmpty()) {
			list5 = list4;			
		}
		
		// result페이지에 3개이상 보내야해서 결과가 3개가 안되면 랜덤으로 추가	
		while(true) {
			if(list5.size()<3) {
				CampVO vo = new CampVO();
				int search = ran.nextInt(218)+1;
				vo=dao.SearchOne(search);
				list5.add(vo);		
			}else {
				break;
			}
		}
		
		// 별점순으로정렬
		List<CampVO> sortedList = list5.stream().sorted((a,b)->(int)(b.getRank()*100) - (int)(a.getRank()*100)).collect(Collectors.toList());
		// 정렬되었나 출력		
		for(CampVO cvo : sortedList) {
		}
		for(CampVO a : list){
     		if(a.getHomepage()==null){
     			a.setHomepage("홈페이지가 없어요ㅠ");
     		}
     		if(a.getAddress()==null){
     			a.setHomepage("주소가 없어요ㅠ");
     		}
     	}     	
		
			
		HttpSession session1 = request.getSession();
		session1.setAttribute("keyword", x);
		
		HttpSession session = request.getSession();
		session.setAttribute("list", sortedList);
		
		String nextPage = "Result.jsp";		
		response.sendRedirect(nextPage);		
	}
}
