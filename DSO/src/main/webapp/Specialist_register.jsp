<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전문가 회원가입 페이지</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
  <form method="post" action="Specialist_register_service">
  	<table border="1px">
  	<tr>
  	<td colspan="2" style = "text-align : center;">
  	<h1>전문가 회원가입</h1>
  	</td>
  	</tr>
  <!-- 	<label for="email">이메일:</label> -->
    <tr>
    	<td id="td">
    		이메일 
    	</td>
    	<td>
    		<input type="text" name="s_id">
   	 	</td>
    </tr>
  <!-- <label for="password">비밀번호:</label> -->
  	<tr>
  		<td id="td">
  			비밀번호 
  		</td>
  		<td>
    		<input type="password" name="s_pw"> 
  		</td>
    </tr>
      <!-- <label for="name">이름:</label> -->
  	<tr>
  		<td id="td">
  			이름 
  		</td>
  		<td>
    		<input type="text" name="s_name"> 
  		</td>
    </tr>
    <!-- <label for="text">직업:</label> -->
    
  	<tr>
  		<td id="td">
    		 직업 
  		</td>
  		<td>
  			<input type="text" name="s_job">
  		</td>
    </tr>
    <tr>
  		<td id="td">
    		 비즈니스 분야  
  		</td>
  		<td>
  			<input type="text" name="s_business">
  		</td>
    </tr>
        <tr>
  		<td id="td">
    		 관심사 
  		</td>
  		<td>
  			<input type="text" name="s_interest">
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