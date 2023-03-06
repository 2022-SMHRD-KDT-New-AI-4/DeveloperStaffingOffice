<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="javax.security.auth.spi.LoginModule"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>의뢰인정보수정</title>
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

<%if(loginS!=null) {%>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<%}else { %>
<link rel="stylesheet" href="css/style.css" type="text/css">
<%} %>
<title>개발자 인력 사무소</title>
<style type="text/css">
	.main-container{
		width:820px;
		height:420px;
		margin:10px;
		display: inline-block;
		border-radius : 10px 10px 10px 10px;	
	}
	
	#service_price{
		display: inline;
    	height: 35px;
    	width: 80px;
   		margin-left: 5px;
   		padding-left: 10px;
  		padding-right: 2px;
	}
	
	div.group-input>textarea{
		width: 100%;
		border: 1px solid #ebebeb;
		padding: 4px 4px 4px 4px;
	}
	
	body > div.register-login-section.spad > div > div > div.col-lg-6.offset-lg-3 {
		margin-left: 200px;
	}
	
	body > div.register-login-section.spad > div > div > div.col-lg-6.offset-lg-3 > div > h2 {
		position: relative;
		display: inline;
   		margin-left: 39.91%;
	}
	
	body > div.register-login-section.spad > div > div > div.col-lg-6.offset-lg-3 > div > h2:before {
		position: absolute;
		left: 0;
		bottom: -4px;
		width: 100%;
		height: 2px;
		background: #1B9CFC;
		content: "";
	}
	
	
	#form1 > input[type=submit] {
		position: absolute;
    	right: 15px;
	}
	
	#service_img {
		display: block;
		border: none;
  	  	padding-left: 5px;
    	margin-top: 10px;
	}
	
	#imgViewArea > label {
		display: inline;
	}
	
	
	#form1 > div:nth-child(1) > label {
		display: inline;
	}
	
	#title {
		margin-bottom: 8px;
	}
	
	</style>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
		<!-- 로그인 마이페이지 -->
			<div class="ht-right">
				<%if (loginC == null && loginS == null) {%>
				<a href="./Join_1.jsp" class="login-panel">회원 가입</a>
				<a href="./Login_1.jsp" class="login-panel"><i class="fa fa-user"></i> 로그인</a>
				<%} else {%>
				<a href="./Mypage_C.jsp" class="login-panel">마이페이지</a> <a
					href="LogoutService" class="login-panel"><i class="fa fa-user"></i>
					로그아웃</a>
				<%} %>
			</div>
		<!-- 로그인 마이페이지 끝 -->
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
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="Main.jsp"><i class="fa fa-home"></i> Home</a>
                        <a href="Mypage_C.jsp"><i class="fa"> </i>마이페이지</a> 
                        <span>상품등록</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
            <!-- 마이페이지 왼쪽 카테고리바 -->
				<div class="filter-widget" style="padding-top: 0px">
					<h4>마이페이지</h4>
					<ul class="filter-catagories">
						<li><a href="Mypage_C.jsp">의뢰내역</a></li>
						<li><a href="Mypageupdate_C.jsp">내 정보 수정</a></li>
						<li><a href="ToLike">찜 목록</a></li>
						<li><a href="Chatting_list.jsp">1:1 채팅 목록</a></li>
						<%if(loginS!=null) {%>
						<li><a href="Service_register_2.jsp">상품 등록</a></li>
						<%} %>
					</ul>
				</div>
				<!-- 마이페이지 왼쪽 카테고리바 끝 -->
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                    
                       <h2>상품등록</h2>         
                      <form id="form1" name="form1" action="Service_register_service" method="post" enctype="multipart/form-data">
                            <div class="group-input">
								<label id="title">제목</label>  
                                <input type="text" id="service_title" name="service_title">     
							</div> 
                            <div class="group-input">
                            
                                <label style="display:inline;">카테고리  &nbsp;&nbsp;</label>
                                <select id="service_category" name="service_category" style="width:200px;">
										<option>선택해주세요</option>
										<option value="1,01">웹 · 모바일 기획</option>
										<option value="1,02">프로그램 · 기타 기획</option>
										<option value="2,01">홈페이지</option>
										<option value="2,02">랜딩페이지</option>
										<option value="2,03">프론트엔드 · 퍼블리싱</option>
										<option value="2,04">검색 최적화 · SEO</option>
										<option value="2,05">애널리틱스</option>
										<option value="2,06">홈페이지 수정 · 유지보수</option>
										<option value="3,01">쇼핑몰</option>
										<option value="3,02">쇼핑몰 수정 · 유지보수</option>
										<option value="4,01">앱</option>
										<option value="4,02">앱 수정 · 유지보수</option>
										<option value="5,01">비지니스 애플리케이션</option>
										<option value="5,02">PC · 웹 프로그램</option>
										<option value="5,03">백엔드 · 서버</option>
										<option value="5,04">봇 · 챗봇</option>
										<option value="6,01">노코드 · 로우코드</option>
										<option value="6,02">메타버스</option>
										<option value="6,03">블록체인 · NFT</option>
										<option value="7,01">데이터 구매 · 구축</option>
										<option value="7,02">데이터 마이닝 · 크롤링</option>
										<option value="7,03">데이터 전처리</option>
										<option value="7,04">데이터 라벨링</option>
										<option value="7,05">데이터 분석 · 시각화</option>
										<option value="7,06">인공지능 · 머신러닝</option>
										<option value="7,07">데이터베이스</option>
										<option value="8,01">2D · 3D게임</option>
										<option value="8,02">AR · VR</option>
										<option value="9,01">하드웨어 · 임베디드</option>
										<option value="9,02">보안</option>
										<option value="9,03">QA · 테스트</option>
										<option value="9,04">컴퓨터 기술지원</option>
										<option value="9,05">파일변환</option>
										<option value="9,06">기타</option>
								</select>
								<label style="display:inline; margin-left: 120px;">가격</label>  
                                <input style="text-align:right" type="number" id="service_price" name="service_price">  
                                <label style="display:inline;">원</label>                                                  
                            </div>
                            <div class="group-input" style="width: 270px; display: inline-block;">
                                <label for="username">이미지</label>
                                <div id="imgViewArea" style="margin-top:10px;">
									<img id="imgArea" style="width:200px; height:200px;" onerror="imgAreaError()"/>
									<input type="file" name="service_img" id="service_img" accept="image/*">
								</div> 
                            </div> 
                            <div class="group-input" style="width: 270px; display: inline-block; position: relative; bottom: 210px;">
                            	<label>포트폴리오</label>
								<button type="button" onclick="location.href='Portfolio_reg.jsp'">포트폴리오 등록</button>
							</div>
                            <div class="group-input">
                                <label >설명</label>  
                                <textarea rows="10px" cols="74px" id="service_desc" name="service_desc" placeholder="여기에 입력하세요."></textarea>                                                 
                            </div>
                            
               				<div class="group-input">
                                <label for="username">요구사항</label>
                                <textarea rows="10px" cols="50px" id="service_requisite" name="service_requisite"></textarea> 
                            </div>
                          <input type="submit" value="등록">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <script type="text/javascript" >
	function readURL(input){
		if(input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
					$('#imgArea').attr('src',e.target.result);	
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$(":input[name='service_img']").change(function() {
		if($(":input[name='service_img']").val()==''){
				$('#imgArea').attr('src','');
		}
		$('#imgViewArea').css({'display':''});
		readURL(this);
	});
	
	function imgAreaError(){
			$('#imgViewArea').css({'display':'none'});
	}
</script>


<script type="text/javascript">

	$(document).ready(function(){
		//서비스 등록 유효성 검사
		$("#addBtn").click(function(){}
		var service_title = $("#service_title").val();
		var service_category = $("#service_category").val();
		var service_price = $("#service_price").val();
		var service_desc = $("#service_desc").val();
		var service_requisite = $("#service_requisite").val();
		var service_img = $("#service_img").val();
		
		if(service_title == ""){
			alert("제목을 입력해주세요")		
			service_title.focus();
		}else if(service_category == ""){
			alert("카테고리를 선택해주세요")
			service_category.focus();
		}else if(service_price == ""){
			alert("가격을 입력해주세요")
			service_price.focus();
		}else if(service_desc == ""){
			alert("설명란을 작성해주세요")
			service_desc.focus();
		}else if(service_requisite == ""){
			alert("요구사항을 입력해주세요")
			service_requisite.focus();
		}else if(service_img == ""){
			alert("이미지를 등록해주세요")
			service_img.focus();
		}
	});

	});
</script>
  
    <!-- Register Form Section End -->

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
</body>
</html>

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
</body>
</html>