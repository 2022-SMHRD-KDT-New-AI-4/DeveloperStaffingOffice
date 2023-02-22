<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 페이지</title>
<style>
	body{
		background-color:skyblue;
	}

</style>
</head>
<body>
	<!-- <h1 style="font-family:serif;">포트폴리오 페이지</h1> -->
	<form>
		<button data-text-content="true" style="font-size: 16px; color: rgb(255,255,255); text-align: center; line-height:2.5em; border-radius: 4px; background-color: rgb(231,76,60); text-shadow: rgba(0, 0, 0, 0.5) 3px 3px 5px;" class spellcheck="false">
			상품 삭제
		</button>
		<button data-text-content="true" style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(52, 152, 219); text-shadow: rgba(0, 0, 0, 0.5) 3px 3px 5px;" class="">
			변경 내용 저장
		</button>
	
	
	</form>
	<br><br>
	
	<form action="Portfolio_Upload_Service" method="post">						
		
		<div class="form-group">
			<input class="form-control form-control-user" type="file" multiple="multiple"
			name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
			<input type="submit" value="portfolio">
		</div>
		<div id="images_container"></div>
	</form>
	<script>
		
	</script>
	
	
	
</body>
</html>