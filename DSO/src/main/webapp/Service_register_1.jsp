<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가마이페이지</title>
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
<style type="text/css">
label{
font-weight :bold;
font-size: 20px
}
	.col-lg-4{

	height: 100px;
	text-align: center;		
	}
	.inner_box{
	width: 200px;
	height: 80px;
	}

</style>


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<%
    String userName=null;
    if(request.getAttribute("userName")==null){ // 현재 변수명은 안정해져 있으므로 userName은 나중에 변경해야함.
    	userName="GUEST";
    }else{
       userName=(String)request.getAttribute("userName");
    }

%>
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

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
	
	input{
		width: 200px;
		border: 1px solid #ebebeb;

	}
	.btn-input{
		text-align: center;
		margin-top: 30px;
	}
	
	/* 채팅 */
	.listname{ height: 50px;}
	.likeBtn {
	   background : white;
	   border: 0;
	   border-radius: 50px;
	   font-size:  18px;
	}
	.dislikeBtn{
	   background : white;
	   border: 0;
	   border-radius: 50px;
	   font-size: 18px;
	}
	.row {
       margin-top: 10px;
	}
	
	/* 채팅 CSS */
	

	#messageWindow{
		background: black;
		color: greenyellow;
	}
	#inputMessage{
		width:500px;
		height:30px;
		border-radius : 10px 10px 10px 10px;
	}
	#btn-submit{
		background: white;
		width:60px;
		height:30px;
		color:white;
		border:none;
	}
	
	#main-container{
		width:700px;
		height:850px;
		margin:10px;
		display: inline-block;
		border-radius : 10px 10px 10px 10px;	
		padding: 10px;
	}
	#chat-container{
		vertical-align: bottom;
		margin:10px;
		width:800px;
		min-height: 350px;
		max-height: 350px;
		overflow: scroll;
		overflow-x:hidden;
		border-radius : 10px 10px 10px 10px;
	}
	
	.chat{
		font-size: 20px;
		color:black;
		margin: 5px;
		min-height: 20px;
		padding: 5px;
		min-width: 50px;
		text-align: left;
        height:auto;
        word-break : break-all;
        background: #ffffff;
        width:auto;
        display:inline-block;
        border-radius: 10px 10px 10px 10px; 
	}
	
	.notice{
		color:white;
		font-weight: bold;
		border : none;
		text-align: center;
		background-color: #9bbbd4;
		display: block;
	}
	.my-chat{
		text-align: right;
		background: white;
		/* border-radius: 5px 5px 5px 5px; */
	}
	
	#bottom-container{
		margin:auto;
		margin-left: 100px;
	}
	
	.chat-info{
		color:#556677;
		font-size: 10px;
		text-align: right;
		padding: 5px;
		padding-top: 0px;
	}
	
	.chat-box{
		text-align:left;
	}
	.my-chat-box{
		text-align: right;
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
	<!-- 좋아요 스크립트   -->


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
 						<span>상품등록</span>
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
				<div class="col-lg-9 order-1 order-lg-2">
				<div id="main-container" style="border:1px solid #1B9CFC ;">
				<form id="form1" name="form1" action="Service_register_service" method="post" enctype="multipart/form-data">
                            <div  style=>
                            <div class="group-input">
                                <label st>제목</label>  
                                <input type="text" id="service_title" name="service_title" style="border: none;" placeholder="제목을 입력하세요.">                                                
                            </div>
                            <div class="group-input">
                            
                                <label>카테고리 
                                <select  name="service_category" style="width:235px; border: 1px solid #ebebeb;">
										<option>선택해주세요</option>
										<option>웹 · 모바일 기획</option>
										<option>프로그램 · 기타 기획</option>
										<option>홈페이지</option>
										<option>랜딩페이지</option>
										<option>프론트엔드 · 퍼블리싱</option>
										<option>검색 최적화 · SEO</option>
										<option>애널리틱스</option>
										<option>홈페이지 수정 · 유지보수</option>
										<option>쇼핑몰</option>
										<option>쇼핑몰 수정 · 유지보수</option>
										<option>앱</option>
										<option>앱 수정 · 유지보수</option>
										<option>비지니스 애플리케이션</option>
										<option>PC · 웹 프로그램</option>
										<option>백엔드 · 서버</option>
										<option>봇 · 챗봇</option>
										<option>노코드 · 로우코드</option>
										<option>메타버스</option>
										<option>블록체인 · NFT</option>
										<option>데이터 구매 · 구축</option>
										<option>데이터 마이닝 · 크롤링</option>
										<option>데이터 전처리</option>
										<option>데이터 라벨링</option>
										<option>데이터 분석 · 시각화</option>
										<option>인공지능 · 머신러닝</option>
										<option>데이터베이스</option>
										<option>2D · 3D게임</option>
										<option>AR · VR</option>
										<option>하드웨어 · 임베디드</option>
										<option>보안</option>
										<option>QA · 테스트</option>
										<option>컴퓨터 기술지원</option>
										<option>파일변환</option>
										<option>기타</option>
								</select>
								</label>                                                  
                            </div>
                            <div class="group-input">
                                <label>가격</label>  
                                <input type="number" id="service_price" name="service_price"style="border: none;" placeholder="가격을 입력하세요.">                                                 
                            </div>
                            <div class="group-input">
                                <label >설명</label> <br>
                                <textarea style="border:none; background-color: #AFEEEE " rows="5px" cols="92%" id="service_desc" name="service_desc" placeholder="상품의 정보를 입력해주세요."></textarea>                                                 
                            </div>
                            
               				<div class="group-input">
                                <label for="username">요구사항</label><br>
                                <textarea style="border:none; background-color: #AFEEEE " rows="5px" cols="92%" id="service_desc" name="service_desc" placeholder="요구사항을 입력해주세요."></textarea> 
                            </div>
               				<div class="group-input">
                                <label for="username">이미지</label>
                                <div id="imgViewArea" style="margin-top:10px; background-color:; ">
									<img id="imgArea" style="background-color:#; width:200px; height:200px;" onerror="imgAreaError()"/>
									<input type="file" name="service_img" accept="image/*">
								</div> 
                            </div> 
                          	<div class="group-input" style="margin-top: 15px; ">
                          		 <label for="username">포트폴리오</label>
                                 <button style="border: 0.1px solid gray;" type="button" onclick="location.href='Portfolio_register.jsp'" >포트폴리오 등록</button>
                            </div>
                        
	                        <div class="btn-input"> 
	                        	<input type="submit" value="등록">
	                        </div> 
                        </form>
						</div>
					</div>
					
				</div>
					</div>
				</div>
			</div>
	</section>	
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