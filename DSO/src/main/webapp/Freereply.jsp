<%@page import="DSO.model.Specialist_register_VO"%>
<%@page import="DSO.model.Client_register_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글및평점</title>
<%
Client_register_VO loginC = (Client_register_VO) session.getAttribute("loginC");

%>

<style type="text/css">
/* 레이아웃 외곽 너비 400px 제한*/
.wrap{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}
.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}

.warning_msg {
    display: none;
    position: relative;
    text-align: center;
    background: #ffffff;
    line-height: 26px;
    width: 100%;
    color: red;
    padding: 10px;
    box-sizing: border-box;
    border: 1px solid #e0e0e0;
}
#comment-count{
    margin-bottom: 10px; 
}
</style>
<script src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="wrap">
    <div id="comment_count">댓글<span id="count">0</span></div>
    <form name="reviewform" class="reviewform" method="post" action="Freeply_service">
        <input type="hidden" name="rate" id="rate" value="0"/>
        <input type="hidden" name="loginC" value="test123"/>
  <input type="hidden" name="service_seq" value="1"/>
        <p class="title_star">별점과 리뷰를 남겨주세요.</p>
 
        <div class="review_rating">
            <div class="warning_msg">별점을 선택해 주세요.</div>
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label>
                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
                <label for="rating2"></label>
                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
                <label for="rating3"></label>
                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
                <label for="rating4"></label>
                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label>
            </div>
        </div>
        <div class="review_contents">
            <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
            <textarea rows="1" class="review_textarea" name="review"></textarea>  <!-- 댓글 내용 작성하는 장소 -->
        </div>   
        <div class="cmd">
            <input type="submit" name="save" id="save" value="등록">
        </div>
    </form>
</div>
<div id="freereplyList">

</div>

<script type="text/javascript">
		
		setInterval(freereplyList, 1000);
		freereplyList();
	
		function freereplyList(){
			
			$.ajax({
				url : "freereply_list_Service",
				method : "post",
				dataType : "JSON",
				success : function(data){
					console.log(data);
					var html = "";
					html += "<table>"
					for(let i = 0; i< data.length; i++){
						html += "<tr>"
						html += "<td style='fontColor:yellow'>"
						html += data[i].loginM;
						if(data[i].rate==0){
							html += ☆☆☆☆☆
						}else if(data[i].rate==1){
							html += ★☆☆☆☆
						}else if(data[i].rate==2){
							html += ★★☆☆☆
						}else if(data[i].rate==3){
							html += ★★★☆☆
						}else if(data[i].rate==4){
							html += ★★★★☆
						}else if(data[i].rate==5){
							html += ★★★★★
						}
						html += "<br>";
						html += data[i].review;
						html += "</td>"
						html += "</tr>"
						html += "<br>";
					}
						html += "</table>"
					$('#freereplyList').empty();
					$('#freereplyList').html(html);
				},
				error : function(err){
					console.log(err);
				}
			});		
		}
		$('#save').click(function(){
			// 입력버튼을 클릭했을때 실행되는 함수
			let review = $('#review').val();
			let loginC = $('#loginC').val();
			
			
			
			$.ajax({
				url : "freereplyInsertService",
				method : "POST",
				data : {"review" : review, "loginC": loginC },
				dataType : "JSON",
				success : function(data){
					alert(data.result);
					$('#loginC').val("");
					$('#review').val("");
					
				},
				error : function(err){
					console.log(err);
				}
			});
		});
	</script>		



<script type="text/javascript">
//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    //alert(this.rate);
    $("#rate").val(this.rate);
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}
let rating = new Rating();//별점 인스턴스 생성
</script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    document.querySelector('.rating').addEventListener('click',function(e){
        let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
        }
    })
});
</script>

<script type="text/javascript">
//상품평 작성 글자수 초과 체크 이벤트 리스너
document.querySelector('.review_textarea').addEventListener('keydown',function(){
    //리뷰 400자 초과 안되게 자동 자름
    let review = document.querySelector('.review_textarea');
    let lengthCheckEx = /^.{400,}$/;
    if(lengthCheckEx.test(review.value)){
        //400자 초과 컷
        review.value = review.value.substr(0,400);
    }
});

//저장 전송전 필드 체크 이벤트 리스너
document.querySelector('#save').addEventListener('click', function(e){
    //별점 선택 안했으면 메시지 표시
    if(rating.rate == 0){
        rating.showMessage('rate');
        return false;
    }
    //리뷰 5자 미만이면 메시지 표시
    if(document.querySelector('.review_textarea').value.length < 5){
        rating.showMessage('review');
        return false;
    }
    //폼 서밋
});
</script>
<script type="text/javascript">
Rating.prototype.showMessage = function(type){//경고메시지 표시
    switch(type){
        case 'rate':
            //안내메시지 표시
            document.querySelector('.review_rating .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_rating .warning_msg').style.display = 'none';
            },1000);            
            break;
        case 'review':
            //안내메시지 표시
            document.querySelector('.review_contents .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_contents .warning_msg').style.display = 'none';
            },1000);    
            break;
    }
}
</script>
</body>
</html>