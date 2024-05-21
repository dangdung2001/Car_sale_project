<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- link css -->
  <link rel="stylesheet" href="<c:url value="/assets/css/login.css" />"> 
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
<title><tiles:getAsString name="title" /></title>
</head>
<body>

	<!-- Header -->
	<tiles:insertAttribute name="header" />

	<!-- content -->
	<div style="margin: 40px;" id="container">
		<div style="margin: auto;" class="screen">
			<div class="screen__content">
				<form id="loginForm" action="#" method="post" class="login">
					<div class="login__field">
						<i class="login__icon fas fa-user"></i> <input id="username" name="username"
							type="text" class="login__input" placeholder="User name / Email">
					</div>
					<div class="login__field">
						<i class="login__icon fas fa-lock"></i> <input id="password"
							name="password" type="password" class="login__input"
							placeholder="Password">
					</div>
					<button class="button login__submit">
						<span class="button__text">Log In Now</span> <i
							class="button__icon fas fa-chevron-right"></i>
					</button>
				</form>
				<div class="social-login">
					<h3 style="width: 163px;">Need an account?</h3>
					<a style="font-size: 20px; color: #fff;"
						href="/shop_cars/user/signup">Sign up</a>

				</div>
			</div>
			<div class="screen__background">
				<span class="screen__background__shape screen__background__shape4"></span>
				<span class="screen__background__shape screen__background__shape3"></span>
				<span class="screen__background__shape screen__background__shape2"></span>
				<span class="screen__background__shape screen__background__shape1"></span>
			</div>
		</div>
	</div>

	<!-- footer -->
	<tiles:insertAttribute name="footer" />
	
	<script type="text/javascript" src="<c:url value='/assets/js/login.js'/>" ></script>
	
		<script type="module"
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
		<script nomodule
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>