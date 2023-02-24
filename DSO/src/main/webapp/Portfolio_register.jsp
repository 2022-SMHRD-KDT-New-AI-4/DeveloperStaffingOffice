<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>포트폴리오 등록하기</title>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <style type="text/css">
        #Portfoilo_List{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>포트폴리오 등록하기</h1>
<a href="#">이전 페이지</a>

<form id="portfolio-form" enctype="multipart/form-data">
    <input type="file" name="pf_img1" id="pf_img1">    <!-- 업로드 이미지 타입이 파일이면 배열로 취급, name = 받아올 파일 , id = 제이쿼리내에서 접근 -->
    <div id="Pf_input">
     <!--    <input type="text" name="s_id" placeholder="아이디를 입력하세요."> -->
        <button type="submit">포트폴리오 등록</button>
    </div>
</form>

<div id="Portfolio_List">

</div>

<script type="text/javascript">
    $(document).ready(function(){
    	$.ajax({
            url : "Portfolio_list_service",
            method : "get",
            dataType : "JSON",
            success : potoList,
            error : function(err){
                console.log(err);
            }
        });
    });
    
    function potoList(data){
    	//alert(data);
    	var tmp="<table border='1'>";
    	tmp+="<tr>";
    	tmp+="<td>포토폴리오이미지</td>";
    	tmp+="</tr>";
    	$.each(data, function(index, obj){
    		tmp+="<tr>";
        	tmp+="<td><img width='60px' height='60px' src='upload/"+obj.pf_Img1+"'/></td>";
        	tmp+="</tr>";
    	});
    	tmp+="</table>";
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