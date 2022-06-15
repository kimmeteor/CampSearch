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
    <meta name="keywords" content="양주캠프(구 양주그린캠프)">
    <meta name="description" content="">
    <title>Camp Site</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Camp-Site.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.14, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Camp Site">
    <meta property="og:type" content="website">
    <style>	
     .wrap {position: absolute;left: 0;bottom: 40px; width: 330px;height: 132px;margin-left: -160px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 330px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
     .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 71px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
	.box{
		width: 1000px;
		height: 160px;
	}
	.a1{
  		text-decoration-line: none;
  		color: black;
	}
	.img1{		
		float : left;
		margin-left:20px;
	}
	.title2{
		height: 10%;
		margin-left:200px;
	}
	.blogname{
		height: 10%;
		margin-left:200px;
		color: blue;
	}
	.contents{
		height: 30%;
		margin-left:200px
	}
	.datetime{
		height: 10%;
		text-align:right;
	}
	.right{
		height: 135px;		
	}
</style>
  </head>
  <body class="u-body u-xl-mode">
   <%
   String pet = "";
   		CampVO vo = new CampVO();
     	vo = (CampVO)session.getAttribute("vo");     
     	if(vo.getPet()=="0"){
     		pet = "출입가능";
     	}else if (vo.getPet()=="1"){
     		pet= "출입가능";
     	}else{
     		pet = "출입불가";
     	}
     	
	%>
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
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-custom-color-1 u-text-hover-palette-1-light-1" href="Login.html" style="padding: 10px 20px;">Login</a>
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
        </nav><span class="u-file-icon u-icon u-text-white u-icon-1" data-href="Search.html" data-page-id="199526782"><img src="images/1.png" alt=""></span>
      </div></header>
    <section class="u-clearfix u-custom-color-21 u-section-1" id="sec-7418">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-group u-shape-rectangle u-group-1">
          <div class="u-container-layout">
            <h2 class="u-custom-font u-text u-text-custom-color-22 u-text-default u-text-1"><%=vo.getCamp_name() %></h2>
            <img class="u-expanded-width u-image u-preserve-proportions u-image-1" src="<%=vo.getPhoto()%>" data-image-width="750" data-image-height="500">
            <p class="u-align-left u-text u-text-custom-color-22 u-text-2"> <%=vo.getAddress() %></p>
            <p class="u-align-left u-text u-text-custom-color-22 u-text-3"> <%=vo.getMainfacilities()%></p>
            <p class="u-text u-text-custom-color-22 u-text-4"> <%=vo.getTag() %>&nbsp;</p>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-custom-color-21 u-section-2" id="sec-ef65">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
          <ul class="u-border-2 u-border-grey-75 u-custom-color-24 u-tab-list u-unstyled u-tab-list-1" role="tablist">
            <li class="u-tab-item u-tab-item-1" role="presentation">
              <a class="active u-active-custom-color-24 u-button-style u-custom-color-21 u-custom-font u-hover-custom-color-25 u-tab-link u-text-active-black u-text-custom-color-22 u-tab-link-1" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="true">위치/주변정보</a>
            </li>
            <li class="u-tab-item u-tab-item-2" role="presentation">
              <a class="u-active-custom-color-24 u-button-style u-custom-color-21 u-custom-font u-hover-custom-color-25 u-tab-link u-text-active-black u-text-custom-color-22 u-tab-link-2" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="false">캠핑장 정보</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-custom-color-24 u-button-style u-custom-color-21 u-custom-font u-hover-custom-color-25 u-tab-link u-text-active-black u-text-custom-color-22 u-tab-link-3" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">리뷰</a>
            </li>
          </ul>
          <div class="u-tab-content">
            <div class="u-container-style u-custom-color-24 u-shape-rectangle u-tab-active u-tab-pane u-tab-pane-1" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
              <div class="u-container-layout u-container-layout-1">
                <div class="u-grey-light-2 u-map u-map-1">
                 <div id="map" style="width: 100%; height: 600px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=47a972f488fe3e3b0a0b7fb51c1b33d4&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						"<%=vo.getAddress()%>",
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 커스텀 오버레이에 표시할 컨텐츠 입니다
								// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
								// 별도의 이벤트 메소드를 제공하지 않습니다 
								var content = '<div class="wrap">' + 
		                           '    <div class="info">' + 
		                           '        <div class="title">' + 
		                           //캠핑장이름
		                           '            <%=vo.getCamp_name()%>' + 
		                           '        </div>' + 
		                           '        <div class="body">' + 
		                           '            <div class="img">' +
		                           //썸네일 주소
		                           '                <img src=" <%=vo.getPhoto()%>" width="73" height="70">' +
		                           '           </div>' + 
		                           '            <div class="desc">' + 
		                           //주소
		                           '                <div class="ellipsis"><%=vo.getAddress()%></div>' + 
		                           //연락처
		                           '                <div class="jibun ellipsis"><%=vo.getPhone()%></div>' + 
		                           '                <div><a href="https://www.naver.com/" target="_blank" class="link">홈페이지</a></div>' + 
		                           '            </div>' + 
		                           '        </div>' + 
		                           '    </div>' +    
		                           '</div>';

								// 마커 위에 커스텀오버레이를 표시합니다
								// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
								var overlay = new kakao.maps.CustomOverlay({
								    content: content,
								    map: map,
								    position: marker.getPosition()       
								});

								// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
						
								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
                </div>
              </div>
            </div>
            <div class="u-container-style u-custom-color-24 u-shape-rectangle u-tab-pane u-tab-pane-2" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
              <div class="u-container-layout u-container-layout-2">
                <img class="u-image u-image-default u-preserve-proportions u-image-1" src="<%=vo.getImage1() %>" alt="" data-image-width="1280" data-image-height="853">
                <img class="u-image u-image-default u-preserve-proportions u-image-2" src="<%=vo.getImage2() %>" alt="" data-image-width="1280" data-image-height="853">
                <img class="u-image u-image-default u-preserve-proportions u-image-3" src="<%=vo.getImage3() %>" alt="" data-image-width="853" data-image-height="1280">
                <div class="u-container-style u-group u-shape-rectangle u-group-1">
                  <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-1"><img src="images/4205461.png" alt=""></span>
                    <p class="u-text u-text-1"><%=vo.getExplanation() %>
                    </p>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-2">
                  <div class="u-container-layout">
                    <p class="u-align-left u-text u-text-2"> <%=vo.getAddress() %><br>
                    </p><span class="u-icon u-text-black u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 54.757 54.757" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ef2e"></use></svg><svg class="u-svg-content" viewBox="0 0 54.757 54.757" x="0px" y="0px" id="svg-ef2e" style="enable-background:new 0 0 54.757 54.757;"><g><path d="M27.557,12c-3.859,0-7,3.141-7,7s3.141,7,7,7s7-3.141,7-7S31.416,12,27.557,12z M27.557,24c-2.757,0-5-2.243-5-5
		s2.243-5,5-5s5,2.243,5,5S30.314,24,27.557,24z"></path><path d="M40.94,5.617C37.318,1.995,32.502,0,27.38,0c-5.123,0-9.938,1.995-13.56,5.617c-6.703,6.702-7.536,19.312-1.804,26.952
		L27.38,54.757L42.721,32.6C48.476,24.929,47.643,12.319,40.94,5.617z M41.099,31.431L27.38,51.243L13.639,31.4
		C8.44,24.468,9.185,13.08,15.235,7.031C18.479,3.787,22.792,2,27.38,2s8.901,1.787,12.146,5.031
		C45.576,13.08,46.321,24.468,41.099,31.431z"></path>
</g></svg></span>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-3">
                  <div class="u-container-layout">
                    <p class="u-align-left u-text u-text-3"> <%=vo.getHomepage()%><br>
                    </p><span class="u-file-icon u-icon u-icon-3"><img src="images/5219891.png" alt=""></span>
                    <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-4">
                      <div class="u-container-layout">
                        <p class="u-text u-text-4"><%=vo.getPhone() %><br>
                        </p><span class="u-file-icon u-icon u-icon-4"><img src="images/1034131.png" alt=""></span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-5">
                  <div class="u-container-layout">
                    <p class="u-align-left u-text u-text-5"> <%=vo.getLocation() %><br>
                    </p><span class="u-file-icon u-icon u-icon-5"><img src="images/7637523.png" alt=""></span>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-6">
                  <div class="u-container-layout">
                    <p class="u-align-left u-text u-text-6"> <%=vo.getMainfacilities() %><br>
                    </p><span class="u-file-icon u-icon u-icon-6"><img src="images/3234405.png" alt=""></span>
                  </div>
                </div>
                <div class="u-container-style u-group u-shape-rectangle u-group-7">
                  <div class="u-container-layout">
                    <p class="u-align-left u-text u-text-7"> <%=vo.getAmenities() %><br>
                    </p><span class="u-file-icon u-icon u-icon-6"><img src="images/263114.png" alt=""></span>
                    <div class="u-container-style u-expanded-width u-group u-shape-rectangle u-group-8">
                      <div class="u-container-layout">
                        <p class="u-align-left u-text u-text-8"><%=pet %></p><span class="u-file-icon u-icon u-icon-8"><img src="images/6462524.png" alt=""></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-custom-color-24 u-shape-rectangle u-tab-pane u-tab-pane-3" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
              <div class="u-container-layout u-container-layout-11">
               <body>
	<div id="total"></div>
	<div id="page"></div>
	<button id="before">이전페이지</button>
	<button id="next">다음페이지</button>
	<hr>
	<div id="container"></div>	

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>

	var query = "<%=vo.getCamp_name() %>";
	var page = 1;
	function blogSearch(){
		var str="";
		$.ajax({
			type:"GET",
			url:"https://dapi.kakao.com/v2/search/blog",
			headers:{'Authorization':'KakaoAK 6aa14d05544a375d408a0406ca77b966'},
			dataType: "json",
			data:{'query':query, 'page': page, 'sort' : 'recency','size': 5},
			success:function(data){
				$("#total").html("전체 게시물 수 : "+data.meta.total_count);
				$('#page').html("현재 페이지 번호 : " + page);
				$(data.documents).each(function(){
					var image = this.thumbnail;
					var title = this.title;
					var blogname = this.blogname;
					var blogurl = this.url
					var contents = this.contents;
					var datetime = this.datetime;
					datetime = datetime.split("T")[0];
					str += "<div class = 'box'>";
					str += "<a class = 'a1' href='"+blogurl+"'>";
					str += "<div>"
					str += "<img class = 'img1' src='"+image+"'>";
					str += "</div>"
					str += "<div class = 'right'>"
					str += "<p class = 'title2'>"+ title +"</p>";										
					str += "<p class = 'blogname'>" + blogname +"</p>";
					str += "<p class = 'contents'>"+ contents +"</p>";
					str += "<p class = 'datetime'>"+ datetime +"</p>";
					str += "</div>"
					str += "</a>"
					str += "</div><hr>"					
				});				
				$("#container").html(str);
				var total_count = data.meta.total_count;				
			},
			error:function(){
				console.log("에러");
			}
		});
	}
	
	blogSearch();
</script>
<script>
	$('#next').on('click', ()=>{
		page+=1;
		blogSearch();
		
	})
</script>
<script>
	$('#before').on('click', ()=>{
		page-=1;
		blogSearch();
		
	})
</script>

</body>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
  </body>
</html>