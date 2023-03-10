<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="DSO.model.Freereply_DAO"%>
<%@page import="DSO.model.Freereply_VO"%>
<%@page import="DSO.model.Service_info_pr_VO"%>
<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
	Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
	Service_info_pr_VO post = new Service_info_pr_VO();
	Freereply_VO vo = new Freereply_VO();
	if(loginS==null){
		post = (Service_info_pr_VO)session.getAttribute("post");
		vo = new Freereply_VO(loginC.getC_id(),post.getService_seq());
	} else if (loginC==null){
		post = new Service_info_pr_VO(1,loginS.getS_id());
		vo = new Freereply_VO(loginS.getS_id(),post.getService_seq());
	}
	Freereply_DAO dao = new Freereply_DAO();
	int grade = dao.gradeCon(vo);
	System.out.println(grade);
	%>
<%
    String userName=null;
    if(request.getAttribute("userName")==loginS){ // 현재 변수명은 안정해져 있으므로 userName은 나중에 변경해야함.
       userName="의뢰인";
    }else{
    	userName="전문가";
    }

%>
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
<%if(loginS!=null) {%>
<link rel="stylesheet" href="css/styles.css" type="text/css">
<%}else { %>
<link rel="stylesheet" href="css/style.css" type="text/css">
<%} %>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
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
		width:820px;
		height:440px;
		margin:10px;
		display: inline-block;
		border-radius : 10px 10px 10px 10px;	
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
	<script src="https://kit.fontawesome.com/b0f29e9bfe.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
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

		<div class="container">
			<div class="row">
				<div class="col-lg-12" style="margin: auto;">
					<div class="breadcrumb-text">
						<a href="Main.jsp"><i class="fa fa-home"></i> Home</a>
						<a href="Mypage_C.jsp"></i> 마이페이지</a>
						<a href="Chatting_list.jsp"></i>1:1채팅 목록</a>
 						<span>1:1채팅</span>
					</div>
				</div>
			</div>
		</div>

	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad">
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
				
				<!-- 마이페이지 박스 -->
				<div class="col-lg-9 order-1 order-lg-2">
					<%if(loginS!=null) {%>
						<div id="main-container" style="border:1px solid #1B9CFC ;">
					<%}else{ %>
						<div id="main-container" style="border:1px solid #EAB543 ;">
					<%} %>
					<%if(loginS!=null) {%>
					<div id="chat-container" style="border: 1px solid #1B9CFC;background: #98cffa;">
					<%}else{ %>
					<div id="chat-container" style="border: 1px solid #EAB543;background: wheat;">
					<%} %>
				</div>
		<div id="bottom-container">
		
			<%if(loginS!=null) {%>
			<input id="inputMessage" type="text" style="border: 1px solid #1B9CFC;">
			<%}else {%>
			<input id="inputMessage" type="text" style="border: 1px solid #EAB543;">
			<%} %>
			<%if(loginS!=null) {%>
			<input id="btn-submit" type="submit" value="전송" style ="border-radius : 10px 10px 10px 10px;background: #1B9CFC;" >
			<%}else {%>
			<input id="btn-submit" type="submit" value="전송" style ="border-radius : 10px 10px 10px 10px;background: #EAB543;" >
			<%} %>
			<%if(loginC!=null) {%>
			<%if(grade==100) {%>
			<span style="margin-left: 10px; margin-right: 10px;">결제하기</span> <a id="icon" style=" display: inline;" > <i style="cursor : pointer; color:#black; position: relative; top: 7px;" class="fa fa-credit-card fa-3x" aria-hidden="true" onclick="javascript:requestPay()"></i>
			<input id="prot" type="hidden" value="<%=post.getService_title()%>">
			<input id="prop" type="hidden" value="<%=post.getService_price()%>">
	<!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("imp67011510"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        
        function requestPay() {
        	var title = $('#prot').val(); // 페이지에 있는 게시물 이름 가져오기
        	var price = $('#prop').val(); // 페이지에 있는 게시물에 해당하는 가격 가져오기
        	
            IMP.request_pay({
                pg : 'kcp',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : title, // 페이지 게시물 일
                amount : price,  // 결제 비용 
                buyer_email : 'Iamport@chai.finance', // 임의의 이메일 설정
                buyer_name : '권선택',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
                display: {
                    card_quota: [3]  // 할부개월 3개월까지 활성화
                }
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                    alert('결제 성공!');
                    location.href="ToBuy";
                } else {
                    console.log(rsp);
                   /*  alert('결제 실패..');
                    location.href = "Chatting_C.jsp"; */
                }
            });
           
        }
   
    </script>
			<%} %>
			<%} %>
			<%if(loginS!=null) {%>
			<!-- <button type="button" onclick="location.href='ToSend'">상품 보내기</button> -->
			<span style="margin-left: 10px; margin-right: 10px;">상품보내기</span><a id="icon" style=" display: inline;" > <i style="cursor : pointer; color:#black; position: relative; top: 7px; " class="fa fa-gift" aria-hidden="true" onclick="location.href='ToSend'"></i>
			<%} %>
			 	<!-- jQuery -->
   
		</div>
	</div>
					</div>
				</div>
			</div>
	</section>	
	
	
	<script type="text/javascript">
		
		var textarea = document.getElementById("messageWindow");
		var webSocket = new WebSocket("ws://220.71.97.239:8080/DSO/webChatServer/{<%=userName%>}");
		
		// 로컬에서 테스트할 때 사용하는 URL입니다.
	// 	var webSocket = new WebSocket('ws://localhost/DevEricServers/webChatServer');
		var inputMessage = document.getElementById('inputMessage');
		
		webSocket.onerror = function(e){
			onError(e);
		};
		webSocket.onopen = function(e){
			onOpen(e);
		};
		webSocket.onmessage = function(e){
			onMessage(e);
		};
		
		
		function onMessage(e){
			var chatMsg = event.data;
			var date = new Date();
			var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
			if(chatMsg.substring(0,10) == 'DSO server'){
				<%if(loginS!=null){%>
				var $chat = $("<div class='chat notice' style='background-color:#1B9CFC; border-radius : 10px 10px 10px 10px;'>" + chatMsg + "</div>");
				<%}else{%>
				var $chat = $("<div class='chat notice' style='background-color:#EAB543; border-radius : 10px 10px 10px 10px;'>" + chatMsg + "</div>");
				<%}%>
				$('#chat-container').append($chat);
			}else{
				var $chat = $("<div class='chat-box'><div class='chat'>" + chatMsg + "</div><div class='chat-info chat-box'>"+ dateInfo +"</div></div>");
				$('#chat-container').append($chat);
			}
			
			
			$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
		}
		
		function onOpen(e){
			
		}
		
		function onError(e){
			alert(e.data);
		}
		
		function send(){
			var chatMsg = inputMessage.value;
			if(chatMsg == ''){
				return;
			}
			var date = new Date();
			var dateInfo = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
			if(chatMsg.indexOf("http://")!=-1){ // indextOf("") : 문자열에 해당 문자가 포함되어 있다면 출력.
			var $chat = $("<div class='my-chat-box'><div class='chat my-chat'><a href='"+chatMsg+"'>" + chatMsg + "</a></div><div class='chat-info'>"+ dateInfo +"</div></div>");
			}
			else{
			var $chat = $("<div class='my-chat-box'><div class='chat my-chat'>" + chatMsg + "</div><div class='chat-info'>"+ dateInfo +"</div></div>");
			}
			$('#chat-container').append($chat);
			if(chatMsg.indexOf("http://")!=-1){
				webSocket.send("<a href='"+chatMsg+"'>" + chatMsg + "</a>");
			}else{
			webSocket.send(chatMsg);
			}
			inputMessage.value = "";
			$('#chat-container').scrollTop($('#chat-container')[0].scrollHeight+20);
		}
		
	</script>
	
	<script type="text/javascript">
		$(function(){
			$('#inputMessage').keydown(function(key){
				if(key.keyCode == 13){
					$('#inputMessage').focus();
					send();
				}
			});
			$('#btn-submit').click(function(){
				send();
			});
			
		})
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