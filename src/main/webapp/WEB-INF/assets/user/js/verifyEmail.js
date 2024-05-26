

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

			if (data) {
				const oneMinute = 60;
				const btn_send_code = document.getElementById('require_sendcode');
				btn_send_code.style.display = 'none';
				const display = document.getElementById('count');
				display.style.display = 'inline';
				startCountdown(oneMinute, display);
			}
			else {
				// thông báo lỗi gửi mail. mail sai ...
			}
		})





}

function verifyCode(event) {
	event.preventDefault();
	const code = document.getElementById('code');
	if (code.value.length == 9) {
		
		var url = "http://localhost:8080/shop_cars/api/register/confirmCode?code=" + code.value;

		const requestOptions = {
			method: 'POST',
			headers: {
				'content-type': 'application/json',
			}

		};
		fetch(url, requestOptions).then(Response => Response.json())
			.then(data => {
					console.log(data);
				if (data) {
					/* gọi api create account */
					var url = "http://localhost:8080/shop_cars/api/register/processingRegister";

					const requestOptions = {
						method: 'POST',
						headers: {
							'content-type': 'application/json',
						}

					};
					fetch(url, requestOptions).then(response => response.json())
						.then(data => {
							console.log("processing register : "+data)
							var jwtObject = JSON.parse(JSON.stringify(data));
							console.log(jwtObject.jwt);
							if (jwtObject.jwt != null) {

								localStorage.setItem('jwt', jwtObject.jwt);
								window.location.href = "http://localhost:8080/shop_cars/home"
							}
							else{
								window.location.href = "http://localhost:8080/shop_cars/user/signup"
							}
						}
						)
				}
				else {
					alert('code incorrect!');
					code.value = '';
				}
			})


	} else {
		alert('Please enter the verification code.');
		code.value = '';

	}
}
document.getElementById('verificationForm').addEventListener('submit', verifyCode);
