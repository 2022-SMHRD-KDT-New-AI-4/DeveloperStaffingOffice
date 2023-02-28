<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>

<style>
	a.button {
	  display: block;
	  position: relative;
	  float: left;
	  width: 120px;
	  padding: 0;
	  margin: 10px 20px 10px 0;
	  font-weight: 600;
	  text-align: center;
	  line-height: 50px;
	  color: #FFF;
	  border-radius: 5px;
	  transition: all 0.2s ;
	}
	
	.btnPush:hover{
		margin-top: 15px;
		margin-bottom: 5px;
	}
	.btnBlueGreen.btnPush:hover {
		box-shadow: 0px 0px 0px 0px #007144;
	}
	.btnBlueGreen.btnBorder {
 		box-shadow: 0px 0px 0px 0px #21825B;
	}
	.btnBlueGreen.btnPush {
 		 box-shadow: 0px 5px 0px 0px #007144;
	}
	.btnFade.btnBlueGreen:hover {
  		background: #21825B;
	}
	.btnBlueGreen {
 		 background: #00AE68;
	}
	.btnBlueGreen.btnFloat:before {
 		 background: #00AE68;
	}
	.btnSlide.btnBlueGreen {
  background: 0;
}
.btnFloat:before {
  box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0.4);
}
.btnFloat:hover:before {
  
}
.btnFloat:hover:before {
  margin-top: -2px;
  margin-left: 0px;
  transform: scale(1.1,1.1);
  -ms-transform: scale(1.1,1.1);
  -webkit-transform: scale(1.1,1.1);
  box-shadow: 0px 5px 5px -2px rgba(0, 0, 0, 0.25);
}

.btnSlide .bottom {
  position: absolute;
  top: 0;
  left: 0;
  width: 120px;
  height: 50px;
  color: #000;
  z-index: 5;
  border-radius: 5px;
}

.btnSlide .top {
  position: absolute;
  top: 0px;
  left: 0;
  width: 120px;
  height: 50px;
  background: #00AE68;
  z-index: 10;
  transition: all 0.2s ;
  border-radius: 5px;
}

.btnSlide:hover .top {
  top: 40px;
}
</style>
</head>
<body>
  <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("imp67011510"); 
      
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
        
        function requestPay() {
            IMP.request_pay({
                pg : 'kcp',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : '프로젝트 결제', // 임의의 결제자 성명
                amount : 500000000,  // 임의로 결제 비용 설정
                buyer_email : 'Iamport@chai.finance', // 임의의 이메일 설정
                buyer_name : '권선택',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
                display: {
                    card_quota: [3]  // 할부개월 3개월까지 활성화
                }
            }, function (rsp) { // callback
                if (rsp.success) {
                    console.log(rsp);
                } else {
                    console.log(rsp);
                }
            });
        }
    </script>
</head>
<body>
    <button title="Button push blue/green" class="button btnPush btnBlueGreen" onclick="requestPay()" style="width:150px; height:50px;">𝑷𝒂𝒚</button> <!-- 결제하기 버튼 생성 -->
     
</html>