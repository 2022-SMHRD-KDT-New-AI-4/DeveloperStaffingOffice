<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>상품 상세 페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

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
				<a href="./Login.jsp" class="login-panel">마이페이지</a> <a
					href="./Login.jsp" class="login-panel"><i class="fa fa-user"></i>
					로그아웃</a>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="./Main.jsp"> <img src="img/logo/dsologoc.png" alt="">
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
					<div class="col-lg-3 text-right col-md-3"></div>
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
								<h3>UX 기획</h3>
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



	<!-- Product Shop Section Begin -->
	<section class="product-shop spad page-details">
		<div class="container">
			<div class="row">
				<div class="filter-widget" style="padding-top: 0px">
					<h4>UX 기획</h4>
					<ul class="filter-catagories">
						<li><a href="c1_UX1.jsp">웹 · 모바일 기획</a></li>
						<li><a href="c1_UX2.jsp">프로그램 · 기타 기획</a></li>
					</ul>
					<BR>
					<h4>웹</h4>
					<ul class="filter-catagories">
						<li><a href="WEB1.jsp">홈페이지 </a></li>
						<li><a href="WEB1.jsp">랜딩페이지</a></li>
						<li><a href="WEB2.jsp">프론트엔드 · 퍼블리싱</a></li>
						<li><a href="WEB3.jsp">검색 최적화 · SEO</a></li>
						<li><a href="WEB4.jsp">애널리틱스</a></li>
						<li><a href="WEB5.jsp">홈페이지 수정 · 유지보수</a></li>
					</ul>
					<BR>
					<h4>커머스</h4>
					<ul class="filter-catagories">
						<li><a href="property-1.html">쇼핑몰</a></li>
						<li><a href="property-2.html">쇼핑몰 수정 · 유지보수</a></li>
					</ul>
					<BR>
					<h4>프로그램</h4>
					<ul class="filter-catagories">
						<li><a href="submit-property.html">비지니스 애플리케이션</a></li>
						<li><a href="submit-property.html">PC · 웹 프로그램</a></li>
						<li><a href="submit-property.html">백엔드 · 서버</a></li>
						<li><a href="submit-property.html">봇 · 챗봇</a></li>
					</ul>
					<BR>
					<h4>트랜드</h4>
					<ul class="filter-catagories">
						<li><a href="submit-property.html">노코드 · 로우코드</a></li>
						<li><a href="submit-property.html">메타버스</a></li>
						<li><a href="submit-property.html">블록체인 · NFT</a></li>
					</ul>
					<BR>
					<h4>데이터</h4>
					<ul class="filter-catagories">
						<li><a href="submit-property.html">데이터 구매 · 구축</a></li>
						<li><a href="submit-property.html">데이터 마이닝 · 크롤링</a></li>
						<li><a href="submit-property.html">데이터 전처리</a></li>
						<li><a href="submit-property.html">데이터 라벨링</a></li>
						<li><a href="submit-property.html">데이터 분석 · 시각화</a></li>
						<li><a href="submit-property.html">인공지능 · 머신러닝</a></li>
						<li><a href="submit-property.html">데이터베이스</a></li>
					</ul>
					<BR>
					<h4>언리얼</h4>
					<ul class="filter-catagories">
						<li><a href="submit-property.html">2D · 3D 게임</a></li>
						<li><a href="submit-property.html">AR · VR</a></li>
					</ul>
					<BR>
					<h4>기타</h4>
					<ul class="filter-catagories">
						<li><a href="submit-property.html">하드웨어 · 임베디드</a></li>
						<li><a href="submit-property.html">보안</a></li>
						<li><a href="submit-property.html">QA · 테스트</a></li>
						<li><a href="submit-property.html">컴퓨터 기술지원</a></li>
						<li><a href="submit-property.html">파일변환</a></li>
						<li><a href="submit-property.html">기타</a></li>
					</ul>
				</div>
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-6">
							<div>
								<img class="product-big-img" src="img/pl/pl1.png" alt="">
							</div>
							<div class="product-thumbs">
								<div class="product-thumbs-track ps-slider owl-carousel">
									<div class="pt active" data-imgbigurl="img/pl/pl1.png">
										<img src="img/pl/pl1.png" alt="">
									</div>
									<div class="pt" data-imgbigurl="img/pl/pl2.png">
										<img src="img/pl/pl2.png" alt="">
									</div>
									<div class="pt" data-imgbigurl="img/pl/pl3.png">
										<img src="img/pl/pl3.png" alt="">
									</div>
									<div class="pt" data-imgbigurl="img/pl/pl4.png">
										<img src="img/pl/pl4.png" alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<span>김닝우</span>
									<h3>UX 기획</h3>
									<a href="#" class="heart-icon"><i class="icon_heart_alt"></i></a>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i> <span>(4)</span>
								</div>
								<div class="pd-desc">
									<p>UX 기획</p>
									<h4>
										1,000 원 <span></span>
									</h4>
								</div>
								<div class="quantity">
									<a href= "http://www.naver.com" class="primary-btn pd-cart">전문가와 대화</a>
								</div>
								<ul class="pd-tags">
									<li><span>카테고리</span>: UX 기획</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="product-tab">
						<div class="tab-item">
							<ul class="nav" role="tablist">
								<li><a class="active" data-toggle="tab" href="#tab-1"
									role="tab">포트폴리오</a></li>
								<li><a data-toggle="tab" href="#tab-2" role="tab">서비스
										설명 및 의뢰인 준비사항</a></li>
								<li><a data-toggle="tab" href="#tab-3" role="tab">리뷰</a></li>
							</ul>
						</div>
						<div class="tab-item-content">
							<div class="tab-content">
								<div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
									<!-- 포트폴리오 탭 -->
									<div class="product-content">
										<div class="row">
											<div class="col-lg-5">
												<a href="https://ovenapp.io/view/STZmH63UtKq1j4KX0aqzJO3czG6I69Ba/"><img src="img/pt/pt1.jpg"
													alt=""></a>
												<h5 style='text-align: center'>
													<br>포트폴리오 1
												</h5>
											</div>
											<div class="col-lg-5">
												<a href="https://ovenapp.io/view/STZmH63UtKq1j4KX0aqzJO3czG6I69Ba/"><img src="img/pt/pt2.jpg"
													alt=""></a>
												<h5 style='text-align: center'>
													<br>포트폴리오 2
												</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-2" role="tabpanel">
									<!-- 서비스 설명 및 의뢰인 준비사항 탭-->
									<div class="specification-table">
										<div class="col-lg-7">
											<h5>서비스 설명</h5>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in 
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in</p>
											<h5>의뢰인 준비사항</h5>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in
												Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat. Duis aute irure dolor in</p>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="tab-3" role="tabpanel">
								<!-- 리뷰 탭 -->
									<div class="customer-review-option">
										<h4>2 Comments</h4>
										<div class="comment-option">
											<div class="co-item">
												<div class="avatar-pic">
													<img src="img/product-single/avatar-1.png" alt="">
												</div>
												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Brandon Kelley <span>27 Aug 2019</span>
													</h5>
													<div class="at-reply">Good !</div>
												</div>
											</div>
											<div class="co-item">
												<div class="avatar-pic">
													<img src="img/product-single/avatar-2.png" alt="">
												</div>
												<div class="avatar-text">
													<div class="at-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Roy Banks <span>27 Aug 2019</span>
													</h5>
													<div class="at-reply">Nice !</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer-left">
						<div class="footer-logo">
							<a href="Main.jsp"><img src="img/logo/dsologoblack.png" alt=""></a>
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