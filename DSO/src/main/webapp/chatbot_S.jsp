<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 챗봇</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- 버튼 디자인 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

	<style type="text/css">

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 가로 스크롤 숨기기 */	
	
		body{
		
			overflow : auto;
			overflow-x : hidden; 
		
		}

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 제일 큰 영역 */	

		.chatbotbox{
		
			height : auto;
			width : 370px;
		
		}
	
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */		
/* 질문 버튼 */
		
		.chatbutton{
		
			width : 190px;
			height: auto;
			float: right;
			margin-right: 30px;
		
		}
		
		.chatbutton>.btn:not(:last-child) {
		
			margin-bottom: 10px;
			
		}

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */			
		
		/* 질문 목록 보기 버튼*/
		#back {
		
			position: fixed;
			bottom : 5%;
			left: 50%;
			transform: translate(-50%, 50%);
			
		}
		

		.ChatListbox{
		
			height: auto;
			
		}

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 질문 출력되는 영역 */
		
		.outerQue{
		
			width: 100%;
			height: 40px;
/* 			background: black; */
			
		}
		
		.innerQue{
			
			float: right;
			margin-right : 30px;
			width : 250px;
			height : 100%;
			background: #1B9CFC;
			border-radius: 10px;
			display : flex;
            justify-content : center;
            align-items : center;
		
		}

/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 답변 출력되는 영역 */
		
		.outAnsBox{
		
			width: 100%;
			height: auto;
			/* background: blue; */
			padding-top: 10px;
			padding-left: 10px;
			padding-right: 50px;
		
		}
		
		.innerAnsbox{
		
			border : 1px solid black;
			padding: 15px;
			text-align: left;
			background: #F2F2F2;
			border-radius: 20px;
		
		}
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 버튼들 */
		
		.btn{
		
			color: black; 
			background-color: white; 
			float: right; 
			border : 1px solid black;
		
		}
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
/* 챗봇 상단 소개 영역 */
		
		.firstbox{
		
			width: 100%;
			height: auto;
			display : flex;
            justify-content : center;
            align-items : center;

		
		}
		
		.secondbox{
		
			border : 1px solid black;
			padding: 15px;
			text-align: left;
			background: #F2F2F2;
			border-radius: 20px;
			font-size: 15px;
			width: 330px;
		
		}
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */			
/* 챗봇 최상단 영역 */

		@font-face {
		    font-family: 'KOTRAHOPE';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
		.head{
		
			background: #1B9CFC;
			width: 105%;
			height: 60px;
			position: fixed;
			top : -10px;
			left : -10px;
			display : flex;
            justify-content : center;
            align-items : center;
            border: 0.1px solid black;
            border-top-right-radius : 15px;
		    font-family: 'KOTRAHOPE';
		    font-size: 30px;
		    padding-top: 10px;
            
		}
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */		
/* 챗봇 로고 나오는 영역이랑 로고 */
		
		#logoImg{
		
			width: 150px;
			height: 150px;
		
		}
		
		#imgBox{
		
			display : flex;
            justify-content : center;
            align-items : center;
			padding-top: 50px;
		
		}
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */		
/* 스크롤바 숨기기 */

		body{
			-ms-overflow-style: none;
		}
		 
		::-webkit-scrollbar {
			display: none;
		}
		
		/*특정 부분 스크롤바 없애기*/
		
		.box{
			-ms-overflow-style: none;
		}
		.box::-webkit-scrollbar{
			display:none;
		}
		
		.empty{
		
			height: 1.05rem;
		
		}
		
		
/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ */	
		
	
	
	</style>

