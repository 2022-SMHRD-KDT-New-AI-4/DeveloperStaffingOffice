<%@page import="DSO.model.Portfolio_VO"%>
<%@page import="DSO.model.Portfolio_DAO"%>
<%@page import="DSO.model.Like_VO"%>
<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@page import="DSO.model.Service_info_pr_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DSO.model.Service_info_pr_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>상품 상세 페이지</title>
<%
		Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
		Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
		int seq = Integer.parseInt(request.getParameter("seq"));
		Service_info_pr_DAO dao = new Service_info_pr_DAO();
		Service_info_pr_VO post = dao.selectPost(seq);
		String cateBigNum = (String)session.getAttribute("cateBigNum");
		String cateSmallNum = (String)session.getAttribute("cateSmallNum");
		ArrayList<Like_VO> likeList = (ArrayList<Like_VO>) session.getAttribute("likeList");
		session.setAttribute("postNum", post.getService_seq());
		String pf_sid = post.getS_id();
		Portfolio_DAO dao2 = new Portfolio_DAO();
		ArrayList<Portfolio_VO> pfList = dao2.selectThatPortfolios(pf_sid);
	%>
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

<%if(loginS!=null) {%>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<%}else { %>
<link rel="stylesheet" href="css/style.css" type="text/css">
<%} %>
<link rel="stylesheet" href="css/chatbot.css" type="text/css">
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
<style type="text/css">
/* 레이아웃 외곽 너비 400px 제한*/

#avatar-text{
   justify-content:center;
   align-content:flex-start;
}
.wcustomer-review-option{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}
.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}

.warning_msg {
    display: none;
    position: relative;
    text-align: center;
    background: #ffffff;
    line-height: 26px;
    width: 100%;
    color: red;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #e0e0e0;
}
#comment-count{
    margin-bottom: 10px; 
}
</style>
</head>
<body>
<!-- 좋아요 스크립트   -->
  <script type="text/javascript">
	
  	var likeSeq = $('.likeBtn').val();
	var dislikeSeq = $('.dislikeBtn').val();
  	
	$(document).on('click', 'button[class=likeBtn]', function() { 
		var likeSeq = $(this).val();
		var dislikeSeq = $(this).val();
		$.ajax({
			type : "POST",
			url : "Like_Insert_service",
			dataType : "json",
			data : {"likeSeq" : likeSeq},
			success : function(data){
				if(data>0){
				    $("#lbtn"+likeSeq).text('🧡');
				    $("#lbtn"+likeSeq).removeClass('likeBtn');  
				    $("#lbtn"+likeSeq).attr('class','dislikeBtn');
				}else{
					alert("메롱");
				}
			},
			error : function(err){
				console.log(err)
			}
		});
	});
	$(document).on('click',	'.dislikeBtn', function() {
		var likeSeq = $(this).val();
		var dislikeSeq = $(this).val();
		$.ajax({
			type : "POST",
			url : "Like_Delete_service",
			dataType : "json",
			data : {"dislikeSeq" : dislikeSeq},
			success : function(data){
				if(data>0){
				    $("#lbtn"+dislikeSeq).text('🤍');
				    $("#lbtn"+dislikeSeq).removeAttr('class');
				    $("#lbtn"+dislikeSeq).attr('class','likeBtn');
				}else{
					alert("메롱");
				}
			},
			error : function(err){
				console.log(err)
			}
		});
		
	});
 
</script> 
<!-- 좋아요 스크립트 끝 -->

