<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DSO.model.Portfolio_VO" %>
<%@ page import="DSO.model.fileDAO" %>

<html>
<head>
    <title>Register Image</title>
</head>
<body>

<h1>Register Image</h1>

<form action="Portfolio_List_service" method="post">
    <p>
        <label for="s_Id">ID:</label>
        <input type="text" id="s_Id" name="s_Id" required>
    </p>
    <p>
        <label for="pf_Img1">Image URL:</label>
        <input type="file" id="pf_Img1" name="pf_Img1" required>
    </p>
    <p>
        <input type="submit" value="Register">
    </p>
</form>

	<script>
		
	let data = new FormData(form);
	
	$.ajax({
		type: "POST",
		enctype: 'multipart/form-data',
		url: "Portfolio_List_service",
		data : data,
		processData : false,
		contentType: false,
		cache: false,
		timeout: 600000,
		success: function(data){
			
			if(data==1){
				$('#statusMessage').html('파일 업로드 성공');
				$('#statusMessage').css("color", "green");
			} else{
				$('#statusMessage').html('파일 업로드 실패');
				$('#statusMessage').css("color", "red");
			}
		},
		error: function(e){
			$('#statusMessage').html('파일 업로드 에러');
			$('#statusMessage').css("color","red");
		}	
		
		
	});
	}
	
	</script>


</body>
</html>