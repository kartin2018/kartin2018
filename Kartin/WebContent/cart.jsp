<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <title>Luxury Watches A Ecommerce Category Flat Bootstarp Resposive Website Template | Checkout :: w3layouts</title>
 --><link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
<jsp:include page="banner.jsp"></jsp:include>
	
	<div class="ckeckout">
		<div class="container">
			<div class="ckeck-top heading"><br>
				<h2>CHECKOUT</h2>
			</div>
			<div class="ckeckout-top">
			<div class="cart-items">
			 <h3>My Shopping Bag</h3>
				<!-- <script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});

				</script> -->
			<div class="in-check" >
				 <%
			Cart cart = (Cart) session.getAttribute("Cart");
			if (cart != null) {
			
			%>  
			
			<c:set var="total" value="${0}"/>
			<c:forEach items="${ Cart.productsCart }" var="c">
				<ul class="unit">
					<li><span>Item</span></li>
					<li><span>Product Name</span></li>		
					<li><span>Unit Price</span></li>
					<li><span>Delivery Details</span></li>
					<li> </li>
					<div class="clearfix"> </div>
				</ul>
				<ul class="cart-header">
					<div class="close1"><form action="remproduct.do"><button type="submit" name="productId" value="${ c.productId }"></button></form> </div>
						<li class="ring-in"><a><img src="${ c.productImage1 }" class="img-responsive" alt=""></a>
						</li>
						<li><span class="name">${ c.productName }</span></li>
						<li><span class="cost"> &#x20b9; ${ c.productPrice }</span></li>
						<li><span>Free</span>
						<p>Delivered in 2-3 business days</p></li>
					<div class="clearfix"> </div>
				</ul>
				 <c:set var="total" value="${ total + c.productPrice }" />
				
				
				</c:forEach>
				<span class="cost">Total Amount: ${total}</span>
			</div>
			</div>
		
			<form action="payment.jsp">
			<button type="submit">Payment</button>	
			</form>
			
						<%
		} else {
	%>		
			<span><h2>Your Cart is Empty</h2></span>
					<%
		}
	%> 	
		 </div>
		</div>
	</div>
	
</body>
</html>