/**
 * 
 */

function displayDistrictsByCodeCity() {

	var tagSelectCity = document.getElementById("city");
	var codeCity = tagSelectCity.value;
	/*var fullnameDistrict  = selectDistrict.options[selectDistrict.selectedIndex].text;*/

	const apiUrl = 'http://localhost:8080/shop_cars/api/address/districts/' + codeCity;

	const requestOptions = {
		method: 'POST',
		headers: {
			'content-type': 'application/json'
		}
	};

	fetch(apiUrl, requestOptions)

		.then(response => {
			if (!response.ok) {

				throw new Error('Network response was not ok');
			}

			return response.json();

		}).then(data => {

			var District_Select = document.getElementById("districts");

			const jsonDistricts = JSON.stringify(data);

			console.log(jsonDistricts);

			const districts = JSON.parse(jsonDistricts);

			District_Select.innerHTML = '';

			districts.forEach(district => {


				const option = document.createElement("option");
				option.value = district.code;

				option.textContent = district.fullname;

				District_Select.appendChild(option);
			})
		});
}



function displayWardsByCodeDistrict() {

	var tagSelectDistrict = document.getElementById("districts");
	var codeDistrict = tagSelectDistrict.value;
	/*var fullnameDistrict  = selectDistrict.options[selectDistrict.selectedIndex].text;*/

	const apiUrl = 'http://localhost:8080/shop_cars/api/address/wards/' + codeDistrict;

	const requestOptions = {
		method: 'POST',
		headers: {
			'content-type': 'application/json'
		}
	};

	fetch(apiUrl, requestOptions)

		.then(response => {
			if (!response.ok) {

				throw new Error('Network response was not ok');
			}

			return response.json();

		}).then(data => {

			var ward_Select = document.getElementById("wards");

			const jsonWards = JSON.stringify(data);

			console.log(jsonWards);

			const wards = JSON.parse(jsonWards);

			ward_Select.innerHTML = '';

			wards.forEach(ward => {


				const option = document.createElement("option");
				option.value = ward.code;

				option.textContent = ward.fullname;

				ward_Select.appendChild(option);
			})
		});
}



/* api check username is existed when register */
function checkusernameisExisted() {

	var inputUsername = document.getElementById("username");
	var username = inputUsername.value;
	var notifyUsername = document.getElementById("notifyUsername");
	var btn_submit_createa_account = document.getElementById("btn_submit_createa_account");

	if (username.length == 0) {
		notifyUsername.style.display = 'none';
		btn_submit_createa_account.disabled = "disabled";

		return;
	}

	if (username.length < 8) {
		notifyUsername.innerHTML = 'username must be at least 8 characters!'
		notifyUsername.style.color = 'red';
		notifyUsername.style.display = 'block';
		btn_submit_createa_account.disabled = "disabled";
		return;
	}



	console.log(username);
	const urlAPI = "http://localhost:8080/shop_cars/api/register/checkusernameExisted/" + username;
	const requestOptions = {
		method: 'POST',
		headers: {
			'content-type': 'application/json'
		}
	};
	fetch(urlAPI, requestOptions)
		.then(response => {
			if (!response.ok) {
				throw new Error('Network response was not ok');
			}
			return response.json();

		}).then(value => {
			console.log(value);
			var json = JSON.stringify(value);
			console.log(json);

			var result = JSON.parse(json);

			if (result.result == false) {
				notifyUsername.style.display = 'block';
				notifyUsername.style.color = '#1a0dab';
				notifyUsername.innerHTML = "username is valid!";
				btn_submit_createa_account.removeAttribute("disabled");

			} else {
				notifyUsername.style.display = 'block';
				notifyUsername.style.color = '#fff';
				notifyUsername.innerHTML = "username is existed!"
				btn_submit_createa_account.disabled = "disabled";

			}
		}
		);
}

function checkEmailIsExisted() {
	
	var inputemail = document.getElementById("email")
	var email = inputemail.value;
	
	var notifyEmail = document.getElementById("notifyEmail");
	
	
	const regex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	
	if(!regex.test(email)){
		
			notifyEmail.style.display = 'block';
			notifyEmail.style.color = '#f22c3d';
			notifyEmail.innerHTML = 'Email is illegal !'
			btn_submit_createa_account.disabled = "disabled";
			return;
	}
	
	const requestOptions = {
		method: 'POST',
		headers: {
			'content-type': 'application/json'
		}
	};
	
	const urlapi = "http://localhost:8080/shop_cars/api/register/checkEmailExisted/" + email;
	fetch(urlapi, requestOptions).then (value =>{
		
		return value.json();
	}).then (json =>{
		
		jsonstringify = JSON.stringify(json);
		result = JSON.parse(jsonstringify);
		if(result == false){
			notifyEmail.style.display = 'block';
			notifyEmail.style.color = '#2e95d3';
			notifyEmail.innerHTML = 'Email is valid'
			btn_submit_createa_account.removeAttribute("disabled");
		}
		else{
			notifyEmail.style.display = 'block';
			notifyEmail.style.color = '#f22c3d';
			notifyEmail.innerHTML = 'Email is existed'
			btn_submit_createa_account.disabled = "disabled";
			
		}		
		
	})
	
}

function checkPassIsValid() {

	var inputpassword = document.getElementById("password");
	var password = inputpassword.value;
	var notifyPassValid = document.getElementById("notifyPassValid");
	var strongPass = document.getElementById("strongPass");
    const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})/;
    var confirmpass = document.getElementById("Confirm-password");
	checkConfirmPass(confirmpass);
	if (regex.test(password)) {
		notifyPassValid.style.color = '#1a0dab';
		notifyPassValid.innerHTML = 'Password is valid!';
		strongPass.style.display = 'none';	
		notifyPassValid.style.display = 'block';
		btn_submit_createa_account.removeAttribute("disabled");
		
	}
	else {
		notifyPassValid.style.display = 'none';
		strongPass.style.display= 'block';
		btn_submit_createa_account.disabled = "disabled";
		}

	}


function checkConfirmPass(confirmPassInput) {
	
	var confirmPass = confirmPassInput.value;
	var inputpassword = document.getElementById("password");
	var password = inputpassword.value;
	var notifyConfirmPass = document.getElementById("notifyConfirmpass");
	if(confirmPass === password){
		notifyConfirmPass.style.display = 'block';
		notifyConfirmPass.style.color = '#065fd4';
		notifyConfirmPass.innerHTML = 'Password matched'
		btn_submit_createa_account.removeAttribute("disabled");
	}
	else {
		notifyConfirmPass.style.display = 'block';
		notifyConfirmPass.style.color = '#dd2c00';
		notifyConfirmPass.innerHTML = 'Password does not match'
		btn_submit_createa_account.disabled = "disabled";
	}
}


