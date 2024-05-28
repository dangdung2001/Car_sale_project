<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value='/assets/css/profile.css' />" />
<!--
	    - favicon
	  -->
<link rel="shortcut icon"
	href="<c:url value="/assets/images/logo/favicon.ico" />"
	type="image/x-icon">


<!--
	    - custom css link
	  -->

<link href="<c:url value="/assets/css/style-prefix.css" />"
	rel="stylesheet">
<!--
	    - google font link
	  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>Document</title>
</head>

<body>

	<!-- Header -->
	<tiles:insertAttribute name="header" />


	<div class="container BtZOqO">

		<!-- head -->
		<div class="epUsgf">
			<div class="u6SDuY">
				<a class="w37kB7" href="/user/account/profile">
					<div class="shopee-avatar">
						<div class="shopee-avatar__placeholder">
							<svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0"
								y="0" class="shopee-svg-icon icon-headshot">
								<g>
									<circle cx="7.5" cy="4.5" fill="none" r="3.8"
									stroke-miterlimit="10"></circle>
									<path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none"
									stroke-linecap="round" stroke-miterlimit="10"></path>
								</g>
							</svg>
						</div>
						<img class="shopee-avatar__img"
							src="https://tse4.mm.bing.net/th?id=OIP.oXEN2RJa-nkestHzC4yxVQHaJ4&pid=Api&P=0&h=180">
					</div>
				</a>
				<div class="vDMlrj">
					<div id="usernameHeader" class="HtUK6o">dangdung36</div>
					<div>
						<a class="Kytn1s" href="/user/account/profile"><svg width="12"
								height="12" viewBox="0 0 12 12"
								xmlns="http://www.w3.org/2000/svg" style="margin-right: 4px;">
								<path
									d="M8.54 0L6.987 1.56l3.46 3.48L12 3.48M0 8.52l.073 3.428L3.46 12l6.21-6.18-3.46-3.48"
									fill="#9B9B9B" fill-rule="evenodd"></path>
							</svg>Sửa hồ sơ</a>
					</div>
				</div>
			</div>
			<div class="WDmP96">

				<div class="stardust-dropdown stardust-dropdown--open">
					<div class="stardust-dropdown__item-header">
						<a onclick="displayProfile()" class="jHbobZ" href="#">
							<div class="U7dHrp">
								<img
									src="https://down-vn.img.susercontent.com/file/ba61750a46794d8847c3f463c5e71cc4">
							</div>
							<div class="mY8KSl">
								<span class="fnmbfn">Tài khoản của tôi</span>
							</div>
						</a>
					</div>
					<div id="listItemProfile"
						class="stardust-dropdown__item-body--open">
						<div style="display: block;" class="hGOWVP">
							<a onclick="displayProfile()" class="HVZpoT VfX643" href="#"><span
								class="PcLlJr">Hồ sơ</span></a> <a onclick="displayAddress()"
								class="HVZpoT" href="#"><span class="PcLlJr">Địa chỉ</span></a>
							<a onclick="displayChangePass()" class="HVZpoT" href="#"><span
								class="PcLlJr">Đổi mật khẩu</span></a>
						</div>
					</div>
				</div>
				<div class="stardust-dropdown">
					<div class="stardust-dropdown__item-header">
						<a onclick="displayOders()" class="jHbobZ" href="#">
							<div class="U7dHrp">
								<img
									src="https://down-vn.img.susercontent.com/file/f0049e9df4e536bc3e7f140d071e9078">
							</div>
							<div class="mY8KSl">
								<span class="fnmbfn">Đơn Mua</span>
							</div>
						</a>
					</div>
					<div class="stardust-dropdown__item-body">
						<div class="hGOWVP"></div>
					</div>
				</div>

			</div>
		</div>




		<!-- body -->


		<!-- profile -->
		<div id="profile" class="utB99K content_body">
			<div class="SFztPl">
				<h1 class="BVrKV_">Hồ sơ của tôi</h1>
				<div class="QcW5xy">Quản lý thông tin hồ sơ để bảo mật tài
					khoản</div>
			</div>
			<div class="RCnc9v">
				<div class="HrBg9Q">
					<form>
						<table class="bQkdAY">
							<tr>
								<td class="f1ZOv_"><label>Tên đăng nhập</label></td>
								<td class="o6L4e0">
									<div class="e_Vt__">
										<div id="username" class="PBfYlq"></div>
										<button class="clo49Q"></button>
									</div>
								</td>
							</tr>
							<tr>
								<td class="f1ZOv_"><label>Tên</label></td>
								<td class="o6L4e0">
									<div>
										<div id="fullname" class="NGoa5Z">
											<input id="fulname" type="text" placeholder="Phạm Đăng Dũng"
												class="kKnR04" value="">
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="f1ZOv_"><label>Email</label></td>
								<td class="o6L4e0">
									<div class="e_Vt__">
										<div id="email" class="PBfYlq"></div>
										<button class="clo49Q">Thay đổi</button>
									</div>
								</td>
							</tr>
							<tr>
								<td class="f1ZOv_"><label>Số điện thoại</label></td>
								<td class="o6L4e0">
									<div class="e_Vt__">
										<div class="PBfYlq"></div>
										<button class="clo49Q">Thêm</button>
									</div>
								</td>
							</tr>
							<tr>
								<td class="f1ZOv_"><label>Giới tính</label></td>
								<td class="o6L4e0">
									<div class="prDHtK">
										<div class="stardust-radio-group" role="radiogroup">
											<div class="stardust-radio stardust-radio--checked"
												tabindex="0" role="radio" aria-checked="true">

												<div class="stardust-radio__content">
													<div id="gender" class="stardust-radio__label">Nam</div>
												</div>
											</div>


										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="f1ZOv_"><label>Ngày sinh</label></td>
								<td class="o6L4e0">
									<div class="BWTNUj">
										<div class="LFFx8j ZSBTIH" style="position: relative;">
											<div class="DbpS_O hu9cKa">
												<span id="day" ></span>
												
											</div>

											
										<div class="LFFx8j ZSBTIH" style="position: relative;">
											<div class="DbpS_O hu9cKa">
												<span id='month' class="nnElTN"></span>
												
											</div>

											
										</div>
										<div style="width:80px;" class="LFFx8j ZSBTIH" style="position: relative;">
											<div class="DbpS_O hu9cKa">
												<span id='year' class="nnElTN"></span>
												
											</div>

											
											
										</div>
									</div>
								</td>
							</tr>

						</table>
					</form>
				</div>
				<div class="nv7bOz">
					<div class="TJWfNh">
						<div class="nMPYiw" role="header">
							<div class="cW0oBM"
								style="background-image: url(https://tse4.mm.bing.net/th?id=OIP.oXEN2RJa-nkestHzC4yxVQHaJ4&pid=Api&P=0&h=180);">
							</div>
						</div>
						<input class="XbWdh7" type="file" accept=".jpg,.jpeg,.png">
						<button type="button" class="btn btn-light btn--m btn--inline">Chọn
							ảnh</button>
						<div class="T_8sqN">
							<div class="JIExfq">Dụng lượng file tối đa 1 MB</div>
							<div class="JIExfq">Định dạng:.JPEG, .PNG</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- address -->

		<div id="address" style="display: none; margin-left: 40px;"
			class="YTmAr0 content_body">
			<div style="width: 600px; display: flex;" class="qtYn7m">
				<div class="Oe_bEi">
					<div class="lOB9lY">Địa chỉ của tôi</div>
					<div class="rT9Vbd"></div>
				</div>
				<div>
					<div class="y3hZ9E">
						<div style="display: flex;">
							<button
								class="shopee-button-solid shopee-button-solid--primary qTzF0g">
								<div class="psXjeQ">
									<div class="zNqMl2">
										<svg enable-background="new 0 0 10 10" viewBox="0 0 10 10"
											x="0" y="0" class="shopee-svg-icon icon-plus-sign">
											<polygon
												points="10 4.5 5.5 4.5 5.5 0 4.5 0 4.5 4.5 0 4.5 0 5.5 4.5 5.5 4.5 10 5.5 10 5.5 5.5 10 5.5">
											</polygon>
										</svg>
									</div>
									<div>Thêm địa chỉ mới</div>
								</div>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="KK80cT">
				<div class="stardust-spinner--hidden stardust-spinner">
					<div class="stardust-spinner__background">
						<div class="stardust-spinner__main" role="img">
							<svg width="34" height="12" viewBox="-1 0 33 12">
								<circle class="stardust-spinner__spinner" cx="4" cy="6" r="4"
									fill="#EE4D2D"></circle>
								<circle class="stardust-spinner__spinner" cx="16" cy="6" r="4"
									fill="#EE4D2D"></circle>
								<circle class="stardust-spinner__spinner" cx="28" cy="6" r="4"
									fill="#EE4D2D"></circle>
							</svg>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="OrZkCF">
					<div class="e65FdS">Địa chỉ</div>

					
					<!-- display address -->
					
					<div class="UUD4No SXp5o_">
						<div class="_RPpod">
							<div role="heading" class="X57SfF V4So7f">
								<div
									id="address-card_58a5145f-274e-48f0-878e-7e2495f633d2_header"
									class="QyRpwQ lWXnp3">
									<span class="Fi1zsg OwAhWT">
										<div id="name_address" class="mjiDsj">phạm đăng dũng</div>
									</span>
									<div class="YJU6OK"></div>
									<div role="row" class="N_WJUf lw_xYb E24UKj">(+84)
										385685581</div>
								</div>
								<div class="YziUfM">
									<button class="T_oZqJ">Cập nhật</button>
								</div>
							</div>
							<div
								id="address-card_58a5145f-274e-48f0-878e-7e2495f633d2_content"
								role="heading" class="X57SfF V4So7f">
								<div class="QyRpwQ lWXnp3">
									<div class="We6XvC">
										<div role="row" class="E24UKj">thôn 1 - định công</div>
										<div role="row" class="E24UKj">Xã Định Công, Huyện Yên
											Định, Thanh Hóa</div>
									</div>
								</div>
								<div class="KFu3R3 YziUfM">
									<button class="k8tV5Y zvyzwn zDPndA" disabled="">Thiết
										lập mặc định</button>
								</div>
							</div>
							<div id="address-card_58a5145f-274e-48f0-878e-7e2495f633d2_badge"
								role="row" class="vy2yND E24UKj">
								<span role="mark" class="wZ_1w7 aCY_5O ZDVTqW">Mặc định</span>
							</div>
						</div>
					</div>
					<!-- end address item -->
					
					<div class="UUD4No SXp5o_">
						<div class="_RPpod">
							<div role="heading" class="X57SfF V4So7f">
								<div
									id="address-card_e410527b-0954-4245-8e4f-976a4a122fc8_header"
									class="QyRpwQ lWXnp3">
									<span class="Fi1zsg OwAhWT">
										<div class="mjiDsj">Phạm dũng</div>
									</span>
									<div class="YJU6OK"></div>
									<div role="row" class="N_WJUf lw_xYb E24UKj">(+84)
										339185601</div>
								</div>
								<div class="YziUfM">
									<button class="T_oZqJ">Cập nhật</button>
									<button class="T_oZqJ">Xóa</button>
								</div>
							</div>
							<div
								id="address-card_e410527b-0954-4245-8e4f-976a4a122fc8_content"
								role="heading" class="X57SfF V4So7f">
								<div class="QyRpwQ lWXnp3">
									<div class="We6XvC">
										<div role="row" class="E24UKj">236 Khương Đình</div>
										<div role="row" class="E24UKj">Phường Hạ Đình, Quận
											Thanh Xuân, Hà Nội</div>
									</div>
								</div>
								<div class="KFu3R3 YziUfM">
									<button class="k8tV5Y zvyzwn zDPndA">Thiết lập mặc
										định</button>
								</div>
							</div>
							<div id="address-card_e410527b-0954-4245-8e4f-976a4a122fc8_badge"
								role="row" class="vy2yND E24UKj"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- change password -->
		<div id="change_pass" style="display: none;"
			class="mainDiv content_body">
			<div class="cardStyle">
				<form action="#" method="post" name="changePassForm" id="changePassForm">
					
					<p style ="color:#065fd4;" id="notifyChangePass" class="inputDiv"></p>
					
					<div class="inputDiv">
						<label class="inputLabel" for="password">New Password</label> <input
							type="password" id="password" name="password" required>
					</div>

					<div class="inputDiv">
						<label class="inputLabel" for="confirmPassword">Confirm
							Password</label> <input type="password" id="confirmPassword"
							name="confirmPassword">
					</div>

					<div class="buttonWrapper">
						<button type="submit" id="submitButton"
							class="submitButton pure-button pure-button-primary">
							<span>Continue</span> <span id="loader"></span>
						</button>
					</div>

				</form>
			</div>
		</div>

		<!-- oder -->

		<div id="oders" style="width: 100%; display: none;"
			class="fkIi86 content_body">
			<div style="display: contents;">
				<title></title>
				<h1 class="a11y-hidden"></h1>
				<div class="ashFMQ">
					<div></div>
					<section class="QmO3Bu" aria-role="tablist">
						<h2 class="a11y-hidden"></h2>
						<a class="KI5har mRVNLm" title="Tất cả" aria-role="tab"
							aria-selected="true"
							aria-controls="olp_panel_id-0.011495566464603701"
							id="olp_tab_id-0.011495566464603701" href="#"><span
							class="NoH9rC">Tất cả</span></a> <a class="KI5har"
							title="Chờ thanh toán" aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.6878425174620506"
							id="olp_tab_id-0.6878425174620506" href="#"><span
							class="NoH9rC">Chờ thanh toán</span></a> <a class="KI5har"
							title="Vận chuyển" aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.6875429166932798"
							id="olp_tab_id-0.6875429166932798" href="#"><span
							class="NoH9rC">Vận chuyển</span></a> <a class="KI5har"
							title="Chờ giao hàng" aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.773446413725138"
							id="olp_tab_id-0.773446413725138" href="#"><span
							class="NoH9rC">Chờ giao hàng</span></a> <a class="KI5har"
							title="Hoàn thành" aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.9298067800804086"
							id="olp_tab_id-0.9298067800804086" href="#"><span
							class="NoH9rC">Hoàn thành</span></a> <a class="KI5har" title="Đã hủy"
							aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.8340847480608564"
							id="olp_tab_id-0.8340847480608564" href="#"><span
							class="NoH9rC">Đã hủy</span></a> <a class="KI5har"
							title="Trả hàng/Hoàn tiền" aria-role="tab" aria-selected="false"
							aria-controls="olp_panel_id-0.22121322300552904"
							id="olp_tab_id-0.22121322300552904" href="#"><span
							class="NoH9rC">Trả hàng/Hoàn tiền</span></a>
					</section>
					<section>
						<h2 class="a11y-hidden"></h2>
						<div class="Gv8cvd">
							<svg width="19px" height="19px" viewBox="0 0 19 19">
								<g id="Search-New" stroke-width="1" fill="none"
									fill-rule="evenodd">
									<g id="my-purchase-copy-27"
									transform="translate(-399.000000, -221.000000)"
									stroke-width="2">
										<g id="Group-32" transform="translate(400.000000, 222.000000)">
											<circle id="Oval-27" cx="7" cy="7" r="7"></circle>
											<path d="M12,12 L16.9799555,16.919354" id="Path-184"
									stroke-linecap="round" stroke-linejoin="round"></path>
										</g>
									</g>
								</g>
							</svg>
							<input aria-label="" role="search" autocomplete="off"
								placeholder="Bạn có thể tìm kiếm theo tên Shop, ID đơn hàng hoặc Tên Sản phẩm"
								value="">
						</div>
					</section>
					<main aria-role="tabpanel"
						aria-labelledby="olp_tab_id-0.011495566464603701"
						id="olp_panel_id-0.011495566464603701">
						<h2 class="a11y-hidden"></h2>
						<div>

							<!-- product -->

							<div class="YL_VlX">
								<div>
									<div class="J632se">
										<section>
											<h3 class="a11y-hidden"></h3>
											<div class="P2JMvg">
												<div class="RBPP9y">
													<div class="Koi0Pw">
														<svg xmlns="http://www.w3.org/2000/svg" width="62"
															height="16" fill="none">
															<title>Preferred Seller</title>
															<path fill="#EE4D2D" fill-rule="evenodd"
																d="M0 2C0 .9.9 0 2 0h58a2 2 0 012 2v12a2 2 0 01-2 2H2a2 2 0 01-2-2V2z"
																clip-rule="evenodd"></path>
															<g clip-path="url(#clip0)">
																<path fill="#fff"
																d="M8.7 13H7V8.7L5.6 6.3A828.9 828.9 0 004 4h2l2 3.3a1197.3 1197.3 0 002-3.3h1.6L8.7 8.7V13zm7.9-1.7h1.7c0 .3-.2.6-.5 1-.2.3-.5.5-1 .7l-.6.2h-.8c-.5 0-1 0-1.5-.2l-1-.8a4 4 0 01-.9-2.4c0-1 .3-1.9 1-2.6a3 3 0 012.4-1l.8.1a2.8 2.8 0 011.3.7l.4.6.3.8V10h-4.6l.2 1 .4.7.6.5.7.1c.4 0 .7 0 .9-.2l.2-.6v-.1zm0-2.3l-.1-1-.3-.3c0-.2-.1-.2-.2-.3l-.8-.2c-.3 0-.6.2-.9.5l-.3.5a4 4 0 00-.3.8h3zm-1.4-4.2l-.7.7h-1.4l1.5-2h1.1l1.5 2h-1.4l-.6-.7zm8.1 1.6H25V13h-1.7v-.5.1H23l-.7.5-.9.1-1-.1-.7-.4c-.3-.2-.4-.5-.6-.8l-.2-1.3V6.4h1.7v3.7c0 1 0 1.6.3 1.7.2.2.5.3.7.3h.4l.4-.2.3-.3.3-.5.2-1.4V6.4zM34.7 13a11.2 11.2 0 01-1.5.2 3.4 3.4 0 01-1.3-.2 2 2 0 01-.5-.3l-.3-.5-.2-.6V7.4h-1.2v-1h1.1V5h1.7v1.5h1.9v1h-2v3l.2 1.2.1.3.2.2h.3l.2.1c.2 0 .6 0 1.3-.3v1zm2.4 0h-1.7V3.5h1.7v3.4a3.7 3.7 0 01.2-.1 2.8 2.8 0 013.4 0l.4.4.2.7V13h-1.6V9.3 8.1l-.4-.6-.6-.2a1 1 0 00-.4.1 2 2 0 00-.4.2l-.3.3a3 3 0 00-.3.5l-.1.5-.1.9V13zm5.4-6.6H44V13h-1.6V6.4zm-.8-.9l1.8-2h1.8l-2.1 2h-1.5zm7.7 5.8H51v.5l-.4.5a2 2 0 01-.4.4l-.6.3-1.4.2c-.5 0-1 0-1.4-.2l-1-.7c-.3-.3-.5-.7-.6-1.2-.2-.4-.3-.9-.3-1.4 0-.5.1-1 .3-1.4a2.6 2.6 0 011.6-1.8c.4-.2.9-.3 1.4-.3.6 0 1 .1 1.5.3.4.1.7.4 1 .6l.2.5.1.5h-1.6c0-.3-.1-.5-.3-.6-.2-.2-.4-.3-.8-.3s-.8.2-1.2.6c-.3.4-.4 1-.4 2 0 .9.1 1.5.4 1.8.4.4.8.6 1.2.6h.5l.3-.2.2-.3v-.4zm4 1.7h-1.6V3.5h1.7v3.4a3.7 3.7 0 01.2-.1 2.8 2.8 0 013.4 0l.3.4.3.7V13h-1.6V9.3L56 8.1c-.1-.3-.2-.5-.4-.6l-.6-.2a1 1 0 00-.3.1 2 2 0 00-.4.2l-.3.3a3 3 0 00-.3.5l-.2.5V13z">
																</path>
															</g>
															<defs>
																<clipPath id="clip0">
																	<path fill="#fff" d="M0 0h55v16H0z"
																transform="translate(4)"></path>
																</clipPath>
															</defs>
														</svg>
													</div>
													<div class="UDaMW3" tabindex="0">ỐP LƯNG IPHONE -SIÊU
														THỊ AWiFi</div>
													<div class="B2SOGC">
														<button class="stardust-button stardust-button--primary">
															<svg viewBox="0 0 17 17"
																class="shopee-svg-icon icon-btn-chat"
																style="fill: white;">
																<g fill-rule="evenodd">
																	<path
																	d="M13.89 0C14.504 0 15 .512 15 1.144l-.003.088-.159 2.117.162.001c.79 0 1.46.558 1.618 1.346l.024.15.008.154v9.932a1.15 1.15 0 01-1.779.963l-.107-.08-1.882-1.567-7.962.002a1.653 1.653 0 01-1.587-1.21l-.036-.148-.021-.155-.071-.836h-.01L.91 13.868a.547.547 0 01-.26.124L.556 14a.56.56 0 01-.546-.47L0 13.429V1.144C0 .512.497 0 1.11 0h12.78zM15 4.65l-.259-.001-.461 6.197c-.045.596-.527 1.057-1.106 1.057L4.509 11.9l.058.69.01.08a.35.35 0 00.273.272l.07.007 8.434-.001 1.995 1.662.002-9.574-.003-.079a.35.35 0 00-.274-.3L15 4.65zM13.688 1.3H1.3v10.516l1.413-1.214h10.281l.694-9.302zM4.234 5.234a.8.8 0 011.042-.077l.187.164c.141.111.327.208.552.286.382.131.795.193 1.185.193s.803-.062 1.185-.193c.225-.078.41-.175.552-.286l.187-.164a.8.8 0 011.042 1.209c-.33.33-.753.579-1.26.753A5.211 5.211 0 017.2 7.4a5.211 5.211 0 01-1.706-.28c-.507-.175-.93-.424-1.26-.754a.8.8 0 010-1.132z"
																	fill-rule="nonzero"></path>
																</g>
															</svg>
															<span>chat</span>
														</button>
													</div>
													<a class="Mr26O7" href="/awifi?entryPoint=OrderDetail">
														<div class="stardust-button">
															<svg enable-background="new 0 0 15 15"
																viewBox="0 0 15 15" x="0" y="0"
																class="shopee-svg-icon icon-btn-shop">
																<path
																	d="m15 4.8c-.1-1-.8-2-1.6-2.9-.4-.3-.7-.5-1-.8-.1-.1-.7-.5-.7-.5h-8.5s-1.4 1.4-1.6 1.6c-.4.4-.8 1-1.1 1.4-.1.4-.4.8-.4 1.1-.3 1.4 0 2.3.6 3.3l.3.3v3.5c0 1.5 1.1 2.6 2.6 2.6h8c1.5 0 2.5-1.1 2.5-2.6v-3.7c.1-.1.1-.3.3-.3.4-.8.7-1.7.6-3zm-3 7c0 .4-.1.5-.4.5h-8c-.3 0-.5-.1-.5-.5v-3.1c.3 0 .5-.1.8-.4.1 0 .3-.1.3-.1.4.4 1 .7 1.5.7.7 0 1.2-.1 1.6-.5.5.3 1.1.4 1.6.4.7 0 1.2-.3 1.8-.7.1.1.3.3.5.4.3.1.5.3.8.3zm.5-5.2c0 .1-.4.7-.3.5l-.1.1c-.1 0-.3 0-.4-.1s-.3-.3-.5-.5l-.5-1.1-.5 1.1c-.4.4-.8.7-1.4.7-.5 0-.7 0-1-.5l-.6-1.1-.5 1.1c-.3.5-.6.6-1.1.6-.3 0-.6-.2-.9-.8l-.5-1-.7 1c-.1.3-.3.4-.4.6-.1 0-.3.1-.3.1s-.4-.4-.4-.5c-.4-.5-.5-.9-.4-1.5 0-.1.1-.4.3-.5.3-.5.4-.8.8-1.2.7-.8.8-1 1-1h7s .3.1.8.7c.5.5 1.1 1.2 1.1 1.8-.1.7-.2 1.2-.5 1.5z">
																</path>
															</svg>
															<span>Xem Shop</span>
														</div>
													</a>
												</div>
												<div class="jgIyoX">
													<div class="LY5oll">
														<a class="lXbYsi"
															href="/user/purchase/order/119338331267953?type=6"><span
															class="O2yAdQ"><svg
																	enable-background="new 0 0 15 15" viewBox="0 0 15 15"
																	x="0" y="0"
																	class="shopee-svg-icon icon-free-shipping-line">
																	<g>
																		<line fill="none" stroke-linejoin="round"
																		stroke-miterlimit="10" x1="8.6" x2="4.2" y1="9.8"
																		y2="9.8"></line>
																		<circle cx="3" cy="11.2" fill="none" r="2"
																		stroke-miterlimit="10"></circle>
																		<circle cx="10" cy="11.2" fill="none" r="2"
																		stroke-miterlimit="10"></circle>
																		<line fill="none" stroke-miterlimit="10" x1="10.5"
																		x2="14.4" y1="7.3" y2="7.3">
																		</line>
																		<polyline fill="none"
																		points="1.5 9.8 .5 9.8 .5 1.8 10 1.8 10 9.1"
																		stroke-linejoin="round" stroke-miterlimit="10"></polyline>
																		<polyline fill="none"
																		points="9.9 3.8 14 3.8 14.5 10.2 11.9 10.2"
																		stroke-linejoin="round" stroke-miterlimit="10"></polyline>
																	</g>
																</svg> Giao hàng thành công</span></a>

													</div>
													<div class="bv3eJE" tabindex="0">Hoàn thành</div>
												</div>
											</div>
										</section>
										<div class="kG_yF0"></div>
										<section>
											<h3 class="a11y-hidden"></h3>
											<a aria-label=""
												href="/user/purchase/order/119338331267953?type=6">
												<div>
													<div class="bdAfgU">
														<div class="FNHV0p">
															<div>
																<section>
																	<div class="mZ1OWk">
																		<div class="dJaa92">
																			<img
																				src="https://down-vn.img.susercontent.com/file/13c7287bce651a7cee01a681d1f4fe1f_tn"
																				class="gQuHsZ" alt="" tabindex="0">
																			<div class="nmdHRf">
																				<div>
																					<div class="zWrp4w">
																						<span class="DWVWOJ" tabindex="0">Tai nghe
																							nhét tai có dây U19 giắc cắm 3.5mm tích hợp micro
																							chất lượng cao dành cho điện thoại - Awifi Case
																							L3-2</span>
																					</div>
																				</div>
																				<div>
																					<div class="rsautk" tabindex="0">Phân loại
																						hàng: Tai Nghe U19 Đen</div>
																					<div class="j3I_Nh" tabindex="0">x1</div>
																				</div>
																			</div>
																		</div>
																		<div class="ylYzwa" tabindex="0">
																			<div class="YRp1mm">
																				<span class="q6Gzj5">₫28.000</span><span
																					class="nW_6Oi PNlXhK">₫13.000</span>
																			</div>
																		</div>
																	</div>
																</section>
															</div>
															<div class="PB3XKx"></div>
														</div>
													</div>
												</div>
											</a>
										</section>
										<div class="Ze0Icc"></div>
									</div>
								</div>
								<div class="peteXU">
									<div class="IVFywZ HmaSt0"></div>
									<div class="IVFywZ fT_AQM"></div>
								</div>
								<div class="LwXnUQ">
									<div class="NWUSQP">
										<span class="R_ufN9">
											<div class="afBScK" tabindex="0">
												<svg width="16" height="17" viewBox="0 0 253 263"
													fill="none" xmlns="http://www.w3.org/2000/svg">
													<title>Shopee Guarantee</title>
													<path fill-rule="evenodd" clip-rule="evenodd"
														d="M126.5 0.389801C126.5 0.389801 82.61 27.8998 5.75 26.8598C5.08763 26.8507 4.43006 26.9733 3.81548 27.2205C3.20091 27.4677 2.64159 27.8346 2.17 28.2998C1.69998 28.7657 1.32713 29.3203 1.07307 29.9314C0.819019 30.5425 0.688805 31.198 0.689995 31.8598V106.97C0.687073 131.07 6.77532 154.78 18.3892 175.898C30.003 197.015 46.7657 214.855 67.12 227.76L118.47 260.28C120.872 261.802 123.657 262.61 126.5 262.61C129.343 262.61 132.128 261.802 134.53 260.28L185.88 227.73C206.234 214.825 222.997 196.985 234.611 175.868C246.225 154.75 252.313 131.04 252.31 106.94V31.8598C252.31 31.1973 252.178 30.5414 251.922 29.9303C251.667 29.3191 251.292 28.7649 250.82 28.2998C250.35 27.8358 249.792 27.4696 249.179 27.2225C248.566 26.9753 247.911 26.852 247.25 26.8598C170.39 27.8998 126.5 0.389801 126.5 0.389801Z"
														fill="#ee4d2d"></path>
													<path fill-rule="evenodd" clip-rule="evenodd"
														d="M207.7 149.66L119.61 107.03C116.386 105.472 113.914 102.697 112.736 99.3154C111.558 95.9342 111.772 92.2235 113.33 88.9998C114.888 85.7761 117.663 83.3034 121.044 82.1257C124.426 80.948 128.136 81.1617 131.36 82.7198L215.43 123.38C215.7 120.38 215.85 117.38 215.85 114.31V61.0298C215.848 60.5592 215.753 60.0936 215.57 59.6598C215.393 59.2232 215.128 58.8281 214.79 58.4998C214.457 58.1705 214.063 57.909 213.63 57.7298C213.194 57.5576 212.729 57.4727 212.26 57.4798C157.69 58.2298 126.5 38.6798 126.5 38.6798C126.5 38.6798 95.31 58.2298 40.71 57.4798C40.2401 57.4732 39.7735 57.5602 39.3376 57.7357C38.9017 57.9113 38.5051 58.1719 38.1709 58.5023C37.8367 58.8328 37.5717 59.2264 37.3913 59.6604C37.2108 60.0943 37.1186 60.5599 37.12 61.0298V108.03L118.84 147.57C121.591 148.902 123.808 151.128 125.129 153.884C126.45 156.64 126.797 159.762 126.113 162.741C125.429 165.72 123.755 168.378 121.363 170.282C118.972 172.185 116.006 173.221 112.95 173.22C110.919 173.221 108.915 172.76 107.09 171.87L40.24 139.48C46.6407 164.573 62.3785 186.277 84.24 200.16L124.49 225.7C125.061 226.053 125.719 226.24 126.39 226.24C127.061 226.24 127.719 226.053 128.29 225.7L168.57 200.16C187.187 188.399 201.464 170.892 209.24 150.29C208.715 150.11 208.2 149.9 207.7 149.66Z"
														fill="#fff"></path>
												</svg>
											</div>
										</span><label class="juCcT0">Thành tiền:</label>
										<div class="t7TQaf" tabindex="0"
											aria-label="Thành tiền: ₫29.500">₫29.500</div>
									</div>
								</div>
								<div class="yyqgYp">
									<div class="iwUeSD">
										<div></div>
									</div>
									<section class="po9nwN">
										<h3 class="a11y-hidden"></h3>
										<div class="aAXjeK">
											<div>
												<button
													class="stardust-button stardust-button--primary QY7kZh">Mua
													lại</button>
											</div>
										</div>
										<div class="hbQXWm">
											<div>
												<button
													class="stardust-button stardust-button--secondary QY7kZh">Liên
													hệ Người bán</button>
											</div>
										</div>
									</section>
								</div>
							</div>
							<!-- end product -->




							<div class="YL_VlX">
								<div>
									<div class="J632se">
										<section>
											<h3 class="a11y-hidden"></h3>
											<div class="P2JMvg">
												<div class="RBPP9y">
													<div class="Koi0Pw">
														<svg xmlns="http://www.w3.org/2000/svg" width="62"
															height="16" fill="none">
															<title>Preferred Seller</title>
															<path fill="#EE4D2D" fill-rule="evenodd"
																d="M0 2C0 .9.9 0 2 0h58a2 2 0 012 2v12a2 2 0 01-2 2H2a2 2 0 01-2-2V2z"
																clip-rule="evenodd"></path>
															<g clip-path="url(#clip0)">
																<path fill="#fff"
																d="M8.7 13H7V8.7L5.6 6.3A828.9 828.9 0 004 4h2l2 3.3a1197.3 1197.3 0 002-3.3h1.6L8.7 8.7V13zm7.9-1.7h1.7c0 .3-.2.6-.5 1-.2.3-.5.5-1 .7l-.6.2h-.8c-.5 0-1 0-1.5-.2l-1-.8a4 4 0 01-.9-2.4c0-1 .3-1.9 1-2.6a3 3 0 012.4-1l.8.1a2.8 2.8 0 011.3.7l.4.6.3.8V10h-4.6l.2 1 .4.7.6.5.7.1c.4 0 .7 0 .9-.2l.2-.6v-.1zm0-2.3l-.1-1-.3-.3c0-.2-.1-.2-.2-.3l-.8-.2c-.3 0-.6.2-.9.5l-.3.5a4 4 0 00-.3.8h3zm-1.4-4.2l-.7.7h-1.4l1.5-2h1.1l1.5 2h-1.4l-.6-.7zm8.1 1.6H25V13h-1.7v-.5.1H23l-.7.5-.9.1-1-.1-.7-.4c-.3-.2-.4-.5-.6-.8l-.2-1.3V6.4h1.7v3.7c0 1 0 1.6.3 1.7.2.2.5.3.7.3h.4l.4-.2.3-.3.3-.5.2-1.4V6.4zM34.7 13a11.2 11.2 0 01-1.5.2 3.4 3.4 0 01-1.3-.2 2 2 0 01-.5-.3l-.3-.5-.2-.6V7.4h-1.2v-1h1.1V5h1.7v1.5h1.9v1h-2v3l.2 1.2.1.3.2.2h.3l.2.1c.2 0 .6 0 1.3-.3v1zm2.4 0h-1.7V3.5h1.7v3.4a3.7 3.7 0 01.2-.1 2.8 2.8 0 013.4 0l.4.4.2.7V13h-1.6V9.3 8.1l-.4-.6-.6-.2a1 1 0 00-.4.1 2 2 0 00-.4.2l-.3.3a3 3 0 00-.3.5l-.1.5-.1.9V13zm5.4-6.6H44V13h-1.6V6.4zm-.8-.9l1.8-2h1.8l-2.1 2h-1.5zm7.7 5.8H51v.5l-.4.5a2 2 0 01-.4.4l-.6.3-1.4.2c-.5 0-1 0-1.4-.2l-1-.7c-.3-.3-.5-.7-.6-1.2-.2-.4-.3-.9-.3-1.4 0-.5.1-1 .3-1.4a2.6 2.6 0 011.6-1.8c.4-.2.9-.3 1.4-.3.6 0 1 .1 1.5.3.4.1.7.4 1 .6l.2.5.1.5h-1.6c0-.3-.1-.5-.3-.6-.2-.2-.4-.3-.8-.3s-.8.2-1.2.6c-.3.4-.4 1-.4 2 0 .9.1 1.5.4 1.8.4.4.8.6 1.2.6h.5l.3-.2.2-.3v-.4zm4 1.7h-1.6V3.5h1.7v3.4a3.7 3.7 0 01.2-.1 2.8 2.8 0 013.4 0l.3.4.3.7V13h-1.6V9.3L56 8.1c-.1-.3-.2-.5-.4-.6l-.6-.2a1 1 0 00-.3.1 2 2 0 00-.4.2l-.3.3a3 3 0 00-.3.5l-.2.5V13z">
																</path>
															</g>
															<defs>
																<clipPath id="clip0">
																	<path fill="#fff" d="M0 0h55v16H0z"
																transform="translate(4)"></path>
																</clipPath>
															</defs>
														</svg>
													</div>
													<div class="UDaMW3" tabindex="0">Shop thể thao 247
														Max Rẻ</div>
													<div class="B2SOGC">
														<button class="stardust-button stardust-button--primary">
															<svg viewBox="0 0 17 17"
																class="shopee-svg-icon icon-btn-chat"
																style="fill: white;">
																<g fill-rule="evenodd">
																	<path
																	d="M13.89 0C14.504 0 15 .512 15 1.144l-.003.088-.159 2.117.162.001c.79 0 1.46.558 1.618 1.346l.024.15.008.154v9.932a1.15 1.15 0 01-1.779.963l-.107-.08-1.882-1.567-7.962.002a1.653 1.653 0 01-1.587-1.21l-.036-.148-.021-.155-.071-.836h-.01L.91 13.868a.547.547 0 01-.26.124L.556 14a.56.56 0 01-.546-.47L0 13.429V1.144C0 .512.497 0 1.11 0h12.78zM15 4.65l-.259-.001-.461 6.197c-.045.596-.527 1.057-1.106 1.057L4.509 11.9l.058.69.01.08a.35.35 0 00.273.272l.07.007 8.434-.001 1.995 1.662.002-9.574-.003-.079a.35.35 0 00-.274-.3L15 4.65zM13.688 1.3H1.3v10.516l1.413-1.214h10.281l.694-9.302zM4.234 5.234a.8.8 0 011.042-.077l.187.164c.141.111.327.208.552.286.382.131.795.193 1.185.193s.803-.062 1.185-.193c.225-.078.41-.175.552-.286l.187-.164a.8.8 0 011.042 1.209c-.33.33-.753.579-1.26.753A5.211 5.211 0 017.2 7.4a5.211 5.211 0 01-1.706-.28c-.507-.175-.93-.424-1.26-.754a.8.8 0 010-1.132z"
																	fill-rule="nonzero"></path>
																</g>
															</svg>
															<span>chat</span>
														</button>
													</div>
													<a class="Mr26O7"
														href="/247sport_hn?entryPoint=OrderDetail">
														<div class="stardust-button">
															<svg enable-background="new 0 0 15 15"
																viewBox="0 0 15 15" x="0" y="0"
																class="shopee-svg-icon icon-btn-shop">
																<path
																	d="m15 4.8c-.1-1-.8-2-1.6-2.9-.4-.3-.7-.5-1-.8-.1-.1-.7-.5-.7-.5h-8.5s-1.4 1.4-1.6 1.6c-.4.4-.8 1-1.1 1.4-.1.4-.4.8-.4 1.1-.3 1.4 0 2.3.6 3.3l.3.3v3.5c0 1.5 1.1 2.6 2.6 2.6h8c1.5 0 2.5-1.1 2.5-2.6v-3.7c.1-.1.1-.3.3-.3.4-.8.7-1.7.6-3zm-3 7c0 .4-.1.5-.4.5h-8c-.3 0-.5-.1-.5-.5v-3.1c.3 0 .5-.1.8-.4.1 0 .3-.1.3-.1.4.4 1 .7 1.5.7.7 0 1.2-.1 1.6-.5.5.3 1.1.4 1.6.4.7 0 1.2-.3 1.8-.7.1.1.3.3.5.4.3.1.5.3.8.3zm.5-5.2c0 .1-.4.7-.3.5l-.1.1c-.1 0-.3 0-.4-.1s-.3-.3-.5-.5l-.5-1.1-.5 1.1c-.4.4-.8.7-1.4.7-.5 0-.7 0-1-.5l-.6-1.1-.5 1.1c-.3.5-.6.6-1.1.6-.3 0-.6-.2-.9-.8l-.5-1-.7 1c-.1.3-.3.4-.4.6-.1 0-.3.1-.3.1s-.4-.4-.4-.5c-.4-.5-.5-.9-.4-1.5 0-.1.1-.4.3-.5.3-.5.4-.8.8-1.2.7-.8.8-1 1-1h7s .3.1.8.7c.5.5 1.1 1.2 1.1 1.8-.1.7-.2 1.2-.5 1.5z">
																</path>
															</svg>
															<span>Xem Shop</span>
														</div>
													</a>
												</div>
												<div class="jgIyoX">
													<div class="LY5oll">
														<a class="lXbYsi"
															href="/user/purchase/order/119338331267952?type=6"><span
															class="O2yAdQ"><svg
																	enable-background="new 0 0 15 15" viewBox="0 0 15 15"
																	x="0" y="0"
																	class="shopee-svg-icon icon-free-shipping-line">
																	<g>
																		<line fill="none" stroke-linejoin="round"
																		stroke-miterlimit="10" x1="8.6" x2="4.2" y1="9.8"
																		y2="9.8"></line>
																		<circle cx="3" cy="11.2" fill="none" r="2"
																		stroke-miterlimit="10"></circle>
																		<circle cx="10" cy="11.2" fill="none" r="2"
																		stroke-miterlimit="10"></circle>
																		<line fill="none" stroke-miterlimit="10" x1="10.5"
																		x2="14.4" y1="7.3" y2="7.3">
																		</line>
																		<polyline fill="none"
																		points="1.5 9.8 .5 9.8 .5 1.8 10 1.8 10 9.1"
																		stroke-linejoin="round" stroke-miterlimit="10"></polyline>
																		<polyline fill="none"
																		points="9.9 3.8 14 3.8 14.5 10.2 11.9 10.2"
																		stroke-linejoin="round" stroke-miterlimit="10"></polyline>
																	</g>
																</svg> Giao hàng thành công</span></a>
														<div class="shopee-drawer" id="pc-drawer-id-3"
															tabindex="0">
															<svg enable-background="new 0 0 15 15"
																viewBox="0 0 15 15" x="0" y="0"
																class="shopee-svg-icon icon-help">
																<g>
																	<circle cx="7.5" cy="7.5" fill="none" r="6.5"
																	stroke-miterlimit="10"></circle>
																	<path
																	d="m5.3 5.3c.1-.3.3-.6.5-.8s.4-.4.7-.5.6-.2 1-.2c.3 0 .6 0 .9.1s.5.2.7.4.4.4.5.7.2.6.2.9c0 .2 0 .4-.1.6s-.1.3-.2.5c-.1.1-.2.2-.3.3-.1.2-.2.3-.4.4-.1.1-.2.2-.3.3s-.2.2-.3.4c-.1.1-.1.2-.2.4s-.1.3-.1.5v.4h-.9v-.5c0-.3.1-.6.2-.8s.2-.4.3-.5c.2-.2.3-.3.5-.5.1-.1.3-.3.4-.4.1-.2.2-.3.3-.5s.1-.4.1-.7c0-.4-.2-.7-.4-.9s-.5-.3-.9-.3c-.3 0-.5 0-.7.1-.1.1-.3.2-.4.4-.1.1-.2.3-.3.5 0 .2-.1.5-.1.7h-.9c0-.3.1-.7.2-1zm2.8 5.1v1.2h-1.2v-1.2z"
																	stroke="none"></path>
																</g>
															</svg>
														</div>
													</div>
													<div class="bv3eJE" tabindex="0">Hoàn thành</div>
												</div>
											</div>
										</section>
										<div class="kG_yF0"></div>
										<section>
											<h3 class="a11y-hidden"></h3>
											<a aria-label=""
												href="/user/purchase/order/119338331267952?type=6">
												<div>
													<div class="bdAfgU">
														<div class="FNHV0p">
															<div>
																<section>
																	<div class="mZ1OWk">
																		<div class="dJaa92">
																			<img
																				src="https://down-vn.img.susercontent.com/file/b9421bd5f228e1cbd309208402512f1c_tn"
																				class="gQuHsZ" alt="" tabindex="0">
																			<div class="nmdHRf">
																				<div>
																					<div class="zWrp4w">
																						<span class="DWVWOJ" tabindex="0">Kìm Bóp
																							Tay Kìm Tập Cơ Tay Dụng Cụ Tập Gym Tại Nhà Điều
																							Chỉnh Lực 10-60kg Có Đếm số tự động</span>
																					</div>
																				</div>
																				<div>
																					<div class="rsautk" tabindex="0">Phân loại
																						hàng: Lò Xo Không Đếm Số,Ngẫu nhiên</div>
																					<div class="j3I_Nh" tabindex="0">x1</div>
																				</div>
																			</div>
																		</div>
																		<div class="ylYzwa" tabindex="0">
																			<div class="YRp1mm">
																				<span class="q6Gzj5">₫60.000</span><span
																					class="nW_6Oi PNlXhK">₫35.000</span>
																			</div>
																		</div>
																	</div>
																</section>
															</div>
															<div class="PB3XKx"></div>
														</div>
													</div>
												</div>
											</a>
										</section>
										<div class="Ze0Icc"></div>
									</div>
								</div>
								<div class="peteXU">
									<div class="IVFywZ HmaSt0"></div>
									<div class="IVFywZ fT_AQM"></div>
								</div>
								<div class="LwXnUQ">
									<div class="NWUSQP">
										<span class="R_ufN9">
											<div class="afBScK" tabindex="0">
												<svg width="16" height="17" viewBox="0 0 253 263"
													fill="none" xmlns="http://www.w3.org/2000/svg">
													<title>Shopee Guarantee</title>
													<path fill-rule="evenodd" clip-rule="evenodd"
														d="M126.5 0.389801C126.5 0.389801 82.61 27.8998 5.75 26.8598C5.08763 26.8507 4.43006 26.9733 3.81548 27.2205C3.20091 27.4677 2.64159 27.8346 2.17 28.2998C1.69998 28.7657 1.32713 29.3203 1.07307 29.9314C0.819019 30.5425 0.688805 31.198 0.689995 31.8598V106.97C0.687073 131.07 6.77532 154.78 18.3892 175.898C30.003 197.015 46.7657 214.855 67.12 227.76L118.47 260.28C120.872 261.802 123.657 262.61 126.5 262.61C129.343 262.61 132.128 261.802 134.53 260.28L185.88 227.73C206.234 214.825 222.997 196.985 234.611 175.868C246.225 154.75 252.313 131.04 252.31 106.94V31.8598C252.31 31.1973 252.178 30.5414 251.922 29.9303C251.667 29.3191 251.292 28.7649 250.82 28.2998C250.35 27.8358 249.792 27.4696 249.179 27.2225C248.566 26.9753 247.911 26.852 247.25 26.8598C170.39 27.8998 126.5 0.389801 126.5 0.389801Z"
														fill="#ee4d2d"></path>
													<path fill-rule="evenodd" clip-rule="evenodd"
														d="M207.7 149.66L119.61 107.03C116.386 105.472 113.914 102.697 112.736 99.3154C111.558 95.9342 111.772 92.2235 113.33 88.9998C114.888 85.7761 117.663 83.3034 121.044 82.1257C124.426 80.948 128.136 81.1617 131.36 82.7198L215.43 123.38C215.7 120.38 215.85 117.38 215.85 114.31V61.0298C215.848 60.5592 215.753 60.0936 215.57 59.6598C215.393 59.2232 215.128 58.8281 214.79 58.4998C214.457 58.1705 214.063 57.909 213.63 57.7298C213.194 57.5576 212.729 57.4727 212.26 57.4798C157.69 58.2298 126.5 38.6798 126.5 38.6798C126.5 38.6798 95.31 58.2298 40.71 57.4798C40.2401 57.4732 39.7735 57.5602 39.3376 57.7357C38.9017 57.9113 38.5051 58.1719 38.1709 58.5023C37.8367 58.8328 37.5717 59.2264 37.3913 59.6604C37.2108 60.0943 37.1186 60.5599 37.12 61.0298V108.03L118.84 147.57C121.591 148.902 123.808 151.128 125.129 153.884C126.45 156.64 126.797 159.762 126.113 162.741C125.429 165.72 123.755 168.378 121.363 170.282C118.972 172.185 116.006 173.221 112.95 173.22C110.919 173.221 108.915 172.76 107.09 171.87L40.24 139.48C46.6407 164.573 62.3785 186.277 84.24 200.16L124.49 225.7C125.061 226.053 125.719 226.24 126.39 226.24C127.061 226.24 127.719 226.053 128.29 225.7L168.57 200.16C187.187 188.399 201.464 170.892 209.24 150.29C208.715 150.11 208.2 149.9 207.7 149.66Z"
														fill="#fff"></path>
												</svg>
											</div>
										</span><label class="juCcT0">Thành tiền:</label>
										<div class="t7TQaf" tabindex="0"
											aria-label="Thành tiền: ₫51.500">₫51.500</div>
									</div>
								</div>
								<div class="yyqgYp">
									<div class="iwUeSD">
										<div></div>
									</div>
									<section class="po9nwN">
										<h3 class="a11y-hidden"></h3>
										<div class="aAXjeK">
											<div>
												<button
													class="stardust-button stardust-button--primary QY7kZh">Mua
													lại</button>
											</div>
										</div>
										<div class="hbQXWm">
											<div>
												<button
													class="stardust-button stardust-button--secondary QY7kZh">Liên
													hệ Người bán</button>
											</div>
										</div>
										<div class="hbQXWm">
											<div>
												<button
													class="stardust-button stardust-button--secondary QY7kZh">Xem
													đánh giá Người mua</button>
											</div>
										</div>
									</section>
								</div>
							</div>
						</div>
						<div></div>
					</main>
				</div>
			</div>
		</div>


	</div>


	<!-- footer -->
	<tiles:insertAttribute name="footer" />


	<script type="text/javascript"
		src='<c:url value="/assets/js/profile.js" />'>

	</script>

	<script type="text/javascript">
	
		var usernameDiv = document.getElementById("username");
		var usernameHeader= document.getElementById("usernameHeader");
		
		var fullnameInput = document.getElementById("fulname"); 
		var emailDiv = document.getElementById("email");
		var genderDiv = document.getElementById("gender");
		var day = document.getElementById("day");
		var month = document.getElementById("month");
		var year = document.getElementById("year");
		
	    var url = "http://localhost:8080/shop_cars/api/user/fetchUser";
	    var requestOptions = {
	        method : 'POST',
	        headers : {
	            'content-type' : 'application/json',
	            'Authorization': 'Bearer ' + localStorage.getItem('jwt')
	        }
	    }

	    fetch(url, requestOptions).then(response => {
	        return response.json();
	    }).then(data => {
	        console.log(data);
	        usernameDiv.innerHTML = data.username;
	        usernameHeader.innerHTML = data.username;
	        fullnameInput.placeholder = data.firstname+ " " + data.lastname;
	        emailDiv.innerHTML = data.email;
	        
	        if(data.gender == 'man')
	        genderDiv.innerHTML = 'Nam';
	        else genderDiv.innerHTML = 'Nữ';
	        
	        day.innerHTML = data.birthdayString.charAt(0);
	        
	        month.innerHTML = data.birthdayString.charAt(2);
	        year.innerHTML = data.birthdayString.substring(4,8);
	    })
	
	
	</script>


</body>

</html>
