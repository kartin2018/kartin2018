<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>

<!--Custom-Theme-files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" /> 
<div class="container" style="margin-top:50px">
<h1>My Profile</h1><hr size="1" color="crimson">
<table class="table table-bordered">
	<tr>
		<th>PROFILE</th>
	</tr>
		<c:forEach items="${ Profile }" var="pro">
		<tr>
			<td>${ pro.userName }</td>
			<td>${ pro.email }</td>
			<td>${ pro.address }</td>
			<td>${ pro.city }</td>
			<td>${ pro.contact }</td>
		</tr>
		</c:forEach>
</table>
</div>
</body>
</html>