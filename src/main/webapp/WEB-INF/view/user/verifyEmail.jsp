<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<c:url value="/assets/css/verifyemail.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/css/verifyemail.css.map" />">
	
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
	<div class="c-email">
		<div class="c-email__header">
			<h1 class="c-email__header__title">Nhập mã từ email của bạn</h1>
		</div>
		<form action="/shop_cars/user/processingRegister" method="post"
			class="c-email__content">

			<div>
				<p class="c-email__content__text text-title">Please let us know
					this email belongs to you. Please enter the code in the email sent
					to
				<p class="mail">${newuser.email}</p>
				</p>
			</div>

			<!-- annotation code failed -->
			<c:set var="annotationFailed" value="${annotationFailed}" />
			<c:if test="${not empty annotationFailed}">
				<p
					style="text-align: center; margin-top: 10px; font-size: 16px; color: #c00;"
					id="annotationFailed">${annotationFailed}</p>
			</c:if>

			<div class="c-email__code">
				<input type="number" class="c-email__code__text number-to-text"
					name="codeUser">
			</div>
			<div>
				<p
					class="c-email__content__text text-italic opacity-30 text-title mb-0">Verification
					code is valid only for 5 minutes</p>

			</div>

			<div id="resend_code_mail" class="margin_left50">
				<a href="#">resend eamail</a>
			</div>
			<button id="change_mail" class="btn margin_left50">Update
				contact information</button>
			<input style="margin-left: 20px;" class="btn" type="submit"
				value="Continue">


		</form>
		<div class="c-email__footer"></div>
	</div>

</body>
</html>