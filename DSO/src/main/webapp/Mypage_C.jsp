	
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의뢰인마이페이지</title>

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
<link rel="stylesheet" href="css/mypageliststyle.css" type="text/css" />
<style type="text/css">
	.col-lg-4{

	height: 100px;
	text-align: center;		
	}
	.inner_box{
	width: 200px;
	height: 80px;
	}
	

</style>
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
				<a href="./Mypage_C.jsp" class="login-panel">마이페이지</a> <a
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
								<button type="button" OnClick="location.href ='search_result.jsp'">
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
						<!-- 카테고리 바 -->
						<ul class="depart-hover">
							<li><a href="c1_UX.jsp"><h3>UX 기획</h3></a>
								<ul>
									<li><a href="c1_UX1.jsp">웹 · 모바일 기획</a></li>
									<li><a href="c1_UX2.jsp">프로그램 · 기타 기획</a></li>
								</ul> <a href="c2_Web.jsp"><h3>웹</h3></a>
								<ul>
									<li><a href="c2_Web.jsp">홈페이지 </a></li>
									<li><a href="c2_Web.jsp">랜딩페이지</a></li>
									<li><a href="c2_Web.jsp">프론트엔드 · 퍼블리싱</a></li>
									<li><a href="c2_Web.jsp">검색 최적화 · SEO</a></li>
									<li><a href="c2_Web.jsp">애널리틱스</a></li>
									<li><a href="c2_Web.jsp">홈페이지 수정 · 유지보수</a></li>
								</ul></li>
							<li><a href="c3_Comm.jsp"><h3>커머스</h3></a>
								<ul>
									<li><a href="c3_Comm.jsp">쇼핑몰</a></li>
									<li><a href="c3_Comm.jsp">쇼핑몰 수정 · 유지보수</a></li>
								</ul> <a href="c4_Mob.jsp"><h3>모바일</h3></a>
								<ul>
									<li><a href="c4_Mob.jsp">앱</a></li>
									<li><a href="c4_Mob.jsp">앱 수정 · 유지보수</a></li>
								</ul></li>
							<li><a href="c5_Prog.jsp"><h3>프로그램</h3></a>
								<ul>
									<li><a href="c5_Prog.jsp">비지니스 애플리케이션</a></li>
									<li><a href="c5_Prog.jsp">PC · 웹 프로그램</a></li>
									<li><a href="c5_Prog.jsp">백엔드 · 서버</a></li>
									<li><a href="c5_Prog.jsp">봇 · 챗봇</a></li>
								</ul> <a href="c6_Trend.jsp"><h3>트랜드</h3></a>
								<ul>
									<li><a href="c6_Trend.jsp">노코드 · 로우코드</a></li>
									<li><a href="c6_Trend.jsp">메타버스</a></li>
									<li><a href="c6_Trend.jsp">블록체인 · NFT</a></li>
								</ul></li>
							<li><a href="c7_Data.jsp"><h3>데이터</h3></a>
								<ul>
									<li><a href="c7_Data.jsp">데이터 구매 · 구축</a></li>
									<li><a href="c7_Data.jsp">데이터 마이닝 · 크롤링</a></li>
									<li><a href="c7_Data.jsp">데이터 전처리</a></li>
									<li><a href="c7_Data.jsp">데이터 라벨링</a></li>
									<li><a href="c7_Data.jsp">데이터 분석 · 시각화</a></li>
									<li><a href="c7_Data.jsp">인공지능 · 머신러닝</a></li>
									<li><a href="c7_Data.jsp">데이터베이스</a></li>
								</ul></li>
							<li><a href="c8_Unr.jsp"><h3>언리얼</h3></a>
								<ul>
									<li><a href="c8_Unr.jsp">2D · 3D 게임</a></li>
									<li><a href="c8_Unr.jsp">AR · VR</a></li>
								</ul> <a href="c9_ETC.jsp"><h3>기타</h3></a>
								<ul>
									<li><a href="c9_ETC.jsp">하드웨어 · 임베디드</a></li>
									<li><a href="c9_ETC.jsp">보안</a></li>
									<li><a href="c9_ETC.jsp">QA · 테스트</a></li>
									<li><a href="c9_ETC.jsp">컴퓨터 기술지원</a></li>
									<li><a href="c9_ETC.jsp">파일변환</a></li>
									<li><a href="c9_ETC.jsp">기타</a></li>
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
						<a href="Main.jsp"><i class="fa fa-home"></i> Home</a> <span><a
							href="Mypage_C.jsp"><i class="fa"> </i>마이페이지</a> <span>의뢰내역</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section end -->

	<section class="product-shop spad">
		<div class="container">
			<div class="row">
				<!-- 마이페이지 왼쪽 카테고리바 -->
				<div class="filter-widget" style="padding-top: 0px">
					<h4>마이페이지</h4>
					<ul class="filter-catagories">
						<br>
						<li><a href="Mypage_C.jsp">의뢰내역</a></li>
						<li><a href="Mypageupdate_C.jsp">내 정보관리</a></li>
						<li><a href="#">찜</a></li>
						<li><a href="#">1:1 채팅</a></li>
						<li><a href="#">전문가 등록</a></li>
					</ul>
				</div>
				<!-- 마이페이지 왼쪽 카테고리바 끝 -->
					<!-- 마이페이지 박스 -->
				<div class="col-lg-9 order-1 order-lg-2">
					
					<div class="product-show-option">
						<div class="row">
							<div class="col-lg-7 col-md-7"></div>
						</div>
					</div>
				
			
							
					<div class="product-list">
						<div class="row">
						
							<!-- 마이페이지 목록 한칸 -->
									<!-- 마이페이지 목록 한칸 -->
								<div class="col-lg-4 " style="background-color: white; display : flex;justify-content: center;align-items : center;" >								
									<div style="text-align:center; background-color:#ebf4f5; width: 100px; height: 100px;display : flex;justify-content: center;align-items : center;" >
										<a href="ProductDetail.jsp">구매중</a><span>1</span>	 					
									</div>
								</div>
							<!-- 한칸 끝 -->	
							<!-- 마이페이지 목록 한칸 -->
									<!-- 마이페이지 목록 한칸 -->
								<div class="col-lg-4 " style="background-color: white; display : flex;justify-content: center;align-items : center;" >								
									<div style="text-align:center; background-color:#ebf4f5; width: 100px; height: 100px;display : flex;justify-content: center;align-items : center;" >
										<a href="ProductDetail.jsp">구매확인</a><span>1</span>	 					
									</div>
								</div>		
							<!-- 한칸 끝 -->	
							<!-- 마이페이지 목록 한칸 -->
								<div class="col-lg-4 " style="background-color: white; display : flex;justify-content: center;align-items : center;" >								
									<div style="text-align:center; background-color:#ebf4f5; width: 100px; height: 100px;display : flex;justify-content: center;align-items : center;" >
										<a href="ProductDetail.jsp">완료</a><span>1</span>	 					
									</div>
								</div>	
													<!-- 마이페이지 목록  -->			 
						
								<div style="padding-left: 15px; padding-top: 20px" > 
									<div>
								  	  <!---기본 메뉴--->
									  <ul class="board">
									  	<li class="fl tc w70 title t_line">번호</li>
									  	<li class="fl tc w500 title t_line">의뢰내용</li>
									  	<li class="fl tc w120 title t_line">의뢰인</li>
									  	<li class="fl tc w100 title t_line">진행완료</li>
									  	<li class="fl tc w100 title ">조회수</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">1</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인1</li>
									  	<li class="fl tc w120 list t_line lt_line">웹 · 모바일 기획</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button></li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									  <!--- 리스트 --->
									  <ul class="board">
									  	<li class="fl tc w70 list t_line lt_line">2</li>
									  	<li class="fl tc w500 list t_line lt_line">의뢰인2</li>
									  	<li class="fl tc w120 list t_line lt_line">데이터 마이닝 · 크롤링</li>
									  	<li class="fl tc w100 list t_line lt_line"><button class="listbtn">완료</button> </li>
									  	<li class="fl tc w100 list  lt_line">1</li>
									  </ul>
									 </div>
							</div>									

						<!-- 마이페이지 목록끝 -->
							<!-- 한칸 끝 -->						
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
							<a href="Main.jsp"><img src="img/logo/dsologoblack.png"
								alt=""></a>
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