<%@page import="com.bk.model.MemberVO"%>
<%@page import="com.bk.model.CampVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
        <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <style>

      .container {
        display: flex;

        width: 500px;
        height: 100px;
        justify-content: center;
        justify-content: space-evenly;
        align-items: center;
        border: 1px solid #000;

        margin-bottom: 50px;
        background-color: rgba(255, 255, 192, 0.1);
        backdrop-filter: blur(15px);
        box-shadow: 2px 7px 15px 8px rgb(0 0 0 / 30%);
        border-radius: 20px;
      }
      .container .form-check-input {
        display: flex;
    
      }

      #result {
        width: 100px;
        height: 100px;
      }
      .form-check-label:hover {
        color: skyblue;
      }
      .page-right {
        width: 64%;
        height: 2000px;
        float: right;
        border: 1px solid #f3f6f9;
      }
      .page-left {
        float: left;
        height: 100vh;
        width: 35%;
        border: 1px solid #f3f6f9;
        margin-right: 1px;
        display: flex;
      }
      .page {
        width: auto;
        height: 2000px;
       
      }
      .header {
        width: 100%;
        height: 100px;
        color: #f3f6f9;
        background: #000;
        border: 3px solid #000;
        margin-bottom: 5px;
      }
      .right-header {
        width: 100%;
        height: 4rem;
        border: 3px solid #000;
        margin-bottom: 5px;
      }
      .box5 {
        height: 14rem;
        width: 100%px;
        border: 1px solid #f3f6f9;
        display: flex;
        justify-content: space-around;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
      }
      .box4 {
        margin-top: 40px;
        margin-left: 20px;
        height: 10rem;
        width: 20rem;
        border: 1px solid #f3f6f9;
        background-image: url("./assets/brand/bgimg.gif");
        background-repeat: no-repeat;
        background-size: cover;

        border-radius: 20%;
      }
      .box3 {
        margin-top: 40px;
        margin-left: 20px;
        border: 1px solid #f3f6f9;
        height: 10rem;
        width: 100%;
      }
      .box2-1 {
        height: 3rem;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid #f3f6f9;
      }
      .box2-2 {
        height: 3rem;
        display: flex;
        justify-content: center;
        align-items: center;
        border: 1px solid #f3f6f9;
      }
      input[type="submit"] {
        width: 300px;
        height: 32px;
        font-size: 20px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        margin-left: 80px;
        background-color: #E86F52;
        border-color: #e3745b;
        color: #f3f6f9;
      }
      h3{

        font-size: 1.5rem!important;
      }

      input[type="checkbox"]{
        display: none;
      }

    </style>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
     <%
        List<CampVO> list = new ArrayList<CampVO>();
       list = (List<CampVO>)session.getAttribute("select"); 
      
 		MemberVO mvo = new MemberVO();
		mvo = (MemberVO)session.getAttribute("mvo"); 

     
     %>
  
  
    <!--- 좌측 체크필터 기능                 -->
    <div class="page">
