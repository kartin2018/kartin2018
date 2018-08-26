<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom Theme files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel='stylesheet' href='js/form-validation.css' type='text/css' />
<script src="js/form-validation.js"></script>
</head>
<body> 
<jsp:include page="banner.jsp"></jsp:include>
	<!--top-header-->
<!-- 	<div class="top-header">
		<div class="container">
			<div class="top-header-main">


				<div class="container">
					<div class="logo">

						<a class="bc" href="home.jsp">Home&nbsp;/&nbsp; </a><a
							class="abc" href="register.jsp"><class="active">Register&nbsp;/&nbsp;</a><a
							class="abc" href="account.jsp">Login&nbsp;/&nbsp;</a><a
							class="abc" href="products.jsp">Products&nbsp;</a> <a class="bcd"
							href="home.jsp"><h1>KartIn</h1></a>
					</div>

				</div>
			</div>


		</div>
	</div> -->
	<!-- <div class="top-header">
			<div class="container">
				<div class="top-header-main">
						
						<div class="logo">
								<a href="home.jsp"><h1>KartIn</h1></a>
								<div class="cart box_1">
								<a href="checkout.jsp">
										<div class="total">
										   <span class="simpleCart_total"></span></div>
										   <img src="images/cart-1.png" alt="" />
								   </a>
								   <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
								
							</div>
						</div>
					
				</div>
			</div>
		</div> -->

		<!-- top header ends -->

	<!-- <div class="header-bottom">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
						<div class="breadcrumbs">
								<div class="container">
									<div class="breadcrumbs-main">
										<ol class="breadcrumb">
											<li><a href="home.jsp">Home</a></li>
											<li><a href="account.jsp">Account</a></li>
											<li class="active">Register</li>
										</ol>
									</div>
								</div>
							</div>
					</div>
					</div>
			</div>
		</div>
	</div> -->
	<!--bottom-header-->
	<!--start-breadcrumbs-->

	<!--end-breadcrumbs-->
	<!--register-starts-->
	<div class="register">
		<div class="regcontainer">
			<div class="register-top heading">
				<h2>REGISTER</h2>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
					<form action="register.do" onSubmit="return formValidation();" method="post">
					
						<input placeholder="Full Name" type="text"  name="userName" id="userName">
						<input placeholder="Email address" type="text"  name="email" id="email">
						<input placeholder="Password" type="password" name ="password" id="password">
						
						
				</div>
				<div class="col-md-6 account-left">
					<input placeholder="Mobile" type="text"  name="contact" id="contact">
					<input placeholder="Full Address" type="text"  name="address" id="address">
					
							<input placeholder="City" type="text"  name="city" id="city">			

				</div>
				<div class="clearfix"></div> 
						</ul>
						<div class="address submit">
								<input type="submit" value="Submit">
							</div>
				<div class="clearfix"></div>
				
			</div>
			
					</form>
		</div>
	</div>
</body>
</html>