<!-- 리뷰 스크립트 -->
<script type="text/javascript">
   $(document).ready(function(){
      avatar_text();
      
   });
   function avatar_text(){
      $.ajax({
         url : "Freereply_list_Service",
         method : "post",
         dataType : "JSON",
         success : function(data){
            var html="";
            html += "<table style='width:640px;'>"
            for(let i = 0; i< data.length; i++){
               html +="<tr>";
               html += "<td style='color: #EAB543;width:420px'>"
               if(data[i].rate==0){
                  html += "☆☆☆☆☆";
               }else if(data[i].rate==1){
                  html += "★☆☆☆☆";
               }else if(data[i].rate==2){
                  html += "★★☆☆☆";
               }else if(data[i].rate==3){
                  html += "★★★☆☆";
               }else if(data[i].rate==4){
                  html += "★★★★☆";
               }else if(data[i].rate==5){
                  html += "★★★★★";
               }
               html +="</td>";
               html +="</tr>";
               html +="<tr>";
               html +="<td style='font-weight:800'>";
               html +=data[i].loginC;
               html +="</td>"
               html +="<td style='text-align:center;'>";
               html +=data[i].regdate;
               html +="</td>";
               html +="</tr>";
               html +="<tr>";
               html +="<td colspan='2' style='padding-left:20px; padding-right:100px; padding-bottom:20px;'>";
               html +=data[i].review;
               html +="</td>";
               html +="</tr>";
            }
               html +="</table>"
            $('#avatar-text').empty();
            $('#avatar-text').html(html);
         },
         error : function(err){
            console.log(err);
         }
      });
   }
      $('#save').click(function(){
            // 입력버튼을 클릭했을때 실행되는 함수
            let review = $('#review').val();
            let loginC = $('#loginC').val();
            let regdate = $('#regdate').val();
            
            
            $.ajax({
               url : "freereplyInsertService",
               method : "POST",
               data : {"review" : review, "loginC": loginC, "regdate":regdate  },
               dataType : "JSON",
               success : function(data){
                  alert(data.result);
                  $('#loginC').val("");
                  $('#review').val("");
                  $('#regdate').val("");
               },
               error : function(err){
                  console.log(err);
               }
            });
         });
