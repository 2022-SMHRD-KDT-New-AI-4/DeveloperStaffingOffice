<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	td#td{
		text-align:center;
		}
	table {
		margin:auto;
	}
	
</style>
<body>
<%
	//loginM 키값이 지정되어있는 세션 값
	Client_register_VO loginM = (Client_register_VO)session.getAttribute("loginM");
%>
  
    <form method="post" action="Client_Login_service">
  	<table border="1px">
  	<tr>
  	<td colspan="2" style = "text-align : center;">
  	<h1>로그인</h1>
  	</td>
  	</tr>
  <!-- 	<label for="email">이메일:</label> -->
    <tr>
    	<td id="td">
    		아이디 
    	</td>
    	<td>
    		<input type="text" name="c_id">
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
    <tr>
    	<td colspan="2" id="td">
   			<input type="submit" value="Register">
    	</td>
    </tr>
    </table>
  </form>



</body>
</html>