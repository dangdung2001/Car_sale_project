<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE html>
<html>
<head>

<title><tiles:getAsString name="title" /></title>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous" />

<link href="<c:url value='/assets/css/style-prefix.css' />"
	rel="stylesheet">	
<!--
	    - google font link
	  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
</head>
<body>

	<!-- header -->
	<tiles:insertAttribute name="header" />

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<div class="row">
				<div style="border-radius: 20px;
				background-color: #fff8dc;
				box-shadow: rgba(100, 100, 111, 0.2) 0p"
					class="col-12 col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">
					<h1 class="mb-3 text-center">SIGN UP</h1>


					<!-- form register  -->
					<form action="/shop_cars/user/verifyemail" method="post"
						enctype="multipart/form-data" accept-charset="UTF-8" class="mb-3">

						<!-- avatar -->

						<div class="form-group">
							<label for="email">Avatar:</label> <input type="file"
								class="form-control" placeholder="insert image" id="avatar"
								name="file" required />
						</div>


						<div class="row">
							<div class="form-group col-12 col-sm-6">
								<label for="firstName">First name:</label> <input type="text"
									class="form-control" placeholder="First name" id="firstName"
									name="firstname" required />
							</div>
							<div class="form-group col-12 col-sm-6">
								<label for="lastName">Last name:</label> <input type="text"
									class="form-control" placeholder="Last name" id="lastName"
									name="lastname" required />
							</div>
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input
								onchange="checkEmailIsExisted()" type="email"
								class="form-control" placeholder="example@example.com"
								id="email" name="email" required /> <label id="notifyEmail"></label>
						</div>

						<!-- user name  -->
						<div class="form-group">
							<label for="username">Username: <p style="display: inline;font-size: 14px;">at least 8 characters</p></label> <input
								onchange="checkusernameisExisted()" type="text"
								class="form-control" placeholder="username" id="username"
								name="username" required />
							<lable id="notifyUsername" style="display= none;" />

						</div>

						<div class="form-group">
							<label for="password">Password:</label> <input
								oninput="checkPassIsValid()" type="password"
								class="form-control" id="password" name="password" required />

							<lable id="notifyPassValid"></lable>
							<ul style="display: block; font-size: 14px;" id='strongPass'>
								<li style="color: '#f22c3d'">- must contain at least one
									uppercase character</li>
								<li style="color: '#f22c3d'">- must contain at least one
									lowercase character</li>
								<li style="color: '#f22c3d'">- must contain at least one
									numeric character</li>
								<li style="color: '#f22c3d'">- Password must be eight
									characters or longer</li>
							</ul>
						</div>

						<div class="form-group">
							<label for="password">Confirm Password:</label> <input
								onchange="checkConfirmPass(this)" type="password"
								class="form-control" id="Confirm-password"
								name="confirmPassword" required /> <label
								id="notifyConfirmpass"></label>
						</div>

						<label>Birthday:</label>
						<div class="row no-gutters">
							<div class="form-group col-4">
								<label for="birthdayDay" class="sr-only">Birthday day</label> <select
									class="form-control" id="birthdayDay" name="day">
									<option value="">Day</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>
							</div>
							<div class="form-group col-4">
								<label for="birthdayMonth" class="sr-only">Birthday
									month</label> <select class="form-control" id="birthdayMonth"
									name="month">
									<option value="">Month</option>
									<option value="January">January</option>
									<option value="February">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
								</select>
							</div>
							<div class="form-group col-4">
								<label for="birthdayYear" class="sr-only">Birthday year</label>
								<select class="form-control" id="birthdayYear" name="year">

									<option value="1980">1980</option>
									<option value="1981">1981</option>
									<option value="1982">1982</option>
									<option value="1983">1983</option>
									<option value="1984">1984</option>
									<option value="1985">1985</option>
									<option value="1986">1986</option>
									<option value="1987">1987</option>
									<option value="1988">1988</option>
									<option value="1989">1989</option>
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
									<option value="1998">1998</option>
									<option value="1999">1999</option>
									<option value="2000">2000</option>
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>

								</select>
							</div>
						</div>

						<!-- address  -->
						<label>Address:</label>
						<div class="row no-gutters">
							<div class="form-group col-4">
								<select class="form-control" name="city" id="city"
									onchange="displayDistrictsByCodeCity()">
									<option value="01">Thành phố</option>
									<option value="01">Thành phố Hà Nội</option>
									<option value="02">Tỉnh Hà Giang</option>
									<option value="04">Tỉnh Cao Bằng</option>
									<option value="06">Tỉnh Bắc Kạn</option>
									<option value="08">Tỉnh Tuyên Quang</option>
									<option value="10">Tỉnh Lào Cai</option>
									<option value="11">Tỉnh Điện Biên</option>
									<option value="12">Tỉnh Lai Châu</option>
									<option value="14">Tỉnh Sơn La</option>
									<option value="15">Tỉnh Yên Bái</option>
									<option value="17">Tỉnh Hoà Bình</option>
									<option value="19">Tỉnh Thái Nguyên</option>
									<option value="20">Tỉnh Lạng Sơn</option>
									<option value="22">Tỉnh Quảng Ninh</option>
									<option value="24">Tỉnh Bắc Giang</option>
									<option value="25">Tỉnh Phú Thọ</option>
									<option value="26">Tỉnh Vĩnh Phúc</option>
									<option value="27">Tỉnh Bắc Ninh</option>
									<option value="30">Tỉnh Hải Dương</option>
									<option value="31">Thành phố Hải Phòng</option>
									<option value="33">Tỉnh Hưng Yên</option>
									<option value="34">Tỉnh Thái Bình</option>
									<option value="35">Tỉnh Hà Nam</option>
									<option value="36">Tỉnh Nam Định</option>
									<option value="37">Tỉnh Ninh Bình</option>
									<option value="38">Tỉnh Thanh Hóa</option>
									<option value="40">Tỉnh Nghệ An</option>
									<option value="42">Tỉnh Hà Tĩnh</option>
									<option value="44">Tỉnh Quảng Bình</option>
									<option value="45">Tỉnh Quảng Trị</option>
									<option value="46">Tỉnh Thừa Thiên Huế</option>
									<option value="48">Thành phố Đà Nẵng</option>
									<option value="49">Tỉnh Quảng Nam</option>
									<option value="51">Tỉnh Quảng Ngãi</option>
									<option value="52">Tỉnh Bình Định</option>
									<option value="54">Tỉnh Phú Yên</option>
									<option value="56">Tỉnh Khánh Hòa</option>
									<option value="58">Tỉnh Ninh Thuận</option>
									<option value="60">Tỉnh Bình Thuận</option>
									<option value="62">Tỉnh Kon Tum</option>
									<option value="64">Tỉnh Gia Lai</option>
									<option value="66">Tỉnh Đắk Lắk</option>
									<option value="67">Tỉnh Đắk Nông</option>
									<option value="68">Tỉnh Lâm Đồng</option>
									<option value="70">Tỉnh Bình Phước</option>
									<option value="72">Tỉnh Tây Ninh</option>
									<option value="74">Tỉnh Bình Dương</option>
									<option value="75">Tỉnh Đồng Nai</option>
									<option value="77">Tỉnh Bà Rịa - Vũng Tàu</option>
									<option value="79">Thành phố Hồ Chí Minh</option>
									<option value="80">Tỉnh Long An</option>
									<option value="82">Tỉnh Tiền Giang</option>
									<option value="83">Tỉnh Bến Tre</option>
									<option value="84">Tỉnh Trà Vinh</option>
									<option value="86">Tỉnh Vĩnh Long</option>
									<option value="87">Tỉnh Đồng Tháp</option>
									<option value="89">Tỉnh An Giang</option>
									<option value="91">Tỉnh Kiên Giang</option>
									<option value="92">Thành phố Cần Thơ</option>
									<option value="93">Tỉnh Hậu Giang</option>
									<option value="94">Tỉnh Sóc Trăng</option>
									<option value="95">Tỉnh Bạc Liêu</option>
									<option value="96">Tỉnh Cà Mau</option>
								</select>
							</div>

							<div class="form-group col-4">
								<select class="form-control" name="district" id="districts"
									onchange="displayWardsByCodeDistrict()">
									<option value="">Quận-Huyện</option>

								</select>
							</div>

							<div class="form-group col-4">
								<select class="form-control" name="ward" id="wards">
									<option value="">Phường-Xã</option>

								</select>
							</div>

						</div>

						<div class="form-check form-check-inline">
							<label class="form-check-label"> <input type="radio"
								name="gender" id="exampleRadios1" class="form-check-input"
								value="man" checked /> Man
							</label>
						</div>
						<div class="form-check form-check-inline">
							<label class="form-check-label"> <input type="radio"
								name="gender" id="exampleRadios2" class="form-check-input"
								value="woman" /> Woman
							</label>
						</div>

						<!-- button submit form -->
						<button id='btn_submit_createa_account' type="submit"
							class="btn btn-primary btn-block mb-3">Create account</button>

						<div class="alert alert-info small" role="alert">
							By clicking above you agree to our <a href="#" class="alert-link">Terms
								&amp; Conditions</a> and our <a href="#" class="alert-link">Privacy
								Policy</a>.
						</div>
						<div class="text-center">
							<p>Already have an account?</p>
							<a href="#" class="btn btn-success">Login</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<tiles:insertAttribute name="footer" />

	<!-- Optional JavaScript -->

	<script type="text/javascript" src="<c:url value='/assets/js/register.js'/>"></script>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
		crossorigin="anonymous"></script>
		
		
		<!--
	    - ionicon link
	  -->
		<script type="module"
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