</script>
<!-- 리뷰 스크립트 끝 -->
	
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
							<span><a href="CateBig.jsp"><i class="fa"> </i>
							<%if(post.getService_categorynum1().equals("1")) {%>
						UX기획
						<%}else if(post.getService_categorynum1().equals("2")) {%>
						웹
						<%}else if(post.getService_categorynum1().equals("3")) {%>
						커머스
						<%}else if(post.getService_categorynum1().equals("4")) {%>
						모바일
						<%}else if(post.getService_categorynum1().equals("5")) {%>
						프로그램
						<%}else if(post.getService_categorynum1().equals("6")) {%>
						트랜드
						<%}else if(post.getService_categorynum1().equals("7")) {%>
						데이터
						<%}else if(post.getService_categorynum1().equals("8")) {%>
						언리얼
						<%}else if(post.getService_categorynum1().equals("9")) {%>
						기타
						<%} %></a> 
							<span>
							<%if(post.getService_categorynum1().equals("1")&&post.getService_categorynum2().equals("01")) {%>
								웹 · 모바일 기획
							<%}else if(post.getService_categorynum1().equals("1")&&post.getService_categorynum2().equals("02")){%>
								프로그램 · 기타 기획
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("01")){%>
								홈페이지
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("02")){%>
								랜딩페이지
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("03")){%>
								프론트엔드 · 퍼블리싱
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("04")){%>
								검색 최적화 · SEO
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("05")){%>
								애널리틱스
							<%}else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("06")){%>
								홈페이지 수정 · 유지보수
							<%}else if(post.getService_categorynum1().equals("3")&&post.getService_categorynum2().equals("01")){%>
								쇼핑몰
							<%}else if(post.getService_categorynum1().equals("3")&&post.getService_categorynum2().equals("02")){%>
								쇼핑몰 수정 · 유지보수
							<%}else if(post.getService_categorynum1().equals("4")&&post.getService_categorynum2().equals("01")){%>
								앱
							<%}else if(post.getService_categorynum1().equals("4")&&post.getService_categorynum2().equals("02")){%>
								앱 수정 · 유지보수
							<%}else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("01")){%>
								비지니스 애플리케이션
							<%}else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("02")){%>
								PC · 웹 프로그램
							<%}else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("03")){%>
								백엔드 · 서버
							<%}else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("04")){%>
								봇 · 챗봇
							<%}else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("01")){%>
								노코드 · 로우코드
							<%}else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("02")){%>
								메타버스
							<%}else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("03")){%>
								블록체인 · NFT
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("01")){%>
								데이터 구매 · 구축
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("02")){%>
								데이터 마이닝 · 크롤링
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("03")){%>
								데이터 전처리
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("04")){%>
								데이터 라벨링
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("05")){%>
								데이터 분석 · 시각화
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("06")){%>
								인공지능 · 머신러닝
							<%}else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("07")){%>
								데이터베이스
							<%}else if(post.getService_categorynum1().equals("8")&&post.getService_categorynum2().equals("01")){%>
								2D · 3D 게임
							<%}else if(post.getService_categorynum1().equals("8")&&post.getService_categorynum2().equals("02")){%>
								AR · VR
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("01")){%>
								하드웨어 · 임베디드
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("02")){%>
								보안
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("03")){%>
								QA · 테스트
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("04")){%>
								컴퓨터 기술지원
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("05")){%>
								파일변환
							<%}else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("06")){%>
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
	<section class="product-shop spad page-details">
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
							

				<!-- 상품 내용 -->
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-6">
							<div>
								<img class="product-big-img" src="boardImg/<%=post.getService_img() %>" alt="">
							</div>
							<div class="product-thumbs">
								<div class="product-thumbs-track ps-slider owl-carousel">
									<div class="pt active" data-imgbigurl="img/pl/pl1.png">
										<img src="boardImg/<%=post.getService_img() %>" alt="">
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="product-details">
								<div class="pd-title">
									<span><%=post.getS_id() %></span>
									<h3><%=post.getService_title() %></h3>
								</div>
								<div class="pd-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i> <span>(4)</span>
								</div>
								<div class="pd-desc">
									<h4>
										<%=post.getService_price() %> 원<span></span>
									</h4>
								</div>
								<div class="quantity">
									<a href="ToChat?seq=<%=post.getService_seq()%>" class="primary-btn pd-cart">전문가와
										대화</a>
										<%
												int t = 0;
											if(loginC!=null||loginS!=null){
												for(int j = 0;j<likeList.size();j++) {
													if(post.getService_seq() == likeList.get(j).getService_seq()) {
															t++;
													} 
												}
											}
											if(t>0) {%>
												<button id="lbtn<%=post.getService_seq()%>" class="dislikeBtn" value="<%=post.getService_seq()%>">🧡</button>
											<%} 
											else { %>
												<button id="lbtn<%=post.getService_seq()%>" class="likeBtn" value="<%=post.getService_seq()%>">🤍</button>
											<%} %>
								</div>
								<ul class="pd-tags">
									<li><span>카테고리:</span><%
									if(post.getService_categorynum1().equals("1")&&post.getService_categorynum2().equals("01")){%>
										웹 · 모바일 기획										
									<%}	else if(post.getService_categorynum1().equals("1")&&post.getService_categorynum2().equals("02")) {%>
										프로그램 · 기타 기획
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("01")) {%>
										홈페이지
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("02")) {%>
										랜딩페이지
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("03")) {%>
										프론트엔드 · 퍼블리싱
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("04")) {%>
										검색 최적화 · SEO
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("05")) {%>
										애널리틱스
									<%}	else if(post.getService_categorynum1().equals("2")&&post.getService_categorynum2().equals("06")) {%>
										홈페이지 수정 · 유지보수
									<%}	else if(post.getService_categorynum1().equals("3")&&post.getService_categorynum2().equals("01")) {%>
										쇼핑몰
									<%}	else if(post.getService_categorynum1().equals("3")&&post.getService_categorynum2().equals("02")) {%>
										쇼핑몰 수정 · 유지보수
									<%}	else if(post.getService_categorynum1().equals("4")&&post.getService_categorynum2().equals("01")) {%>
										앱
									<%}	else if(post.getService_categorynum1().equals("4")&&post.getService_categorynum2().equals("02")) {%>
										앱 수정 · 유지보수
									<%}	else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("01")) {%>
										비지니스 애플리케이션
									<%}	else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("02")) {%>
										PC · 웹 프로그램
									<%}	else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("03")) {%>
										백엔드 · 서버
									<%}	else if(post.getService_categorynum1().equals("5")&&post.getService_categorynum2().equals("04")) {%>
										봇 · 챗봇
									<%}	else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("01")) {%>
										노코드 · 로우코드
									<%}	else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("02")) {%>
										메타버스
									<%}	else if(post.getService_categorynum1().equals("6")&&post.getService_categorynum2().equals("03")) {%>
										블록체인 · NFT
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("01")) {%>
										데이터 구매 · 구축
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("02")) {%>
										데이터 마이닝 · 크롤링
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("03")) {%>
										데이터 전처리
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("04")) {%>
										데이터 라벨링
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("05")) {%>
										데이터 분석 · 시각화
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("06")) {%>
										인공지능 · 머신러닝
									<%}	else if(post.getService_categorynum1().equals("7")&&post.getService_categorynum2().equals("07")) {%>
										데이터베이스
									<%}	else if(post.getService_categorynum1().equals("8")&&post.getService_categorynum2().equals("01")) {%>
										2D · 3D 게임
									<%}	else if(post.getService_categorynum1().equals("8")&&post.getService_categorynum2().equals("02")) {%>
										AR · VR
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("01")) {%>
										하드웨어 · 임베디드
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("02")) {%>
										보안
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("03")) {%>
										QA · 테스트
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("04")) {%>
										컴퓨터 기술지원
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("05")) {%>
										파일변환
									<%}	else if(post.getService_categorynum1().equals("9")&&post.getService_categorynum2().equals("06")) {%>
										기타
									<%} %>
									</li>
									<li>
									<%=post.getService_dt() %>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="product-tab">
						<div class="tab-item">
							<ul class="nav" role="tablist">
								<li><a class="active" data-toggle="tab" href="#tab-1"
									role="tab">서비스	설명 및 의뢰인 준비사항</a></li>
								<li><a data-toggle="tab" href="#tab-2" role="tab">리뷰</a></li>
								<li><a data-toggle="tab" href="#tab-3" role="tab">포트폴리오</a></li>
							</ul>
						</div>
						<div class="tab-item-content">
							<div class="tab-content">
							
								<!-- 서비스 설명 및 의뢰인 준비사항 탭-->
								<div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
									<div class="specification-table">
										<div class="col-lg-7">
											<h5>서비스 설명</h5>
											<p><%=post.getService_desc() %></p>
											<h5>의뢰인 준비사항</h5>
											<p><%=post.getService_requisite() %></p>
										</div>
									</div>
								</div>
								<!-- 서비스 설명 탭 끝 -->
								
								<!-- 리뷰 탭 -->
								<div class="tab-pane fade" id="tab-2" role="tabpanel">
									<div class="customer-review-option">
										<div id="comment_count">Comments<span id="count"></span></div>
									</div>
									<div id="avatar-text">
									</div>
								</div>
								<!-- 리뷰 탭 끝 -->
								
								<!-- 포트폴리오 탭 -->
								<div class="tab-pane fade" id="tab-3" role="tabpanel">
									<div class="product-content">
										<div class="row">
											<%for(int i = 0; i<pfList.size(); i++) {%>
											<div class="col-lg-5">
												<img src="upload/<%=pfList.get(i).getPf_Img1() %>" alt="" style="height: 200px; object-fit: contain;">
												<h5 style='text-align: center'>
													<br><%= pfList.get(i).getPf_Dt()%>
												</h5>
											</div>
											<%} %>
										</div>
									</div>
								</div>
								<!-- 포트폴리오 탭 끝 -->
								
							</div>
						</div>
					</div>
				</div>
				<!-- 상품 내용 끝 -->

			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->
	
	<!-- ChatBot area -->
	
		<!-- 챗봇 아이콘 클릭시 열림 -->
		<img id ="chatbotImg" src="img/chatbot_main_logo.jpg" alt="chatbot" onclick="change()">
	    <div id = "chatbotArea">
	    
  	    	<% if(loginS != null ){%>
				<!-- 챗봇 전문가 버전 -->
		    	<iframe id ="chatbotframe" name="chatbotframe" src="chatbot_S.jsp" scolling ="yes"></iframe>
		    	
		    	<!-- 챗봇 닫기 버튼 -->
		    	<button id="closebtn" onclick="change()">✖</button>
		     <% } else {%> 
				<%-- 챗봇 의뢰인 버전 --%>
		     	<iframe id ="chatbotframe" name="chatbotframe" src="chatbot_C.jsp" scolling ="yes"></iframe>
		    	
		    	<!-- 챗봇 닫기 버튼 -->
		    	<button id="closebtn" onclick="change()">✖</button>
 		     <% } %>
	    	
	    </div>

	
	<!-- 챗봇 열고 닫고 12 -->	
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