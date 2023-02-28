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
<style type="text/css">
	.listname{ height: 50px;}
button{
   background-color: rgb(242, 212, 242);
   border: 0;
   border-radius: 50px;
   color: purple;
	}
.shopping-cart {padding-top: 0px;}

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
						<a href="Main.jsp"><i class="fa fa-home"></i> Home</a>
 						<span>마이페이지</span>
					</div>
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

				<div class="filter-widget" style="padding-top: 0px">
					<h4>마이페이지</h4>
					<ul class="filter-catagories">
						<br>
						<li><a href="#">의뢰내역</a></li>
						<li><a href="Mypageupdate_C.jsp">내 정보관리</a></li>
						<li><a href="#">찜</a></li>
						<li><a href="#">1:1 채팅</a></li>
						<li><a href="#">전문가 등록</a></li>
					</ul>
				</div>
					<!-- 마이페이지 박스 -->
				<div class="col-lg-9 order-1 order-lg-2">
					
					<div class="product-show-option">
						<div class="row">
							<div class="col-lg-7 col-md-7"></div>
						</div>
					</div>
				
			
							
					<div class="product-list">
						<div class="row">
						
				
<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">

			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->
   <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cart-table">
                        <table>
                            <thead>
                                <tr>
                                    <th colspan="5">찜 목록</th>                                
                                </tr>
                            </thead>
                            <tbody>
                           	<!-- 찜목록 한줄  -->
                                <tr>
                                    <td class="cart-pic first-row"><img src="img/pl/pl1.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl3.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl4.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl2.png" alt=""></td>
                                    
                                </tr>

                                <tr class="listname">
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>                               
                               <!--찜 목록 한줄 끝  -->    
                                                          	<!-- 찜목록 한줄  -->
                                <tr>
                                    <td class="cart-pic first-row"><img src="img/pl/pl1.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl3.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl4.png" alt=""></td>
                                    <td class="cart-pic first-row"><img src="img/pl/pl2.png" alt=""></td>
                                    
                                </tr>

                                <tr class="listname">
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>
                                    <td style="text-align: center;">UX 기획(상품 제목)<button class="likeBtn">🧡</button></td>                               
                               <!--찜 목록 한줄 끝  -->   
                      
                            </tbody>
                        </table>
                    </div>                
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->
  <script type="text/javascript">

$(document).on('click', 'button[class=likeBtn]', function(){
    $(this).text('🤍');
    $('.likeBtn+span').text(Number($('.likeBtn+span').text())+1);  
    //$('.likeBtn+span') <-계층선택자 likeBtn에붙어있는 span태그도 같이 적용
    //$(this).removeAttr('class');  -> (class)객체를 삭제  
    $(this).removeClass('likeBtn');    // -> 객체
    $(this).attr('class','dislikeBtn');
 });
 $(document).on('click', '.dislikeBtn', function(){
    $(this).text('🧡');
    $('.dislikeBtn+span').text(Number($('.dislikeBtn+span').text())-1);
    $(this).removeAttr('class');
    $(this).attr('class','likeBtn');
 });
</script>  

	<!-- Product Shop Section End -->	
						</div>											
					</div>					
				</div>
			</div>
	
	</section>	 
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