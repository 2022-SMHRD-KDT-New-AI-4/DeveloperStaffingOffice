<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 리스트</title>
</head>
<body>
	<h1>포트폴리오 리스트</h1>
	<c:if test="${not empty portfolios}">
		<table border="1">
			<tr>
				<th>ID</th>
				<th>URL</th>
				<th>Image 1</th>
				<th>Image 2</th>
				<th>Image 3</th>
			</tr>
			<c:forEach items="${portfolios}" let="portfolio">
				<tr>
					<td>${portfolio.s_Id}</td>
					<td><a href="${portfolio.pf_Url}" target="_blank">${portfolio.pf_Url}</a></td>
					<td><img src="${portfolio.pf_Img1}" alt="image 1"></td>
					<td><img src="${portfolio.pf_Img2}" alt="image 2"></td>
					<td><img src="${portfolio.pf_Img3}" alt="image 3"></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	
	<h2>새 포트폴리오 등록</h2>
	<form method="post" action="Portfolio_register_service">
		<label for="sId">ID        :</label>
		<input type="text" name="sId" required><br>
		<label for="pfUrl">URL     :</label>
		<input type="url" name="pfUrl" required><br>
		<label for="pfImg1">Image 1:</label>
		<input type="url" name="pfImg1" required><br>
		<label for="pfImg2">Image 2:</label>
		<input type="url" name="pfImg2" required><br>
		<label for="pfImg3">Image 3:</label>
		<input type="url" name="pfImg3" required><br>
		<input type="submit" value="포트폴리오 등록">
	</form>
</body>
</html>