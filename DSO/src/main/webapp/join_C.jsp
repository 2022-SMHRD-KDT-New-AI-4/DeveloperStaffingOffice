<%@page import="DSO.model.Specialist_register_VO"%>
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
<title>의뢰인회원가입</title>
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
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Register</span>
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
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        <form method="post" action="Client_register_service">
                            <div class="group-input">
                                <label for="username">E-mail ID *</label>
                                <input type="text" id="userid" name="c_id">
                                <div id="id_div"></div>
                            <script type="text/JavaScript">
                            $(document).ready(function(){
                                /* 
                                   함수명 : ID 중복확인
                                   내용  : ID 중복확인 진행. (Ajax).
                                */
                                $(".id_confirm").on("focusout", function(){
                                   var id = $('input[name=s_id]').val();
                                   //alert(id);
                                   $.ajax({
                                      url : "id_confirm",
                                      type : "POST",                                       
                                      data : {"s_id" : id}
                                     /*  success : function(data){
                                         $('#id_div').html('<a>사용 가능한 ID입니다.</a>')
                                      } error : function(err){
                                         $('#id_div').html('<a> style="color:red;">사용 불가능한 ID입니다.</a>')
                                      } */
                                   })
                                   .done(function(json){
                                      
                                      if(json!=1){
                                         $('#id_div').html('<p style="color:blue;">사용 가능한 ID입니다.</p>')
                                      }else{
                                         $('#id_div').html('<p style="color:red;">사용 불가능한 ID입니다.</p>')
                                      }
                                      
                                   })
                                   
                                   .fail(function(xhr, status, errThrwon){
                                      console.log("Ajax 실패 : " + errorThrown);
                                      $('#id_div').html('<a style="color:red;">통신중 오류가 발생했음.</a>');
                                   })
                                   
                                });
                                
                                
                                
                                
                             });
                            
                            
                            
                            </script> 
                                
                               
                            </div>
                            <div class="group-input">
                                <label for="pass">비밀번호 *</label>
                                <input type="password" id="pass" name="c_pw">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">비밀번호 확인 *</label>
                                <input type="password" id="con-pass" name="con_pw">
                            </div>
               				<div class="group-input">
                                <label for="username">이름 *</label>
                                <input type="text" id="username" name="c_name">
                            </div>
               				<div class="group-input">
                                <label for="job">직업 &nbsp;&nbsp;
	                                <select style="width:235px;"  id="job" name="c_job">
					                    <option >선택안함</option>
					                    <option >백수</option>
					                    <option >직장인</option>
					                    <option >학생</option>	
									</select>
								</label>
							</div>
							<div class="group-input">
                                <label for="business">비지니스분야&nbsp;&nbsp; 
									<select style="width:185px;" id="c_businesslist" name="c_business">						                    
						  				<option >선택해주세요</option>
						  				<option >UX기획</option>
						  				<option >웹</option>
						  				<option >커머스</option>
						  				<option >모바일</option>
						  				<option >프로그램</option>
						  				<option >트랜드</option>
						  				<option >데이터</option>
						  				<option >언리얼</option>
						  				<option >기타</option>
						  			</select>
				                </label>
                            </div>
 							<div class="group-input">
                                <label for="job">관심분야 &nbsp;&nbsp;
									<select style="width:205px;" id="c_interestlist" name="c_interest">
				                    </select>
				                </label>
                            </div>                           
                           <button class="site-btn login-btn" type="submit">회원가입</button>
                        </form>
                        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript">
  	
  $('#c_businesslist').change(function(){
	  var data = $(this).val();
	  console.log(data);
	  var list;
	  if(data=='UX기획'){
		  list = ['선택해주세요','웹 · 모바일 기획', '프로그램 · 기타 기획'];
	  }else if(data=='웹'){
		  list = ['선택해주세요','홈페이지','랜딩페이지','프론트엔드 · 퍼블리싱','검색 최적화 · SEO','애널리틱스','홈페이지 수정 · 유지보수'];
	  }else if(data=='커머스'){
		  list = ['선택해주세요','쇼핑몰', '쇼핑몰 수정 · 유지보수'];
	  }else if(data=='모바일'){
		  list = ['선택해주세요','앱','앱 수정 · 유지보수'];
	  }else if(data=='프로그램'){
		  list = ['선택해주세요','비지니스 애플리케이션','PC · 웹 프로그램','백엔드 · 서버','봇 · 챗봇'];
	  }else if(data=='트랜드'){
		  list = ['선택해주세요','노코드 · 로우코드','메타버스','블록체인 · NFT'];
	  }else if(data=='데이터'){
		  list = ['선택해주세요','데이터 구매 · 구축','데이터 마이닝 · 크롤링','데이터 전처리','데이터 라벨링','데이터 분석 · 시각화','인공지능 · 머신러닝','데이터베이스'];
	  }else if(data=='언리얼'){
		  list = ['선택해주세요','2D · 3D게임','AR · VR'];
	  }else if(data=='기타'){
		  list = ['선택해주세요','하드웨어 · 임베디드','보안','QA · 테스트','컴퓨터 기술지원','파일변환','기타'];
	  }
	  
	  var html = "";
	  for(var i = 0; i < list.length; i++){
		  html += "<option>";
		  html += list[i];
		  html += "</option>";
	  }
	  
	  $('#c_interestlist').html(html);
	  
  });
  
  </script>
  
  
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