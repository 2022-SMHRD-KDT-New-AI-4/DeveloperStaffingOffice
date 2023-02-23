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
    <input type="file" name="pf_img1">
    <div id="Pf_input">
        <input type="text" name="s_id" placeholder="아이디를 입력하세요.">
        <button type="submit">포트폴리오 등록</button>
    </div>
</form>

<div id="Portfolio_List">
</div>

<script type="text/javascript">
    setInterval(Portfolio_List, 1000);
    Portfolio_List();

    function Portfolio_List() {
        $.ajax({
            url : "Portfolio_List_service",
            method : "POST",
            dataType : "JSON",
            success : function(data) {
                console.log(data);
                let html = "";
                for (let i = 0; i < data.length; i++){
                    html += data[i].s_id;
                    html += "<br>";
                    html += "<img src='" + data[i].pf_img1 + "'/>";
                    html += "<br>";
                }
                $('#Portfolio_List').empty();
                $('#Portfolio_List').html(html);
            },
            error : function(err) {
                console.log(err);
            }
        });
    }

    $('#portfolio-form').submit(function(e){
        e.preventDefault();

        let formData = new FormData(this);

        $.ajax({
            url : "Portfolio_register_service",
            method : "POST",
            data : formData,
            contentType: false,
            processData: false,
            dataType : "JSON",
            success : function(data){
                alert(data.result);
                $('#portfolio-form')[0].reset();
            },
            error : function(err){
                console.log(err);
            }
        });
    });
</script>
</body>
</html>