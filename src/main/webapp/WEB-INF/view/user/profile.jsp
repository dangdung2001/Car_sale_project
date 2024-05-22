<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><tiles:getAsString name="title" /></title>

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

</head>
<body>
	<!-- Header -->
	<tiles:insertAttribute name="header" />

	<div id="main">this is profile of user</div>



	<!-- footer -->
	<tiles:insertAttribute name="footer" />
</body>

</html>