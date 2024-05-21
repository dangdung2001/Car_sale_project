<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<!-- Header -->
	<tiles:insertAttribute name="header" />
	
	<div id = "main">
		this is profile of user
	</div>
	
	
	
<!-- footer -->
	<tiles:insertAttribute name="footer" />
</body>	

</html>