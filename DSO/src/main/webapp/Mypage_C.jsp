<%@page import="DSO.model.Service_info_pr_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DSO.model.ChatClient"%>
<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<%
	Service_info_pr_DAO dao = new Service_info_pr_DAO();
	Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");
	Specialist_register_VO loginS = (Specialist_register_VO) session.getAttribute("loginS");
	String value = loginC.getC_id();
	ArrayList<ChatClient> buyListNew = dao.buyListLoad(value);
	session.setAttribute("buyList", buyListNew);
	ArrayList<ChatClient> buyList = (ArrayList<ChatClient>) session.getAttribute("buyList");
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
	
	
	<script type="text/javascript">
		
	$(document).on('click', 'a[id=buy0]', function(){
		$('.buy0').css({
            'display' : 'inline'
        });
		$('.buy1').css({
            'display' : 'none'
        });
		$('.buy2').css({
            'display' : 'none'
        });
     })
	$(document).on('click', 'a[id=buy1]', function(){
		$('.buy0').css({
            'display' : 'none'
        });
		$('.buy1').css({
            'display' : 'inline'
        });
		$('.buy2').css({
            'display' : 'none'
        });
     })
	$(document).on('click', 'a[id=buy2]', function(){
		$('.buy0').css({
            'display' : 'none'
        });
		$('.buy1').css({
            'display' : 'none'
        });
		$('.buy2').css({
            'display' : 'inline'
        });
	})
	
	</script>
<style type="text/css">
	.col-lg-4{

	height: 100px;
	text-align: center;		
	}
	.inner_box{
	width: 200px;
	height: 80px;
	}
	.talkbtn{
		height: 90%;
		border: 1px solid;
		background: none;
		margin-left: 30px;
		border-radius: 10px;
		text-align: center;
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
									<%
									int cnt1= 0;
									for(int i=0;i<buyList.size();i++){
										if(buyList.get(i).getGrade()==0){
											cnt1++;
										}
									}
									%>
										<a id="buy0" href="#">구매중</a><span><%=cnt1 %></span>	 					
									</div>
								</div>
							<!-- 한칸 끝 -->	
							<!-- 마이페이지 목록 한칸 -->
									<!-- 마이페이지 목록 한칸 -->
								<div class="col-lg-4 " style="background-color: white; display : flex;justify-content: center;align-items : center;" >								
									<div style="text-align:center; background-color:#ebf4f5; width: 100px; height: 100px;display : flex;justify-content: center;align-items : center;" >
									<%
									int cnt2= 0;
									for(int i=0;i<buyList.size();i++){
										if(buyList.get(i).getGrade()==1){
											cnt2++;
										}
									}
									%>
										<a id="buy1" href="#">구매확인</a><span><%=cnt2 %></span>	 					
									</div>
								</div>		
							<!-- 한칸 끝 -->	
							<!-- 마이페이지 목록 한칸 -->
								<div class="col-lg-4 " style="background-color: white; display : flex;justify-content: center;align-items : center;" >								
									<div style="text-align:center; background-color:#ebf4f5; width: 100px; height: 100px;display : flex;justify-content: center;align-items : center;" >
									<%
									int cnt3= 0;
									for(int i=0;i<buyList.size();i++){
										if(buyList.get(i).getGrade()==2){
											cnt3++;
										}
									}
									%>
										<a id="buy2" href="#">완료</a><span><%=cnt3 %></span>	 					
									</div>
								</div>	
						   <!-- 마이페이지 목록  -->			 
						
								<div style="padding-left: 15px; padding-top: 20px" > 
									<div>
								  	  <!---기본 메뉴--->
									  <ul class="board">
									  	<li class="fl tc w70 title t_line">상품 번호</li>
									  	<li class="fl tc w500 title t_line">상품 제목</li>
									  	<li class="fl tc w120 title t_line">전문가 아이디</li>
									  	<li class="fl tc w100 title t_line">진행 단계</li>
									  	<li class="fl tc w100 title ">구매 날짜</li>
									  	
									  </ul>
									  <%for(int i=0;i<buyList.size();i++) {%>
									  <!--- 리스트 --->
									  <ul class="board buy<%=buyList.get(i).getGrade()%>" name="ex_form">
									  	<li class="fl tc w70 list t_line lt_line"><%=buyList.get(i).getService_seq() %></li>
									  	<li class="fl tc w500 list t_line lt_line"><a href="ProductDetail.jsp?seq=<%=buyList.get(i).getService_seq()%>"><%=buyList.get(i).getService_title() %></a></li>
									  	<li class="fl tc w120 list t_line lt_line"><%=buyList.get(i).getS_id() %><button class="talkbtn" type="button" onclick="location.href='ToChat?seq=<%=buyList.get(i).getService_seq()%>'">대화</button></li>  
									  	<%if(buyList.get(i).getGrade()==0) {%>
									  	<li class="fl tc w100 list t_line lt_line" >구매중</li>
									  	<%} else if(buyList.get(i).getGrade()==1) { %>
									  	<li class="fl tc w100 list t_line lt_line" >구매 확인</li>
									  	<%} else if(buyList.get(i).getGrade()==2) { %>
									  	<li class="fl tc w100 list t_line lt_line" >완료<button class="talkbtn" type="button" onclick="location.href='ToChat?seq=<%=buyList.get(i).getService_seq()%>'">대화</button></li>
									  	<%} %>
									  	<li class="fl tc w100 list  lt_line"><%=buyList.get(i).getDt().substring(0, 11) %></li>
									  </ul>
									  <%} %>
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

	
	<!-- 챗봇 열고 닫고 -->	
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