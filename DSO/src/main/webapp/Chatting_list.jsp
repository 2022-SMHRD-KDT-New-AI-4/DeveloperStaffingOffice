<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의뢰인마이페이지</title>
<%
	Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
	Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
	%>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/mypageliststyle.css" type="text/css" />
<%if(loginS!=null) {%>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<%}else { %>
<link rel="stylesheet" href="css/style.css" type="text/css">
<%} %>
<link rel="stylesheet" href="css/chatbot.css" type="text/css">
<style type="text/css">
	.col-lg-4{
		height: 100px;
		text-align: center;		
	}
	.inner_box{
		width: 200px;
		height: 80px;
	}
	body>section>div>div>div.col-lg-9.order-1.order-lg-2{
		margin: auto;
		
	}
	
	.board {width: 650px; }
	.w70  {width:70px; }
	.w500 {width:100px; }
	.w120 {width:430px; }
	.w100 {width:0px; }
	
</style>



<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery.dd.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</head>
<body>



	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="ht-right">
				<%if (loginC == null && loginS == null) {%>
				<a href="./Login_1.jsp" class="login-panel"><i class="fa fa-user"></i> 로그인</a>
				<%} else if (loginC != null){%>
				<a href="./Mypage_C.jsp" class="login-panel">마이페이지</a> <a
					href="LogoutService" class="login-panel"><i class="fa fa-user"></i>
					로그아웃</a>
				<%} else if (loginS != null){%>
				<a href="./Mypage_R.jsp" class="login-panel">마이페이지</a> <a
					href="LogoutService" class="login-panel"><i class="fa fa-user"></i>
					로그아웃</a>
				<%} %>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="./Main.jsp"> 
							<%if(loginS!=null){ %>
							<img src="img/logo/dsologos.png" alt="">
							<%}else {%>
							<img src="img/logo/dsologoc.png" alt="">
							<%} %>
							</a>
						</div>
					</div>
					<!-- 검색 박스 -->
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<div class="input-group">
								<form action="Search_service" method="post">
								<input type="text" name="searchWord" placeholder="검색어를 입력해주세요" />
								<button type="submit">
									<i class="ti-search"></i>
								</button>
								</form>
							</div>
						</div>
					</div>
					<!-- 검색 박스 끝 -->
					<div class="col-lg-3 text-right col-md-3"></div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>전체 카테고리</span>
						<!-- 카테고리 바 -->
						<ul class="depart-hover">
							<li><a href="ToMenu?menu=1"><h3>UX 기획</h3></a>
								<ul>
									<li><a href="ToMenu?menu=1&smenu=01">웹 · 모바일 기획</a></li>
									<li><a href="ToMenu?menu=1&smenu=02">프로그램 · 기타 기획</a></li>
								</ul> <a href="ToMenu?menu=2"><h3>웹</h3></a>
								<ul>
									<li><a href="ToMenu?menu=2&smenu=01">홈페이지 </a></li>
									<li><a href="ToMenu?menu=2&smenu=02">랜딩페이지</a></li>
									<li><a href="ToMenu?menu=2&smenu=03">프론트엔드 · 퍼블리싱</a></li>
									<li><a href="ToMenu?menu=2&smenu=04">검색 최적화 · SEO</a></li>
									<li><a href="ToMenu?menu=2&smenu=05">애널리틱스</a></li>
									<li><a href="ToMenu?menu=2&smenu=06">홈페이지 수정 · 유지보수</a></li>
								</ul></li>
							<li><a href="ToMenu?menu=3"><h3>커머스</h3></a>
								<ul>
									<li><a href="ToMenu?menu=3&smenu=01">쇼핑몰</a></li>
									<li><a href="ToMenu?menu=3&smenu=02">쇼핑몰 수정 · 유지보수</a></li>
								</ul> <a href="ToMenu?menu=4"><h3>모바일</h3></a>
								<ul>
									<li><a href="ToMenu?menu=4&smenu=01">앱</a></li>
									<li><a href="ToMenu?menu=4&smenu=02">앱 수정 · 유지보수</a></li>
								</ul></li>
							<li><a href="ToMenu?menu=5"><h3>프로그램</h3></a>
								<ul>
									<li><a href="ToMenu?menu=5&smenu=01">비지니스 애플리케이션</a></li>
									<li><a href="ToMenu?menu=5&smenu=02">PC · 웹 프로그램</a></li>
									<li><a href="ToMenu?menu=5&smenu=03">백엔드 · 서버</a></li>
									<li><a href="ToMenu?menu=5&smenu=04">봇 · 챗봇</a></li>
								</ul> <a href="ToMenu?menu=6"><h3>트랜드</h3></a>
								<ul>
									<li><a href="ToMenu?menu=6&smenu=01">노코드 · 로우코드</a></li>
									<li><a href="ToMenu?menu=6&smenu=02">메타버스</a></li>
									<li><a href="ToMenu?menu=6&smenu=03">블록체인 · NFT</a></li>
								</ul></li>
							<li><a href="ToMenu?menu=7"><h3>데이터</h3></a>
								<ul>
									<li><a href="ToMenu?menu=7&smenu=01">데이터 구매 · 구축</a></li>
									<li><a href="ToMenu?menu=7&smenu=02">데이터 마이닝 · 크롤링</a></li>
									<li><a href="ToMenu?menu=7&smenu=03">데이터 전처리</a></li>
									<li><a href="ToMenu?menu=7&smenu=04">데이터 라벨링</a></li>
									<li><a href="ToMenu?menu=7&smenu=05">데이터 분석 · 시각화</a></li>
									<li><a href="ToMenu?menu=7&smenu=06">인공지능 · 머신러닝</a></li>
									<li><a href="ToMenu?menu=7&smenu=07">데이터베이스</a></li>
								</ul></li>
							<li><a href="ToMenu?menu=8"><h3>언리얼</h3></a>
								<ul>
									<li><a href="ToMenu?menu=8&smenu=01">2D · 3D 게임</a></li>
									<li><a href="ToMenu?menu=8&smenu=02">AR · VR</a></li>
								</ul> <a href="ToMenu?menu=9"><h3>기타</h3></a>
								<ul>
									<li><a href="ToMenu?menu=9&smenu=01">하드웨어 · 임베디드</a></li>
									<li><a href="ToMenu?menu=9&smenu=02">보안</a></li>
									<li><a href="ToMenu?menu=9&smenu=03">QA · 테스트</a></li>
									<li><a href="ToMenu?menu=9&smenu=04">컴퓨터 기술지원</a></li>
									<li><a href="ToMenu?menu=9&smenu=05">파일변환</a></li>
									<li><a href="ToMenu?menu=9&smenu=06">기타</a></li>
								</ul></li>
						</ul>
						<!-- 카테고리바 끝 -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
	
	<!-- Breadcrumb Section Begin -->

		<div class="container">
			<div class="row">
				<div class="col-lg-12" style="margin: auto;">
					<div class="breadcrumb-text">
						<a href="Main.jsp"><i class="fa fa-home"></i> Home</a>
						<a href="Mypage_C.jsp"></i> 마이페이지</a>
 						<span>1:1채팅</span>
					</div>
				</div>
			</div>
		</div>

	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->

	<!-- Product Shop Section Begin -->
	<!-- 왼쪽 카테고리바 -->
	<section class="product-shop spad">
		<div class="container">
			<div class="row">

				<div class="filter-widget">
					<h4>마이페이지</h4>
					<ul class="filter-catagories">
						<br>
						<li><a href="Mypage_C.jsp">의뢰내역</a></li>
						<li><a href="Mypageupdate_C.jsp">내 정보관리</a></li>
						<li><a href="likepage.jsp">찜</a></li>
						<li><a href="Chatting_list.jsp">1:1 채팅</a></li>
						<li><a href="Service_register_1.jsp">상품 등록</a></li>
					</ul>
				</div>
				<!-- 왼쪽 카테고리바 끝 -->
				
				<!-- 마이페이지 박스 -->
				<div class="col-lg-9 order-1 order-lg-2" ">
						   <!-- 마이페이지 목록  -->			 
						
						
									<div>
								  	  <!---기본 메뉴--->
									  <ul class="board">
									  	<li class="fl tc w70 title t_line">번호</li>
									  	<li class="fl tc w500 title t_line">의뢰인</li>
									  	<li class="fl tc w120 title t_line" style="text-align: left;">의뢰내용</li>
		
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">1</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인1</li>
									  	<li class="fl tc w120 list t_line lt_line" style="text-align: left;"><a href="Chatting_C.jsp">웹 · 모바일 기획</a></li>
								
									  </ul>
								 </div>
							</div>									

						<!-- 마이페이지 목록끝 -->
					</div>
				</div>
			
	</section>	
	
	
	<!-- ChatBot area -->
	
		<!-- 챗봇 아이콘 클릭시 열림 -->
		<img id ="chatbotImg" src="img/chatbot_main_logo.jpg" alt="chatbot" onclick="change()">
	    <div id = "chatbotArea">
	    
  	    	<% if(loginS != null ){%>
				챗봇 전문가 버전
		    	<iframe id ="chatbotframe" name="chatbotframe" src="chatbot_S.jsp" scolling ="yes"></iframe>
		    	
		    	<!-- 챗봇 닫기 버튼 -->
		    	<button id="closebtn" onclick="change()">✖</button>
		     <% } else {%> 
				<%-- 챗봇 의뢰인 버전 --%>
		     	<iframe id ="chatbotframe" name="chatbotframe" src="chatbot_C.jsp" scolling ="yes"></iframe>
		    	
		    	<!-- 챗봇 닫기 버튼 -->
		    	<button id="closebtn" onclick="change()">✖</button>
- 		     <% } %>
	    	
	    </div>

	
	<!-- 챗봇 열고 닫고 -->	
	<script>
	
			
		function change(){

		    const chatbotImg = document.getElementById('chatbotImg');
		    const chatbotframe = document.getElementById('chatbotframe');
		    const closebtn = document.getElementById('closebtn');
		    

		    if(chatbotframe.style.visibility !== 'visible'){
		                
		    	chatbotframe.style.visibility = 'visible'; 
		    	closebtn.style.visibility = 'visible';
		    	chatbotImg.style.visibility = 'hidden';
		        
		    } else {
		        
		    	chatbotframe.style.visibility = 'hidden';
		    	closebtn.style.visibility = 'hidden';
		    	chatbotImg.style.visibility = 'visible';
		    	

		     }

		}
	
	</script>
	
	<!-- ChatBot area -->
	
 
	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="Main.jsp">
							<%if(loginS!=null) {%>
							<img src="img/logo/dsologosblack.png" alt="">
							<%}else {%>
							<img src="img/logo/dsologoblack.png" alt="">
							<%} %>							
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3-1">
					<div class="footer-left">
						<ul>
							<li>Address: 광주광역시 동구 대의동 10-1</li>
							<li>Phone: 010 - 9806 - 8112</li>
							<li>Email: meenwookim@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-reserved">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="copyright-text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							팀장 : 권선택 | 팀원 : 김민우 류슬기 김대윤 서언종 정현호
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</div>
						<div class="payment-pic">
							<img src="img/payment-method.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->
	
</body>
</html>