<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="css/flexslider.css" rel="stylesheet" type="text/css"
	media="all" />

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
</head>
<body>
	 <%
		User user = (User) session.getAttribute("User");
		if (user != null) {
			
	%>
	
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">


				<div class="container">
					<div class="logo">

						<a class="bc" href="home.do">Home&nbsp;/&nbsp; </a><a><form action="category.do"><button type="submit" value="watch" name="category"></button></form>All Watches &nbsp;</a> 
							<class="abc" href="account.do">Forget Password&nbsp;&nbsp;&nbsp;</a>
							<a class="bcd"
							href="home.jsp"><h1>KartIn</h1></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="cart-right"><a href="cart.do">Cart</a></div>
							
							<div class="login"> Hello <%=user.getUserName()%> </div>
							</div>
							
				</div>
			</div>


		</div>
	</div>
					<%
		} else {
	%>			
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
			<div class="container">
		<div class="logo">
		<a class="bc" href="home.do">Home&nbsp;/&nbsp; </a><a
							class="abc" href="register.jsp">Register&nbsp;/&nbsp;</a><a
							class="abc" href="account.jsp">Login&nbsp;/&nbsp;</a><a
							class="abc" href="products.jsp">Products&nbsp;</a> <a class="bcd"
							href="home.jsp"><h1>KartIn</h1></a>
					<div class="visitor"> Hello There </div> 
					</div>
					
				</div>
			</div>


		</div>
	</div>
				<%
		}
	%> 	
			