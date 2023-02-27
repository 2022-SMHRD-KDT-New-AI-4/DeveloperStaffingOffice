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
<style type="text/css">
.loginbtnCR{
	padding-left: 20%
}
</style>
<title>개발자 인력 사무소</title>

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
<link rel="stylesheet" href="css/style.css" type="text/css">
<title>개발자 인력 사무소</title>
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
				<!-- <a href="./Login.jsp" class="login-panel"><i class="fa fa-user"></i> 로그인</a>  -->
				<a href="./Login.jsp" class="login-panel">마이페이지</a>
				<a href="./Login.jsp" class="login-panel"><i class="fa fa-user"></i> 로그아웃</a>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="./Main.jsp"> <img src="img/dsologoc.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">
						<div class="advanced-search">
							<div class="input-group">
								<input type="text" placeholder="검색어를 입력해주세요">
								<button type="button">
									<i class="ti-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-lg-3 text-right col-md-3">
						
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>전체 카테고리</span>
						<ul class="depart-hover">
							<li>
								<h3>UX기획</h3>
								<ul>
									<li><a href="c1_UX1.jsp">웹 · 모바일 기획</a></li>
									<li><a href="c1_UX2.jsp">프로그램 · 기타 기획</a></li>
								</ul>
								<h3>웹</h3>
								<ul>
									<li><a href="#">홈페이지 </a></li>
									<li><a href="#">랜딩페이지</a></li>
									<li><a href="#">프론트엔드 · 퍼블리싱</a></li>
									<li><a href="#">검색 최적화 · SEO</a></li>
									<li><a href="#">애널리틱스</a></li>
									<li><a href="#">홈페이지 수정 · 유지보수</a></li>
								</ul>
							</li>
							<li>
								<h3>커머스</h3>
								<ul>
									<li><a href="#">쇼핑몰</a></li>
									<li><a href="#">쇼핑몰 수정 · 유지보수</a></li>
								</ul>
								<h3>모바일</h3>
								<ul>
									<li><a href="#">앱</a></li>
									<li><a href="#">앱 수정 · 유지보수</a></li>
								</ul>
							</li>
							<li>
								<h3>프로그램</h3>
								<ul>
									<li><a href="#">비지니스 애플리케이션</a></li>
									<li><a href="#">PC · 웹 프로그램</a></li>
									<li><a href="#">백엔드 · 서버</a></li>
									<li><a href="#">봇 · 챗봇</a></li>
								</ul>
								<h3>트랜드</h3>
								<ul>
									<li><a href="#">노코드 · 로우코드</a></li>
									<li><a href="#">메타버스</a></li>
									<li><a href="#">블록체인 · NFT</a></li>
								</ul>
							</li>
							<li>
								<h3>데이터</h3>
								<ul>
									<li><a href="#">데이터 구매 · 구축</a></li>
									<li><a href="#">데이터 마이닝 · 크롤링</a></li>
									<li><a href="#">데이터 전처리</a></li>
									<li><a href="#">데이터 라벨링</a></li>
									<li><a href="#">데이터 분석 · 시각화</a></li>
									<li><a href="#">인공지능 · 머신러닝</a></li>
									<li><a href="#">데이터베이스</a></li>
								</ul>
							</li>
							<li>
								<h3>언리얼</h3>
								<ul>
									<li><a href="#">2D · 3D 게임</a></li>
									<li><a href="#">AR · VR</a></li>
								</ul>
								<h3>기타</h3>
								<ul>
									<li><a href="#">하드웨어 · 임베디드</a></li>
									<li><a href="#">보안</a></li>
									<li><a href="#">QA · 테스트</a></li>
									<li><a href="#">컴퓨터 기술지원</a></li>
									<li><a href="#">파일변환</a></li>
									<li><a href="#">기타</a></li>
								</ul>
							</li>
						</ul>
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
                        <span>Login</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

<%
////loginM 키값이 지정되어있는 세션 값
Client_register_VO loginM =(Client_register_VO)session.getAttribute("loginM"); 
%>

  <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>회원가입</h2>
                        <form action="Client_Login_service" method="post">

                            <div class=loginbtnCR>
							<button type="button" onclick="location.href='join_C.jsp'"class="site-btn ">의뢰인회원가입</button>
                            <button type="button"onclick="location.href='join_R.jsp'" class="site-btn" style="background-color: #1B9CFC">전문가회원가입</button>                            
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->


	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="Main.jsp"><img src="img/dsologoblack.png" alt=""></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3-1">
					<div class="footer-left">
						<ul>
							<li>Address: 60-49 Road 11378 New York</li>
							<li>Phone: +65 11.188.888</li>
							<li>Email: hello.colorlib@gmail.com</li>
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
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
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