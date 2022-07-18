<%@page import="com.bk.model.MemberVO"%>
<%@page import="com.bk.model.CampVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="BackTracking">
    <meta name="description" content="">
    <title>Survey 2</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Survey-2.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.14, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Survey 2">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode">
     <%
     	MemberVO mvo = new MemberVO();
   		mvo = (MemberVO)session.getAttribute("mvo");      		
	%>
  <header class="u-black u-clearfix u-header u-header" id="sec-9c89"><div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-custom-font u-text u-text-body-alt-color u-text-default u-text-1">
          <a id="head" class="u-active-none u-border-none u-btn u-button-link u-button-style u-custom-font u-hover-none u-none u-text-body-alt-color u-btn-1" href="Home.jsp" data-page-id="1685410431">BackTracking</a>
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
     <section class="u-align-center u-clearfix u-white u-section-1" id="sec-6854">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">회원ID 님의 경험을 분석해서 <br>마음에 드실 만한 캠핑장을 추천해드릴게요!
        </h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <h5 class="u-text u-text-2"> 다녀왔던 캠핑장 중에 <br>특별히 마음에 들었던 캠핑장을 선택해주세요 (3개)&nbsp;<br>
        </h5>
        <button class="a1">캠핌장 선택하기</button>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-2" id="sec-d84b">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장의 위치를 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">가평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-2">
                <button  class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">고양시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">김포시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-4">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">남양주</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-5">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">동두천</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-6">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">안성시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-7">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">양주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-8">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">양평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-9">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">용인시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-10">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">파주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-11">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">포천시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-12">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-1">화성시</button>
              </div>
            </div>
          </div>
        </div>
        <div class="u-list u-list-2">
          <div class="u-repeater u-repeater-2"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-3" id="sec-0f93">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장을 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div id = "div1"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-4" id="carousel_0829">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장의 위치를 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">가평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-2">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">고양시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">김포시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-4">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">남양주</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-5">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">동두천</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-6">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">안성시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-7">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">양주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-8">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">양평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-9">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">용인시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-10">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">파주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-11">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">포천시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-12">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-2">화성시</button>
              </div>
            </div>
          </div>
        </div>
        <div class="u-list u-list-2">
          <div class="u-repeater u-repeater-2"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-5" id="carousel_1f39">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장을 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div id="div2"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-6" id="carousel_081a">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장의 위치를 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-1">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">가평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-2">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">고양시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-3">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">김포시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-4">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">남양주</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-5">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">동두천</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-6">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">안성시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-7">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">양주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-8">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">양평군</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-9">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">용인시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-10">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">파주시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-11">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">포천시</button>
              </div>
            </div>
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-12">
                <button class="u-border-2 u-border-black u-btn u-button-style u-custom-item u-hover-black u-none u-text-hover-white u-btn-3">화성시</button>
              </div>
            </div>
          </div>
        </div>
        <div class="u-list u-list-2">
          <div class="u-repeater u-repeater-2"></div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-white u-section-7" id="carousel_8b83">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h4 class="u-text u-text-1">캠핑장을 선택해주세요</h4>
        <div class="u-align-center u-border-1 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div>
        <div id = "div3"></div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1"></div>
        </div>
      </div>
    </section>
    
    
    
   <span style="height: 64px; width: 64px; margin-left: 0px; margin-right: auto; margin-top: 0px; background-image: none; right: 20px; bottom: 20px; padding: 15px;" class="u-back-to-top u-icon u-icon-circle u-opacity u-opacity-85 u-palette-1-base" data-href="#">
        <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 551.13 551.13"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1d98"></use></svg>
        <svg class="u-svg-content" enable-background="new 0 0 551.13 551.13" viewBox="0 0 551.13 551.13" xmlns="http://www.w3.org/2000/svg" id="svg-1d98"><path d="m275.565 189.451 223.897 223.897h51.668l-275.565-275.565-275.565 275.565h51.668z"></path></svg>
    </span>
    
    
    <script>
    	// 다음단계 눌렀을때
    	let q="";
    	let res="";
    	var str = "";
    	$('#sec-d84b').hide();
    	$('#sec-0f93').hide();
    	$('#carousel_0829').hide();
    	$('#carousel_1f39').hide();
    	$('#carousel_081a').hide();
    	$('#carousel_8b83').hide();
    	// ajax로 q에 값 저장해서 넘겨주기    	
    	
    	$('.a1').on('click', function(){
    		$('#sec-6854').hide();
    		$('#sec-d84b').show();    		
    	})    	
    	
    	$('.u-btn-1').on('click', function(){
    		$('#sec-d84b').hide();
    		$('#sec-0f93').show();  
    		q = $(this).html();  
    		str = "";
    		$.ajax({
				url : "Survey2Ajax",
				type : 'GET',
				data: {"q": q},
				dataType : 'json',
				success : function(data) {
					console.log('성공');					
					for(var value of data){		
						var camp_num = value.camp_num;
						var camp_name = value.camp_name;
						var address = value.address;
						var division = value.division;
						str += "<div class='result'>";
						str += "<a class = 'resulta' href='#'>";
						str += "<div>";
						str += "<p style='display:none'>"+camp_num+" </p>";
						str += "<p class = 'camp_name'>"+"["+division+"]"+camp_name+" </p>";
						str += "<p class = 'address'>"+address+"</p>";
						str += "</div>"
						str += "</a>"
						str += "</div><hr>"
					}
					$("#div1").html(str);	
					$('.resulta').on('click', function(){
						console.log($(this).text().split('[')[0]);
			    		res += $(this).text().split('[')[0];
						$('#sec-0f93').hide();
			    		$('#carousel_0829').show();    		
			    	})
				},
				error : function() {
					console.log('실패');
				}

			});
    	})
    	
    	$('.u-btn-2').on('click', function(){
    		$('#carousel_0829').hide();
    		$('#carousel_1f39').show();  
    		q = $(this).html();
    		str = "";
    		$.ajax({
				url : "Survey2Ajax",
				type : 'GET',
				data: {"q": q},
				dataType : 'json',
				success : function(data) {
					console.log('성공');
					for(var value of data){	
						var camp_num = value.camp_num;
						var camp_name = value.camp_name;
						var address = value.address;
						var division = value.division;
						str += "<div class='result2'>";
						str += "<a class = 'resultb' href='#'>"
						str += "<div>"
						str += "<p style='display:none'>"+camp_num+" </p>";
						str += "<p class = 'camp_name'>"+"["+division+"]"+camp_name+" </p>";
						str += "<p class = 'address'>"+address+"</p>";
						str += "</div>"
						str += "</a>"
						str += "</div><hr>"
					}
					$("#div2").html(str);
					$('.resultb').on('click', function(){
						console.log($(this).text().split('[')[0]);
			    		res += $(this).text().split('[')[0];
			    		$('#carousel_1f39').hide();
			    		$('#carousel_081a').show();  	
			    	})
				},
				error : function() {
					console.log('실패');
				}

			});
    	})
    	
    	$('.u-btn-3').on('click', function(){
    		$('#carousel_081a').hide();
    		$('#carousel_8b83').show();
    		q = $(this).html();
    		str = "";
    		$.ajax({
				url : "Survey2Ajax",
				type : 'GET',
				data: {"q": q},
				dataType : 'json',
				success : function(data) {
					console.log('성공');
					for(var value of data){		
						var camp_num = value.camp_num;
						var camp_name = value.camp_name;
						var address = value.address;
						var division = value.division;
						str += "<div class='result3'>";
						str += "<a class = 'resultc' href='#'>"
						str += "<div>"
						str += "<p style='display:none'>"+camp_num+" </p>";
						str += "<p class = 'camp_name'>"+"["+division+"]"+camp_name+" </p>";
						str += "<p class = 'address'>"+address+"</p>";
						str += "</div>"
						str += "</a>"
						str += "</div><hr>"
					}
					$("#div3").html(str);	
					$('.resultc').on('click', function(){
						console.log($(this).text().split('[')[0]);
			    		res += $(this).text().split('[')[0];
			    		console.log(res)
			    		$.ajax({
			    			url : "Recommend",
			    			type : 'GET',
			    			data : {"res" : res},
			    			success : function(q){
			    				console.log('성공');
			    				console.log(q);
					    		location.href = 'GoResult2';
			    			},
			    			error : function(){
			    				console.log('실패');
			    			}		    			
			    		});
			    	})
				},
				error : function() {
					console.log('실패');
				}

			});
    	}) 	
    	
    	
    </script>    	
  </body>
</html>