
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
			console.log("abccc")
			const user = {
				"username" : username,
				"password" : password
			}
			
			const requestOptions = {
				method: 'POST',
				headers: {
					'content-type': 'application/json'
				},
				body: JSON.stringify(user)
			};
			
			fetch(url,requestOptions)
			.then(response => response.json())
			.then(data => {
					console.log(data)
					
					/*window.location.href = "http://localhost:8080/shop_cars/home"*/
					}
				)
		}
	}
}