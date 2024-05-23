<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value="/assets/css/verifyEmail.css" />">
<title>Document</title>
</head>

<style>
input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

input[type="number"] {
	-moz-appearance: textfield;
}
</style>
<body>
	<div id="verifyEmailBox">
		<form id="verificationForm" action="#" method="post"
			enctype="multipart/form-data">

			<div id="title_verify">
				<h2>VERIFY EMAIL</h2>
				<p>Please let us know this email belongs to you. Please enter
					the code in the email sent to :</p>
			</div>

			<div>
				<input id="code" type="number">
				<p id="count"></p>
				<div onclick="sendcodemail()" id="require_sendcode">send</div>
			</div>

			<div>
				<p
					style="text-align: center; margin: 20px 0 20px 0; font-size: 18px;">Verification
					code is valid only for 1 minutes</p>
				<button id="submit_verify_email" type="submit">Confirm</button>
			</div>


		</form>

	</div>
</body>

<script type="text/javascript">
	function startCountdown(duration, display) {
        let timer = duration, minutes, seconds;
        const interval = setInterval(() => {
            minutes = parseInt(timer / 60, 10);
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

			
            display.textContent = minutes + ":" + seconds;
			
            if (--timer < 0) {
                clearInterval(interval);
                display.textContent = "";
				display.style.display = 'none';
				const btn_send_code = document.getElementById('require_sendcode');
				btn_send_code.style.display = 'inline';
               
            }
        }, 1000);
    }

    function sendcodemail() {
    	
    	/* call api to send code to mail */
    	var url = "http://localhost:8080/shop_cars/api/register/sendCodeToMail";

			const requestOptions = {
			method: 'POST',
			headers: {
				'content-type': 'application/json',
			}

			};
            fetch(url, requestOptions).then(Response => Response.json)
				.then(data => {
					console(data);
					if(data){
						const oneMinute = 60;
						const btn_send_code = document.getElementById('require_sendcode');
						btn_send_code.style.display = 'none';
				        const display = document.getElementById('count');
						display.style.display = 'inline';
				        startCountdown(oneMinute, display);
					}
					else{
						// thông báo lỗi gửi mail. mail sai ...
					}
				})

    	
		

        
     }

    function verifyCode(event) {
        event.preventDefault(); 
        const code = document.getElementById('code');
        if (code.value.length == 8) {

			var url = ""http://localhost:8080/shop_cars/api/register/confirmCode";

			const requestOptions = {
			method: 'POST',
			headers: {
				'content-type': 'application/json',
				'code' : code.value
			}

			};
            fetch(url, requestOptions).then(Response => Response.json)
				.then(data => {
					console(data);
					
				})


        } else {
            alert('Please enter the verification code.');
			code.value = '';
        }	
    }
	 document.getElementById('verificationForm').addEventListener('submit', verifyCode);

</script>
</html>