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
<title>포트폴리오 등록하기</title>
<style type="text/css">
#wrap,#reg {
	width: 100%;
}

#wrap {
	margin-bottom: 30px;
}

#wrap .container-port {
	width: 450px;
	height: 600px;
	margin: 50px auto;
}

#reg {
	margin-top: 80px;
	width: 450px;
}

.ptregbtn {
	background-color: #ffffff;
    padding: 0px 0px;
    border-width: 0px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
    font-size: 18px;
    font-weight: bold;
    position: relative;
    display:block; 
    margin: auto;
}

.ptregbtn:before {
    position: absolute;
    left: 0;
    bottom: -4px;
    width: 100%;
    height: 2px;
    background: #EAB543;
    content: "";
}

.ptregbtn:hover {
	color: #EAB543;
}

#regbtn {
	left: 85px;
	bottom: 27px;
}

#canbtn{
	left: -75px;
	
}

#Portfolio_List{
	padding-top : 30px;
	padding-left : 25px;
	width: 450px; 
	height: 250px;
}

#Portfolio_List img {
}

.container-port>h1 {
	position: relative;
}

.container-port>h1:before {
	position: absolute;
    left: 0;
    bottom: -4px;
    width: 100%;
    height: 2px;
    background: #EAB543;
    content: "";
}

.upimginput{
	width: 200px;
}

.upimgbtn{
    border-width: 1px;
    border-style: outset;
    border-color: gray;
    border-image: initial;
    border-radius: 4px;
    font-size: 18px;
    position: relative;
}

</style>

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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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

	<!-- 내용 -->
	<div id="wrap">
		<div class="container-port">
			<h1 style="text-align: center;">포트폴리오 등록</h1>
			<br>
			<div id="Portfolio_List" >
			</div>
			<form id="portfolio-form" enctype="multipart/form-data">
				<div style="margin-top: 5px; margin-left: 100px;">
					<input class="upimginput" type="file" name="pf_img1" id="pf_img1" >
					<!-- 업로드 이미지 타입이 파일이면 배열로 취급, name = 받아올 파일 , id = 제이쿼리내에서 접근 -->
					<!--    <input type="text" name="s_id" placeholder="아이디를 입력하세요."> -->
					<button class="upimgbtn" type="submit">등록</button>
				</div>
				<div id="reg">
					<div style="float: left; width: 100%;">
						<button id="canbtn" class="ptregbtn" type="reset">초기화</button>
						<button id="regbtn" class="ptregbtn" type="button" onclick="location.href='Main.jsp'">완료</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- 내용 끝 -->


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

	<!-- script -->
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajax({
				url : "Portfolio_list_service",
				method : "get",
				dataType : "JSON",
				success : photoList,
				error : function(err) {
					console.log(err);
				}
			});
		});

		var cnt = 0;
		function photoList(data) {
			//alert(data);
			let tmp = "";
			$
					.each(
							data,
							function(index, obj) {
								tmp += "<img class='upimg' width='200px' height='200px' src='upload/"+obj.pf_Img1+"'/>";
							});
			$("#Portfolio_List").html(tmp);
		}

		$('#portfolio-form').submit(function(e) { // 폼에서 전송버튼 누르면 기능 실행
			e.preventDefault(); // submit 기능 막기

			let formData = new FormData(this); // 메모리에 폼 객체를 생성
			formData.append("pf_img1", $("#pf_img1")[0].files[0]);
			$.ajax({
				url : "Portfolio_register_service",
				method : "POST",
				data : formData,
				contentType : false,
				processData : false,
				success : function() {
					//alert(data.result);
					$('#portfolio-form')[0].reset();
					location.href = "Portfolio_reg.jsp";
				},
				error : function(err) {
					console.log(err);
				}
			});
		});
	</script>

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