<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	<!-- <form action="Portfolio_register_service" method="post">
		 -->
		<h1>포트폴리오 등록하기</h1><a href="#">이전 페이지</a>
		<form>
			<input type="file" id="pf_img1">
		<div id="Pf_input">
			<input type="text" id="s_id" placeholder="아이디를 입력하세요.">
			<button id="register_Portfolio">포트폴리오 등록</button>
		</div>		
		</form>			
	
		<div id="Portfolio_List">
		
		
		</div>
<!-- 	</form> -->
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
             let form = $('')
             let html = "";
             for (let i = 0; i < data.length; i++){
      
                html += data[i].s_id;
                html += "<br>";
/*                  html += data[i].pf_url;
                html += "<br>"; */
                form += data[i].pf_img1;
                html += "<br>";
              
             }
             $('#Portfolio_List').empty();
             $('#Portfolio_List').html(html);
             $('#Portfolio_List').form(form);
          },
          error : function(err) {
             console.log(err);
          }
       
       }); 
       
    } 
	
		$('#register_Portfolio').click(function(){
	/* 		let pf_seq = $('#pf_seq.nextVal').val() */
			let s_id = $('#s_id').val();
	/* 		let pf_url = $('#pf_url').val(); */
			let pf_img1 = $('#pf_img1').val();
	/* 		let pf_dt = $('#sysdate').val(); */
			
		$.ajax({
		url : "Portfolio_register_service",
		method : "POST",
		data : {"pf_seq": pf_seq.nextVal, "s_id" : s_id, "pf_img1" : pf_img1, "pf_dt" : sysdate},
		dataType : "JSON",
		success : function(data){
			alert(data.result);
			/* $('#pf_seq.nextVal').val(""); */
			$('#s_id').val("");
			/* $('#pf_url').val(""); */
			$('#pf_img1').val("");
			/* $('#pf_dt').val(""); */
		},
		error : function(err){
			console.log(err);
		}
			
		});
		
			
			
			
			
		});
	
	</script>
</body>
</html>