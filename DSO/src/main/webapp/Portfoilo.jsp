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
	
	<form action="Portfolio_Upload_Service" method="post">						
		
		<div class="form-group">
			<input class="form-control form-control-user" type="file" multiple="multiple"
			name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
			<input type="submit" value="portfolio">
		</div>
		<div id="images_container"></div>
	</form>
		<script>
		function setDetailImage(event){
			for(let image of event.target.files){
				let reader = new FileReader();
				
				reader.onload = function(event){
					let img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#images_container").appendChild(img);
				};
				
				console.log(image);
				reader.readAsDataURL(image);
			}
		}
	</script>
	
	
	
</body>
</html>