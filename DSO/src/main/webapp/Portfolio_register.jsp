<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>포트폴리오 등록하기</title>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <style type="text/css">
  
    </style>
</head>
<body>
<h1>𝑃𝑂𝑅𝑇𝐹𝑂𝐿𝐼𝑂 𝑅𝐸𝐺𝐼𝑆𝑇𝐸𝑅</h1>

<form id="portfolio-form" enctype="multipart/form-data">
    <div>
    <input type="file" name="pf_img1" id="pf_img1">    <!-- 업로드 이미지 타입이 파일이면 배열로 취급, name = 받아올 파일 , id = 제이쿼리내에서 접근 -->
     <!--    <input type="text" name="s_id" placeholder="아이디를 입력하세요."> -->
        <button type="submit" style="margin-left:25px;">포트폴리오 등록</button>
	<a href="#"><img style="width:100px; height:100px; margin-left:100px;" src='./DSO Image/뒤로가기.png'></a>
    </div>
</form>
<br>
<form action="#" method="post">
	<button type="submit">업로드</button>
</form>
<div id="Portfolio_List" style="width: 1000px; height: 1000px;">

</div>

<script type="text/javascript">
    $(document).ready(function(){
    	$.ajax({
            url : "Portfolio_list_service",
            method : "get",
            dataType : "JSON",
            success : photoList,
            error : function(err){
                console.log(err);
            }
        });
    });
    
    var cnt = 0;
    function photoList(data){
    	//alert(data);
    	let tmp="";
    	tmp+="<br><h2>𝐷𝑒𝑣𝑒𝑙𝑜𝑝𝑒𝑟 𝑆𝑡𝑎𝑓𝑓𝑖𝑛𝑔 𝑂𝑓𝑓𝑖𝑐𝑒</h2><br>";
    	$.each(data, function(index, obj){
        		tmp+="<img width='200px' height='200px' src='upload/"+obj.pf_Img1+"'/>";
    	});
    	$("#Portfolio_List").html(tmp);
    }
    
    $('#portfolio-form').submit(function(e){ // 폼에서 전송버튼 누르면 기능 실행
        e.preventDefault(); // submit 기능 막기

        let formData = new FormData(this); // 메모리에 폼 객체를 생성
        formData.append("pf_img1", $("#pf_img1")[0].files[0] );
        $.ajax({
            url : "Portfolio_register_service",
            method : "POST",
            data : formData,
            contentType: false,
            processData: false,
            success : function(){
                //alert(data.result);
                $('#portfolio-form')[0].reset();
                location.href="Portfolio_register.jsp";
            },
            error : function(err){
                console.log(err);
            }
        });
    });
</script>
</body>
</html>