<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DSO.model.Service_info_pr_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지(큰 카테고리)</title>

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
<style type="text/css">
.likeBtn {
	background: white;
	border: 0;
	border-radius: 50px;
	font-size: 18px;
}

.dislikeBtn {
	background: white;
	border: 0;
	border-radius: 50px;
	font-size: 18px;
}

.product-price {
	margin-left: 25px;
}
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
	<%
	ArrayList<Service_info_pr_VO> cate = (ArrayList<Service_info_pr_VO>) session.getAttribute("cate");
	String cateBigNum = (String)session.getAttribute("cateBigNum");
	%>

	<!-- 좋아요 스크립트   -->
	<script type="text/javascript">
		$(document).on('click', 'button[class=likeBtn]', function() {
			$(this).text('🧡');
			$('.likeBtn+span').text(Number($('.likeBtn+span').text()) + 1);
			//$('.likeBtn+span') <-계층선택자 likeBtn에붙어있는 span태그도 같이 적용
			//$(this).removeAttr('class');  -> (class)객체를 삭제  
			$(this).removeClass('likeBtn'); // -> 객체
			$(this).attr('class', 'dislikeBtn');
		});
		$(document).on(
				'click',
				'.dislikeBtn',
				function() {
					$(this).text('🤍');
					$('.dislikeBtn+span').text(
							Number($('.dislikeBtn+span').text()) - 1);
					$(this).removeAttr('class');
					$(this).attr('class', 'likeBtn');
				});
	</script>

	<!-- 좋아요 스크립트 -->
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="ht-right">
				<a href="./Login.jsp" class="login-panel"><i class="fa fa-user"></i>
					로그인</a>

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
								<button type="button"
									OnClick="location.href ='search_result.jsp'">
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
						<span>
						<%if(cateBigNum.equals("1")) {%>
						UX기획
						<%}else if(cateBigNum.equals("2")) {%>
						웹
						<%}else if(cateBigNum.equals("3")) {%>
						커머스
						<%}else if(cateBigNum.equals("4")) {%>
						모바일
						<%}else if(cateBigNum.equals("5")) {%>
						프로그램
						<%}else if(cateBigNum.equals("6")) {%>
						트랜드
						<%}else if(cateBigNum.equals("7")) {%>
						데이터
						<%}else if(cateBigNum.equals("8")) {%>
						언리얼
						<%}else if(cateBigNum.equals("9")) {%>
						기타
						<%} %>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad">
		<div class="container">
			<div class="row">

				<!-- 왼쪽 카테고리바 -->
				<div class="filter-widget" style="padding-top: 0px">
					<a href="ToMenu?menu=1"><h4>UX 기획</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=1&smenu=01">웹 · 모바일 기획</a></li>
						<li><a href="ToMenu?menu=1&smenu=02">프로그램 · 기타 기획</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=2"><h4>웹</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=2&smenu=01">홈페이지 </a></li>
						<li><a href="ToMenu?menu=2&smenu=02">랜딩페이지</a></li>
						<li><a href="ToMenu?menu=2&smenu=03">프론트엔드 · 퍼블리싱</a></li>
						<li><a href="ToMenu?menu=2&smenu=04">검색 최적화 · SEO</a></li>
						<li><a href="ToMenu?menu=2&smenu=05">애널리틱스</a></li>
						<li><a href="ToMenu?menu=2&smenu=06">홈페이지 수정 · 유지보수</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=3"><h4>커머스</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=3&smenu=01">쇼핑몰</a></li>
						<li><a href="ToMenu?menu=3&smenu=02">쇼핑몰 수정 · 유지보수</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=4"><h4>모바일</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=4&smenu=01">앱</a></li>
						<li><a href="ToMenu?menu=4&smenu=02">앱 수정 · 유지보수</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=5"><h4>프로그램</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=5&smenu=01">비지니스 애플리케이션</a></li>
						<li><a href="ToMenu?menu=5&smenu=02">PC · 웹 프로그램</a></li>
						<li><a href="ToMenu?menu=5&smenu=03">백엔드 · 서버</a></li>
						<li><a href="ToMenu?menu=5&smenu=04">봇 · 챗봇</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=6"><h4>트랜드</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=6&smenu=01">노코드 · 로우코드</a></li>
						<li><a href="ToMenu?menu=6&smenu=02">메타버스</a></li>
						<li><a href="ToMenu?menu=6&smenu=03">블록체인 · NFT</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=7"><h4>데이터</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=7&smenu=01">데이터 구매 · 구축</a></li>
						<li><a href="ToMenu?menu=7&smenu=02">데이터 마이닝 · 크롤링</a></li>
						<li><a href="ToMenu?menu=7&smenu=03">데이터 전처리</a></li>
						<li><a href="ToMenu?menu=7&smenu=04">데이터 라벨링</a></li>
						<li><a href="ToMenu?menu=7&smenu=05">데이터 분석 · 시각화</a></li>
						<li><a href="ToMenu?menu=7&smenu=06">인공지능 · 머신러닝</a></li>
						<li><a href="ToMenu?menu=7&smenu=07">데이터베이스</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=8"><h4>언리얼</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=8&smenu=01">2D · 3D 게임</a></li>
						<li><a href="ToMenu?menu=8&smenu=02">AR · VR</a></li>
					</ul>
					<BR> <a href="ToMenu?menu=9"><h4>기타</h4></a>
					<ul class="filter-catagories">
						<li><a href="ToMenu?menu=9&smenu=01">하드웨어 · 임베디드</a></li>
						<li><a href="ToMenu?menu=9&smenu=02">보안</a></li>
						<li><a href="ToMenu?menu=9&smenu=03">QA · 테스트</a></li>
						<li><a href="ToMenu?menu=9&smenu=04">컴퓨터 기술지원</a></li>
						<li><a href="ToMenu?menu=9&smenu=05">파일변환</a></li>
						<li><a href="ToMenu?menu=9&smenu=06">기타</a></li>
					</ul>
				</div>
				<!-- 왼쪽 카테고리바 끝 -->

				<!-- 상품 목록 -->
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="product-show-option">
						<div class="row">
							<div class="col-lg-7 col-md-7"></div>
						</div>
					</div>
					<div class="product-list">
						<div class="row">
							
							<!-- 상품 한칸 -->
							<% for(int i=0;i<cate.size();i++) {%>
							<div class="col-lg-4 col-sm-6">
								<div class="product-item">
									<div class="pi-pic">
										<a href="ProductDetail.jsp?seq=<%=cate.get(i).getService_seq()%>"> <img src="img/pl/pl2.png"
											alt=""></a>
										<ul>
											<li class="quick-view"><a href="ProductDetail.jsp?seq=<%=cate.get(i).getService_seq()%>">상품
													상세 정보</a></li>
										</ul>
									</div>
									<div class="pi-text">
										<div class="catagory-name">
										
											<%if(cate.get(i).getService_categorynum1().equals("1")&&cate.get(i).getService_categorynum2().equals("01")){%>
												웹 · 모바일 기획
											<% } else if(cate.get(i).getService_categorynum1().equals("1")&&cate.get(i).getService_categorynum2().equals("02")){%>
												프로그램 · 기타 기획
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("01")){%>
												홈페이지
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("02")){%>
												랜딩페이지
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("03")){%>
												프론트엔드 · 퍼블리싱
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("04")){%>
												검색 최적화 · SEO
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("05")){%>
												애널리틱스
											<% } else if(cate.get(i).getService_categorynum1().equals("2")&&cate.get(i).getService_categorynum2().equals("06")){%>
												홈페이지 수정 · 유지보수
											<% } else if(cate.get(i).getService_categorynum1().equals("3")&&cate.get(i).getService_categorynum2().equals("01")){%>
												쇼핑몰
											<% } else if(cate.get(i).getService_categorynum1().equals("3")&&cate.get(i).getService_categorynum2().equals("02")){%>
												쇼핑몰 수정 · 유지보수
											<% } else if(cate.get(i).getService_categorynum1().equals("4")&&cate.get(i).getService_categorynum2().equals("01")){%>
												앱
											<% } else if(cate.get(i).getService_categorynum1().equals("4")&&cate.get(i).getService_categorynum2().equals("02")){%>
												앱 수정 · 유지보수
											<% } else if(cate.get(i).getService_categorynum1().equals("5")&&cate.get(i).getService_categorynum2().equals("01")){%>
												비지니스 애플리케이션
											<% } else if(cate.get(i).getService_categorynum1().equals("5")&&cate.get(i).getService_categorynum2().equals("02")){%>
												PC · 웹 프로그램
											<% } else if(cate.get(i).getService_categorynum1().equals("5")&&cate.get(i).getService_categorynum2().equals("03")){%>
												백엔드 · 서버
											<% } else if(cate.get(i).getService_categorynum1().equals("5")&&cate.get(i).getService_categorynum2().equals("04")){%>
												봇 · 챗봇
											<% } else if(cate.get(i).getService_categorynum1().equals("6")&&cate.get(i).getService_categorynum2().equals("01")){%>
												노코드 · 로우코드
											<% } else if(cate.get(i).getService_categorynum1().equals("6")&&cate.get(i).getService_categorynum2().equals("02")){%>
												메타버스
											<% } else if(cate.get(i).getService_categorynum1().equals("6")&&cate.get(i).getService_categorynum2().equals("03")){%>
												블록체인 · NFT
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("01")){%>
												데이터 구매 · 구축
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("02")){%>
												데이터 마이닝 · 크롤링
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("03")){%>
												데이터 전처리
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("04")){%>
												데이터 라벨링
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("05")){%>
												데이터 분석 · 시각화
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("06")){%>
												인공지능 · 머신러닝
											<% } else if(cate.get(i).getService_categorynum1().equals("7")&&cate.get(i).getService_categorynum2().equals("07")){%>
												데이터베이스
											<% } else if(cate.get(i).getService_categorynum1().equals("8")&&cate.get(i).getService_categorynum2().equals("01")){%>
												2D · 3D 게임
											<% } else if(cate.get(i).getService_categorynum1().equals("8")&&cate.get(i).getService_categorynum2().equals("02")){%>
												AR · VR
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("01")){%>
												하드웨어 · 임베디드
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("02")){%>
												보안
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("03")){%>
												QA · 테스트
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("04")){%>
												컴퓨터 기술지원
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("05")){%>
												파일변환
											<% } else if(cate.get(i).getService_categorynum1().equals("9")&&cate.get(i).getService_categorynum2().equals("06")){%>
												기타
											<% } %>
										
										</div>
											<h4><%=cate.get(i).getService_title() %></h4>
										<div class="product-price">
											<%=cate.get(i).getService_price()%>원
											<button class="likeBtn">🤍</button>
										</div>
									</div>
								</div>
							</div>
							<%} %>
							<!-- 상품 한칸 끝 -->

						</div>
					</div>
				</div>
				<!-- 상품 목록 끝 -->
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


</body>
</html>