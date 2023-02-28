<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	#title{
		text-align:center;
	}
	td#td{
		text-align:center;
	}
	table{
		margin:auto;
	}
	#service_title{
		width:860px;
		height:27px;
		border:none;
	}
	#service_price{
		width:860px;
		height:27px;
		border:none;
	}
	#service_category{
		width:863px;
		height:27px;
		border:none;
	}
	#service_desc{
		border:none;
	}
	#service_requisite{
		border:none;
	}
	div.button{
		margin:auto;
		width:50%;
	}
	div.button input{
		padding:5px;
		width:100%;
		font-size:18px;
	}
	div.button button{
		padding:5px;
		width:100%;
		font-size:18px;
	}
</style>
</head>
<body>
<h1 id="title">상품 등록</h1>

	<form id="form1" name="form1" action="Service_register_service" method="post" enctype="multipart/form-data">
		<table border="1">
			<!-- <label for="title">서비스 제목:</label> -->
			<tr>
				<td id="td">제목</td>
				<td colspan="2"><input type="text" id="service_title" name="service_title"></td>
			</tr>
			<!-- <label for="category">서비스 카테고리:</label> -->			
			<tr>
				<td id="td">카테고리</td>
				<td colspan="2">
					<select id="service_category" name="service_category">
							<option>선택해주세요</option>
							<option>웹 · 모바일 기획</option>
							<option>프로그램 · 기타 기획</option>
							<option>홈페이지</option>
							<option>랜딩페이지</option>
							<option>프론트엔드 · 퍼블리싱</option>
							<option>검색 최적화 · SEO</option>
							<option>애널리틱스</option>
							<option>홈페이지 수정 · 유지보수</option>
							<option>쇼핑몰</option>
							<option>쇼핑몰 수정 · 유지보수</option>
							<option>앱</option>
							<option>앱 수정 · 유지보수</option>
							<option>비지니스 애플리케이션</option>
							<option>PC · 웹 프로그램</option>
							<option>백엔드 · 서버</option>
							<option>봇 · 챗봇</option>
							<option>노코드 · 로우코드</option>
							<option>메타버스</option>
							<option>블록체인 · NFT</option>
							<option>데이터 구매 · 구축</option>
							<option>데이터 마이닝 · 크롤링</option>
							<option>데이터 전처리</option>
							<option>데이터 라벨링</option>
							<option>데이터 분석 · 시각화</option>
							<option>인공지능 · 머신러닝</option>
							<option>데이터베이스</option>
							<option>2D · 3D게임</option>
							<option>AR · VR</option>
							<option>하드웨어 · 임베디드</option>
							<option>보안</option>
							<option>QA · 테스트</option>
							<option>컴퓨터 기술지원</option>
							<option>파일변환</option>
							<option>기타</option>
					</select>
				</td>
			</tr>
			<!-- <label for="price">서비스 가격:</label>  -->
				<tr>
					<td id="td">
						가격
					</td>
					<td colspan="2">
						<input type="number" id="service_price" name="service_price"> 
					</td>
				</tr>
			<!-- <label for="desc">서비스 설명:</label>  -->
				<tr>
					<td id="td">
						설명
					</td>
					<td colspan="2">
						<textarea rows="20px" cols="120px" id="service_desc" name="service_desc"></textarea> 
					</td>
				</tr>
			<!-- <label for="requisite">서비스 요구사항:</label>  -->
				<tr>
					<td id="td">
						요구사항
					</td>
					<td colspan="2">
						<textarea rows="20px" cols="120px" id="service_requisite" name="service_requisite"></textarea> 
					</td>
				</tr>
				<tr>
					<td id="td">이미지</td>
					<td>
						<div id="imgViewArea" style="margin-top:10px; display:none;">
								<img id="imgArea" style="width:200px; height:200px;" onerror="imgAreaError()"/>
						</div>
					</td>
					<td><input type="file" name="service_img" id="service_img" accept="image/*"></td>
				</tr>
				<tr>
    				<td colspan="3">
    					<div class="button">
    						<button type="button" onclick="location.href='Portfolio_register.jsp'">포트폴리오 등록</button>
    					</div>
    				</td>
    			</tr>
				<tr>
					<td colspan="3">
						<div class="button">
							<input type="submit" value="등록" id="addBtn">
						</div>
					</td>
				</tr>
		</table>
	</form>


	


<script type="text/javascript" >
	function readURL(input){
		if(input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
					$('#imgArea').attr('src',e.target.result);	
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$(":input[name='service_img']").change(function() {
		if($(":input[name='service_img']").val()==''){
				$('#imgArea').attr('src','');
		}
		$('#imgViewArea').css({'display':''});
		readURL(this);
	});
	
	function imgAreaError(){
			$('#imgViewArea').css({'display':'none'});
	}
</script>


<script type="text/javascript">

	$(document).ready(function(){
		//서비스 등록 유효성 검사
		$("#addBtn").click(function(){}
		var service_title = $("#service_title").val();
		var service_category = $("#service_category").val();
		var service_price = $("#service_price").val();
		var service_desc = $("#service_desc").val();
		var service_requisite = $("#service_requisite").val();
		var service_img = $("#service_img").val();
		
		if(service_title == ""){
			alert("제목을 입력해주세요")		
			service_title.focus();
		}else if(service_category == ""){
			alert("카테고리를 선택해주세요")
			service_category.focus();
		}else if(service_price == ""){
			alert("가격을 입력해주세요")
			service_price.focus();
		}else if(service_desc == ""){
			alert("설명란을 작성해주세요")
			service_desc.focus();
		}else if(service_requisite == ""){
			alert("요구사항을 입력해주세요")
			service_requisite.focus();
		}else if(service_img == ""){
			alert("이미지를 등록해주세요")
			service_img.focus();
		}
	});

	});
</script>
</body>
</html>