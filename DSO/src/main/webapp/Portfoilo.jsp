<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 페이지</title>
</head>
<body style="background-color:skybule;">
	<h1 style="background-color:skyblue;">포트폴리오 페이지</h1>
	
	<form action="Portfolio_Upload_Service" method="post">
		
					<input type="file" name="portfolio">
			
					<input type="submit" value="포트폴리오 등록하기">

	</form>
	<script>
		function RegisterPortfoilo() {
			let imgData = document.getElementById("portfolio").src;
			let xhr = new XMLHttpRequest();
			xhr.open("POST", "Portfolio.jsp", true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4 && xhr.status === 200) {
					alert(xhr.responseText);
				}
			};
			xhr.send("imgData=" + imgData);
		}
	</script>
		
	
	
</body>
</html>