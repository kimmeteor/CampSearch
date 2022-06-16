<%@page import="com.bk.model.CampVO"%>
<%@page import="com.bk.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
   integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
   crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Recommendation">
    <meta name="description" content="">
    <title>Result</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Result.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.14, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" href="jqcloud.min.css">
    
    <script type="application/ld+json">{
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Result">
    <meta property="og:type" content="website">
    
    <style>
    button{
    padding: 0;
   border: none;
   background: none;
   cursor:pointer;
   left : 50px;
    }
    button : active{
       padding :0;
    }
    
    </style>
  </head>
  <body class="u-body u-xl-mode">
     <%
      //String str = (String)request.getAttribute("a");
        //String[] x = str.split("/");
        List<CampVO> list = new ArrayList<CampVO>();
        list = (List<CampVO>)session.getAttribute("list");        
        String[] keyword = (String[])session.getAttribute("keyword");
        String[] per = (String[])session.getAttribute("per");
        MemberVO mvo = new MemberVO();
         mvo = (MemberVO)session.getAttribute("mvo");            
   %>
       <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="    
    crossorigin="anonymous"></script>
  <header class="u-black u-clearfix u-header u-sticky u-sticky-c20a u-header" id="sec-9c89"><div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-body-alt-color u-text-default u-text-1">
          <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-body-alt-color u-btn-1" href="Home.jsp" data-page-id="1685410431">BackTracking</a>
        </h1>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
   
    </a>
    </div>
    <div class="u-custom-menu u-nav-container">
    <ul class="u-nav u-unstyled u-nav-1">
    <li class="u-nav-item">
    <%if(mvo==null){ %>
       <a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-palette-1-light-1" href="Login.html" style="padding: 10px 20px;">Login</a>
    <%}else{ %>
       <a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-palette-1-light-1" href="#" style="padding: 10px 20px;"><%=mvo.getId()%>님 반갑습니다 </a>
    <%} %>        
   </li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Login.html">Login</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav><span class="u-file-icon u-icon u-text-white u-icon-1" data-href="filter2.jsp" data-page-id="199526782"><img src="images/1.png" alt=""></span>
      </div></header>
   
    <section class="u-align-center u-clearfix u-section-2" id="sec-e683">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout">
            <h2 class="u-custom-font u-text u-text-default u-text-1">Recommendation</h2>
            <%if(mvo!=null){ %>
            <p class="u-text u-text-default u-text-2"><%=mvo.getId() %>님의 취향에 맞는, 캠핑장 추천</p>
            <%}else{ %>
            <p class="u-text u-text-default u-text-2">OO님의 취향에 맞는, 캠핑장 추천</p>
            <%} %>
          </div>
        </div>
        <div class="u-expanded-width u-layout-horizontal u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-2">
                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-2">
                  <div class="u-container-layout" id = 'div1'>
                     <button class = "ab1"><img class="u-image u-image-default u-image-1" src="<%=list.get(0).getPhoto()%>" alt="" data-image-width="1280" data-image-height="853" data-page-id="895805241"></button>
                    <h3 class="u-align-center u-custom-font u-text u-text-3"><%=list.get(0).getCamp_name()%></h3>
                    <p class="u-align-center u-text u-text-5"><%=list.get(0).getAddress()%></p>
                    <a href="<%=list.get(0).getHomepage()%>" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-text-body-color u-btn-1">HOMPAGE</a>
                    <p class="u-align-center u-text u-text-5">유사도는 <%=per[0] %>입니다</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-2">
              <div class="u-container-layout u-similar-container u-container-layout-4">
                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-3">
                  <div class="u-container-layout">
                    <button class = "ab2"><img class="u-image u-image-default u-image-2" src="<%=list.get(1).getPhoto()%>" alt="" data-image-width="1280" data-image-height="853" data-page-id="895805241"></button>
                    <h3 class="u-align-center u-custom-font u-text u-text-6">
                      <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-black u-btn-2" href="#"><%=list.get(1).getCamp_name()%></a>
                    </h3>
                    <p class="u-align-center u-text u-text-8"> <%=list.get(1).getAddress()%></p>
                    <a href="<%=list.get(1).getHomepage()%>" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-text-body-color u-btn-3">HOMEPAGE</a>
                     <p class="u-align-center u-text u-text-5">유사도는 <%=per[1] %>입니다</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-3">
              <div class="u-container-layout u-similar-container u-container-layout-6">
                <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-4">
                  <div class="u-container-layout">
                    <button class = "ab3"><img class="u-image u-image-default u-image-3" src="<%=list.get(2).getPhoto()%>" alt="" data-image-width="1280" data-image-height="720" data-page-id="895805241"></button>
                    <h3 class="u-align-center u-custom-font u-text u-text-9"><%=list.get(2).getCamp_name()%></h3>
                    <p class="u-align-center u-text u-text-11"> <%=list.get(2).getAddress()%></p>
                    <a href="<%=list.get(2).getHomepage()%>" class="u-active-none u-border-2 u-border-palette-2-light-1 u-btn u-btn-rectangle u-button-style u-hover-none u-text-body-color u-btn-4">HOMEPAGE</a>
                    <p class="u-align-center u-text u-text-5">유사도는 <%=per[2] %>입니다</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <a class="u-gallery-nav u-gallery-nav-prev u-opacity u-opacity-70 u-spacing-10 u-text-palette-5-dark-1 u-gallery-nav-1" href="#" role="button">
            <span aria-hidden="true">
              <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
            </span>
            <span class="sr-only">
              <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
            </span>
          </a>
          <a class="u-gallery-nav u-gallery-nav-next u-opacity u-opacity-70 u-spacing-10 u-text-palette-5-dark-1 u-gallery-nav-2" href="#" role="button">
            <span aria-hidden="true">
              <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
            </span>
            <span class="sr-only">
              <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
            </span>
          </a>
        </div>
      </div>
    </section>
<script>

      let num = 0;
      $('.ab1').on('click', function() {
         
         num = <%=list.get(0).getCamp_num()%>
         
         $.ajax({
            url : "ResultAjax",
            type : 'GET',
            data: {"num": num},
            success : function(res) {
               console.log('성공');
               location.href = 'GoCampSite';
            },

            error : function() {
               console.log('실패');
            }

         });
         
      })
      
      $('.ab2').on('click', function() {
         
         num = <%=list.get(1).getCamp_num()%>
         
         $.ajax({
            url : "ResultAjax",
            type : 'GET',
            data: {"num": num},
            success : function(res) {
               console.log('성공');
               location.href = 'GoCampSite';
            },

            error : function() {
               console.log('실패');
            }

         });
         

      })
      
      $('.ab3').on('click', function() {
         
         num = <%=list.get(2).getCamp_num()%>
         
         $.ajax({
            url : "ResultAjax",
            type : 'GET',
            data: {"num": num},
            success : function(res) {
               console.log('성공');
               location.href = 'GoCampSite';
            },

            error : function() {
               console.log('실패');
            }
         });
      })
   </script>
    
  </body>
</html>