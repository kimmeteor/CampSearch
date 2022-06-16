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

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String text = request.getParameter("res");
      System.out.println(text);
      String[] camp_num = text.split(" ");
      for (int i = 0; i < camp_num.length; i++) {
         System.out.println(camp_num[i]);
      }

      CampDAO dao = new CampDAO();
      List<CampVO> list = new ArrayList<CampVO>();
      for (int i = 0; i < camp_num.length; i++) {
         list.add(dao.SearchOne(Integer.parseInt(camp_num[i])));
      }

      for (CampVO cvo : list) {
         System.out.println(cvo.getLocation());
         System.out.println(cvo.getMainfacilities());
         System.out.println(cvo.getAmenities());
         System.out.println(cvo.getTag());
         System.out.println("");
      }
      int count = 1;
      int max_count = 0;
      int similarCamp = 0;
      String search1 = "";
      String search2 = "";
      String search3 = "";
      String search4 = "";
      String search5 = "";
      String search6 = "";
      String search7 = "";
      String search8 = "";
      String search9 = "";
      String search10 = "";
      List<CampVO> list2 = new ArrayList<CampVO>();
      List<CampVO> list3 = new ArrayList<CampVO>();
      String[] per = new String[3];
      for (int num = 0; num < 3; num++) {
         search1 = ""; // 입지구분
         search1 = list.get(num).getLocation().split(" ")[0];
         if (search1.contains(",")) {
            search1 = search1.split(",")[0];
         }

         search2 = ""; // 주요시설
         search2 = list.get(num).getMainfacilities().split(",")[0];

         search3 = ""; // 부대시설
         search3 = list.get(num).getAmenities().split(" ")[0];
         search4 = ""; // 부대시설
         search4 = list.get(num).getAmenities().split(" ")[1];
         search5 = ""; // 부대시설
         search5 = list.get(num).getAmenities().split(" ")[2];

         search6 = ""; // 태그
         search6 = list.get(num).getTag().split("#")[0];
         search7 = ""; // 태그
         search7 = list.get(num).getTag().split("#")[1];
         search8 = ""; // 태그
         search8 = list.get(num).getTag().split("#")[2];
         search9 = ""; // 태그
         search9 = list.get(num).getTag().split("#")[3];

         search10 = ""; // 펫
         search10 = list.get(num).getPet();

         list2 = dao.SearchLoc(search1);
         count = 1;
         max_count = 0;
         similarCamp = 0;
         for (int i = 0; i < list2.size(); i++) {
            count = 1;
            if (list2.get(i).getMainfacilities().contains(search2)) {
               count++;
            }
            if (list2.get(i).getAmenities().contains(search3)) {
               count++;
            }
            if (list2.get(i).getAmenities().contains(search4)) {
               count++;
            }
            if (list2.get(i).getAmenities().contains(search5)) {
               count++;
            }
            if (list2.get(i).getTag().contains(search6)) {
               count++;
            }
            if (list2.get(i).getTag().contains(search7)) {
               count++;
            }
            if (list2.get(i).getTag().contains(search8)) {
               count++;
            }
            if (list2.get(i).getTag().contains(search9)) {
               count++;
            }
            if (list2.get(i).getPet().contains(search10)) {
               count++;
            }
            if (max_count <= count) {
               max_count = count;
               similarCamp = list2.get(i).getCamp_num();
            }
         }
         list3.add(dao.SearchOne(similarCamp));
         per[num]=max_count*10+"%";         
      }


      System.out.println(search1 + " / " + search2 + " / " + search3 + " / " + search4 + " / " + search5);
      System.out.println(search6 + " / " + search7 + " / " + search8 + " / " + search9 + " / " + search10);

      HttpSession session = request.getSession();
      session.setAttribute("list", list3);
      
      HttpSession sessionP = request.getSession();
      sessionP.setAttribute("per", per);
      
   }

}