<header class="u-black u-clearfix u-header u-header" id="sec-9c89"><div class="u-clearfix u-sheet u-sheet-1">
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
      </div></header>  
   
      <div class="page-left">
        <form action="filterSerivce" method="get">
          <div class="container">
            <input
              name="category1"
              class="form-check-input"
              type="checkbox"
              value="해변"
              id="해변"
            />
            <label class="form-check-label" for="해변">해변 </label>
            <input
              name="category1"
              class="form-check-input"
              type="checkbox"
              value="계곡"
              id="계곡"
            />
            <label class="form-check-label" for="계곡">계곡 </label>
            <input
              name="category1"
              class="form-check-input"
              type="checkbox"
              value="강"
              id="강"
            />
            <label class="form-check-label" for="강">강 </label>
            <input
              name="category1"
              class="form-check-input"
              type="checkbox"
              value="도심"
              id="도심"
            />
            <label class="form-check-label" for="도심">도심 </label>
            <input
              name="category1"
              class="form-check-input"
              type="checkbox"
              value="산"
              id="산"
            />
            <label class="form-check-label" for="산">산 </label>
          </div>

          <div class="container">
            <input
              name="category2"
              class="form-check-input"
              type="checkbox"
              value="일반야영장"
              id="일반야영장"
            />
            <label class="form-check-label" for="일반야영장">일반야영장 </label>
            <input
              name="category2"
              class="form-check-input"
              type="checkbox"
              value="자동차야영장"
              id="자동차야영장"
            />
            <label class="form-check-label" for="자동차야영장"
              >자동차야영장
            </label>
            <input
              name="category2"
              class="form-check-input"
              type="checkbox"
              value="카라반"
              id="카라반"
            />
            <label class="form-check-label" for="카라반">카라반 </label>
            <input
              name="category2"
              class="form-check-input"
              type="checkbox"
              value="글램핑"
              id="글램핑"
            />
            <label class="form-check-label" for="글램핑">글램핑 </label>
          </div>
          <div class="container">
            <input
              name="category3"
              class="form-check-input"
              type="checkbox"
              value="별 보기 좋은"
              id="별 보기 좋은"
            />
            <label class="form-check-label" for="별 보기 좋은"
              >별 보기 좋은
            </label>
            <input
              name="category3"
              class="form-check-input"
              type="checkbox"
              value="힐링"
              id="힐링"
            />
            <label class="form-check-label" for="힐링">힐링 </label>
            <input
              name="category3"
              class="form-check-input"
              type="checkbox"
              value="커플"
              id="커플"
            />
            <label class="form-check-label" for="커플">커플 </label>
          </div>

          <div class="container">
            <input
              name="category4"
              class="form-check-input"
              type="checkbox"
              value="0"
              id="반려동물 모두 가능"
            />
            <label class="form-check-label" for="반려동물 모두 가능"
              >반려동물 모두 가능
            </label>
            <input
              name="category4"
              class="form-check-input"
              type="checkbox"
              value="1"
              id="반려동물 소형만 가능"
            />
            <label class="form-check-label" for="반려동물 소형만 가능"
              >반려동물 소형만 가능
            </label>
            <input
              name="category4"
              class="form-check-input"
              type="checkbox"
              value="2"
              id="반려동물 출입 불가능"
            />
            <label class="form-check-label" for="반려동물 출입 불가능"
              >반려동물 출입 불가능
            </label>
          </div>

          <div class="container">
            <input
              name="category5"
              class="form-check-input"
              type="checkbox"
              value="전기"
              id="전기"
            />
            <label class="form-check-label" for="전기">전기 </label>
            <input
              name="category5"
              class="form-check-input"
              type="checkbox"
              value="와이파이"
              id="와이파이"
            />
            <label class="form-check-label" for="와이파이">와이파이 </label>
            <input
              name="category5"
              class="form-check-input"
              type="checkbox"
              value="온수"
              id="온수"
            />
            <label class="form-check-label" for="온수">온수 </label>
            <input
              name="category5"
              class="form-check-input"
              type="checkbox"
              value="산책로"
              id="산책로"
            />
            <label class="form-check-label" for="산책로">걷기길 </label>
            <input
              name="category5"
              class="form-check-input"
              type="checkbox"
              value="마트"
              id="마트, 편의점"
            />
            <label class="form-check-label" for="마트, 편의점"
              >마트, 편의점
            </label>
          </div>

          <input id="submit" type="submit" value="캠핑장 검색" />
          
        </form>
      </div>





      <!--- 좌측 체크필터 기능                 -->

      <div class="page-right">

        <div class="right-header">
        <span>오른쪽 헤더 들어갈곳</span>
        </div>
        
        <div>
        <%if(list!=null){ %>
           <%for(int i = 0 ; i < list.size()/10+1; i++){ %>
              <button ><%=i+1 %></button>   
           <%} %>
        <%} %>     
        </div>
          <%int count = 1; %>
          <%if(list!=null){ %>
             <%for(int j = 0 ; j < list.size()/10+1; j++){ %>
            <div id="<%=count++%>">
            <%int t=1; %>
            <%for(int i = j*10; i<list.size(); i++){%>
                 <%if (t<=10) {%>
                    <div class="box5">
                          <div class="box4"></div>
                          <div class="box3">
                               <div class="box2-1">
                                  <h3><span><%=list.get(i).getCamp_name() %></span></h3>              
                              </div>
                             <div class="box2-2">
                                 <span><%=list.get(i).getCamp_num() %></span>
                             </div>
                         </div>
                      </div>
                      <%} %>
                      <%t++; %>
                   <%} %>
                   </div>
             <%} %>          
         <%} %>
   

       
      </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
       b = $(".form-check-label");
      $(".form-check-input").on("click", function () {
        console.log($(this).next().css('color'));
          if ($(this).next().css('color') == "black") {
            $(this).next().css({ color: "skyblue" });
          } else {
            $(this).next().css({ color: "black" });
          }
      });
      
      
    </script>
   
    <script>
    <%if(list!=null){%>
       <%for(int i = 1 ; i <= list.size()/10+1; i++){ %>
           $('#<%=i%>').hide();  
       <%} %>
       $('#1').show();
       $('button').on('click', function(){
        <%for(int i = 1 ; i <= list.size()/10+1; i++){ %>
           $('#<%=i%>').hide();  
       <%} %>
       console.log(this)
       let num = this.textContent
       $('#'+num).show();      
       
       });
    <%}%>
   
    
    
    
    </script>
    
  </body>
</html>