</head>
<body>
	<div class="chatbotbox">
		<div class="head">
			<span>개발자 인력 사무소</span>
		</div>
		<div id="imgBox">
			<img id="logoImg" alt="로고" src="img/chatbot_test_logo.png">
		</div>
		
		<div id="chatbotList">
			<div class="ChatListbox" style="text-align: center;">
	 			<!-- 여기가 출력 되는 부분 -->
	 			<div class="firstbox">
	 			
	 				<div class="secondbox">
	 				
	 					<div>안녕하세요👋🏻</div>
						<div>개발자 인력 사무소 엔터프라이즈입니다.</div>
						<div class="empty"></div>
						<div>대한민국 개발자 절반 이상이</div>
						<div>이용할 개발자 전용 솔루션입니다.</div>
						<div class="empty"></div>
						<div>·기업 프로젝트</div>
						<div>·상주 프리랜서 채용</div>
						<div>·정부지원사업 </div>
						<div>모두 엔터프라이즈에서 해결해보세요.</div>
						<div>✔1:1 대화 시스템</div>
						<div>✔검증된 전문가</div>
						<div>✔번거로운 행정 업무 대행</div>
	 				
	 				</div>
	 			
	 			</div>
	 			<br>
			</div>
			
			
			<div class="chatbutton">
				<button id="Ans_1" class="btn" style="color: black; float: right; ">개발자 인력 사무소란?</button>
				<button id="Ans_2" class="btn" style="color: black; float: right; ">로그인이 안돼요</button>
				<button id="Ans_3" class="btn" style="color: black; float: right; ">결제방법</button>
				<button id="Ans_4" class="btn" style="color: black; float: right; ">배가 고파요</button>
				<button id="Ans_5" class="btn" style="color: black; float: right; ">상담원과 연결하기</button>
				<button id="back" class="btn btn-outline-dark" style=" float: right; display: none">질문 목록 보기</button>
			</div>
		
		</div>

	</div>
	
	<script type="text/javascript">
	
		$('#Ans_1').click(function(){ 
			
			let que = '<div class="outerQue"><div class="innerQue">개발자 인력 사무소란?</div></div>';
			let ans1 = '<div class="outAnsBox"><div class="innerAnsbox">의뢰인이 전문가가 등록한<br>상품페이지에 있는<br>상품설명과 포트폴리오를 보고<br>원하는 상품을 상세하게<br>주문할 수 있는<br>엔터프라이즈입니다.</div></div><br><br>';
			$('.ChatListbox').append(que);
			$('.ChatListbox').append(ans1);
			$('#Ans_1').css("display","none");
			$('#Ans_2').css("display","none");
			$('#Ans_3').css("display","none");
			$('#Ans_4').css("display","none");
			$('#Ans_5').css("display","none");
			$('#back').css("display","inline-block");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#Ans_1");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			

		});
		
		$('#Ans_2').click(function(){ 
			
			let que = '<div class="outerQue"><div class="innerQue">로그인이 안되시나요?</div></div>';
			let ans2 = '<div class="outAnsBox"><div class="innerAnsbox">로그인 페이지에서<br>의뢰인 로그인인지<br>전문가 로그인인지<br>확인해 주시길 바랍니다.</div></div><br><br>';
			$('.ChatListbox').append(que);
			$('.ChatListbox').append(ans2);
			$('#Ans_1').css("display","none");
			$('#Ans_2').css("display","none");
			$('#Ans_3').css("display","none");
			$('#Ans_4').css("display","none");
			$('#Ans_5').css("display","none");
			$('#back').css("display","inline-block");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#Ans_2");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			
		});
		
		$('#Ans_3').click(function(){ 
			
			let que = '<div class="outerQue"><div class="innerQue">결제방법</div></div>';
			let ans3 = '<div class="outAnsBox"><div class="innerAnsbox">마이페이지에 있는 의뢰인과의<br>1:1 대화를 통해 결제를<br>진행할 수 있습니다.</div></div><br><br>';
			$('.ChatListbox').append(que);
			$('.ChatListbox').append(ans3);
			$('#Ans_1').css("display","none");
			$('#Ans_2').css("display","none");
			$('#Ans_3').css("display","none");
			$('#Ans_4').css("display","none");
			$('#Ans_5').css("display","none");
			$('#back').css("display","inline-block");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#Ans_3");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			
		});
		
		$('#Ans_4').click(function(){ 
			
			let que = '<div class="outerQue"><div class="innerQue">배가 고파요</div></div>';
			let ans4 = '<div class="outAnsBox"><div class="innerAnsbox">식<br>사<br>하<br>세<br>요</div></div><br><br>';
			$('.ChatListbox').append(que);
			$('.ChatListbox').append(ans4);
			$('#Ans_1').css("display","none");
			$('#Ans_2').css("display","none");
			$('#Ans_3').css("display","none");
			$('#Ans_4').css("display","none");
			$('#Ans_5').css("display","none");
			$('#back').css("display","inline-block");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#Ans_4");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			
		});
		
		$('#Ans_5').click(function(){ 
			
			let que = '<div class="outerQue"><div class="innerQue">상담원과 연결하기</div></div>';
			let ans5 = '<div class="outAnsBox"><div class="innerAnsbox">상담 대기중인 인원이 많아서<br>상담원과 연결하기까지<br>시간이 12시간30분 남았습니다.</div></div><br><br>';
			$('.ChatListbox').append(que);
			$('.ChatListbox').append(ans5);
			$('#Ans_1').css("display","none");
			$('#Ans_2').css("display","none");
			$('#Ans_3').css("display","none");
			$('#Ans_4').css("display","none");
			$('#Ans_5').css("display","none");
			$('#back').css("display","inline-block");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#Ans_5");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			
		});
		
		
		
		$('#back').click(function(){ 
			
			$('#Ans_1').show();
			$('#Ans_1').css("background","none");
			$('#Ans_1').html("개발자 인력 사무소란?"); 
			$('#Ans_2').show();
			$('#Ans_2').css("background","none");
			$('#Ans_2').html("로그인이 안되시나요?"); 
			$('#Ans_3').show();
			$('#Ans_3').css("background","none");
			$('#Ans_3').html("결제방법"); 
			$('#Ans_4').show();
			$('#Ans_4').css("background","none");
			$('#Ans_4').html("배가 고파요"); 
			$('#Ans_5').show();
			$('#Ans_5').css("background","none");
			$('#Ans_5').html("상담원과 연결하기");
			$(this).css("display","none");
			
			
			// 스크롤 자동으로 아래로 내리기
			const $bottomBtn = document.querySelector("#back");
			$bottomBtn.onclick = () => {
				
				window.scrollTo({ 
					
					top: document.body.scrollHeight, 
					behavior: "smooth" 
					
				});
				
			};
			
		});
		
		
		$('.btn').mouseover(function() {
			
			$(this).css("background","#1B9CFC");
			
		});
		
		$('.btn').mouseout(function() {
			
			$(this).css("background","white");
			
		});
		
		$('#back').mouseover(function() {
			
			$(this).css("background","black");
			
		});
		
		$('#back').mouseout(function() {
			
			$(this).css("background","white");
			
		});
		
		
	</script>


</body>
</html>