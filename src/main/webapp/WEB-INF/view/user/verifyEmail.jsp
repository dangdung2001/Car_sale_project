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


<script type="text/javascript" src='<c:url value ="/assets/js/verifyEmail.js"></c:url>'></script>
</html>