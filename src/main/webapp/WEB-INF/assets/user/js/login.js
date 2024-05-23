

document.addEventListener('DOMContentLoaded', (event) => {
	document.getElementById('loginForm').scrollIntoView({ behavior: 'smooth' });
});

document.getElementById('loginForm').addEventListener('submit', function(event) {
	event.preventDefault(); // Ngăn chặn hành vi mặc định của form

	// Gọi hàm xử lý đăng nhập
	authLogin();
});

function authLogin() {

	var url = "http://localhost:8080/shop_cars/api/v1/login/auth";
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/;


	if (username != null && password != null) {

		if (regex.test(password)) {
			const user = {
				"username": username,
				"password": password
			}

			const requestOptions = {
				method: 'POST',
				headers: {
					'content-type': 'application/json'
				},
				body: JSON.stringify(user)
			};

			fetch(url, requestOptions)
				.then(response => response.json())
				.then(data => {
					var jwtObject = JSON.parse(JSON.stringify(data));

					if (jwtObject.jwt != null) {

						localStorage.setItem('jwt', jwtObject.jwt);
						window.location.href = "http://localhost:8080/shop_cars/home"
					}

				}

				)
		}
		else {
			var errorLogin = document.getElementById("ErrorLogin");
			var passwordInput = document.getElementById("password");
			passwordInput.value = "";
			errorLogin.style.display = "block";
			errorLogin.style.color = "#f50057";
			errorLogin.innerHTML = "Username or password incorrect";
		}
	}
}