<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>의뢰인 정보수정 페이지</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<style>
	td#td{
		text-align:center;
		}
	table {
		margin:auto;
	}
	#c_businesslist{
		width:177px;
		height:27px;
	}
	#c_interestlist{
		width:177px;
		height:27px;
	}
</style>
<body>
<%
	//loginM 키값이 지정되어있는 세션 값
	Client_register_VO loginM = (Client_register_VO)session.getAttribute("loginM");
%>
  <form method="post" action="Client_Update_Serivce">
  	<table border="1px">
  	<tr>
  	<td colspan="2" style = "text-align : center;">
  	<h1>의뢰인 정보수정</h1>
  	</td>
  	</tr>
  <!-- <label for="id">아이디:</label> -->
  	<tr>
  		<td id="td">
  			아이디
  		</td>
  		<td>
  			<input type="text" name="c_id" value="loginM">
  		</td>
  	</tr>	
  <!-- <label for="password">비밀번호:</label> -->
  	<tr>
  		<td id="td">
  			비밀번호 
  		</td>
  		<td>
    		<input type="password" name="c_pw"> 
  		</td>
    </tr>
      <!-- <label for="name">이름:</label> -->
  	<tr>
  		<td id="td">
  			이름 
  		</td>
  		<td>
    		<input type="text" name="c_name"> 
  		</td>
    </tr>
    <!-- <label for="text">직업:</label> -->
    
  	<tr>
  		<td id="td">
    		 직업 
  		</td>
  		<td>
  			<input type="text" name="c_job">
  		</td>
    </tr>
    <tr>
  		<td id="td">
    		 비즈니스 분야  
  		</td>
  		<td> 
  			<select id="c_businesslist" name="c_business">
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
  		</td>
    </tr>
        <tr>
  		<td id="td">
    		 관심사 
  		</td>
  		<td>
  			<select id="c_interestlist" name="c_interest">
  			
  			</select>
  		</td>
    </tr>
    <tr>
    	<td colspan="2" id="td">
   			<input type="submit" value="Update">
    	</td>
    </tr>
    </table>
  </form>
  
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
  
  
  
</body>
</html>