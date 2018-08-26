<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			
						<script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script> 
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
</head>
<body> 
<jsp:include page="banner.jsp"></jsp:include>
<script>
				var slideindex = 0;
				carousel();

				function carousel() {
				    var i;
				    var x = document.getElementsByClassName("flexslider");
				    for (i = 0; i < x.length; i++) {
				      x[i].style.display = "none"; 
				    }
				    slideindex++;
				    if (slideindex > x.length) {slideindex = 1} 
				    x[slideindex-1].style.display = "block"; 
				    setTimeout(carousel, 7000); // Change image every 2 seconds
				}
			
				var slideInde = 1;
				showDivs(slideInde);
				function plusDivs(n) {
				  showDivs(slideInde += n);
				}
				function showDivs(n) {
				  var i;
				  var x = document.getElementsByClassName("flexslider");
				  if (n > x.length) {slideInde = 1}    
				  if (n < 1) {slideInde = x.length}
				  for (i = 0; i < x.length; i++) {
				     x[i].style.display = "none";  
				  }
				  x[slideInde-1].style.display = "block";  
				}
	
		</script>
	<!--top-header-->
	<!-- <div class="top-header">
		<div class="container">
			<div class="top-header-main">


				<div class="container">
					<div class="logo">

						<a class="bc" href="home.jsp">Home&nbsp;/&nbsp; </a><a
							class="abc" href="register.jsp">Register&nbsp;/&nbsp;</a><a
							class="abc" href="account.jsp">Login&nbsp;/&nbsp;</a><a
							class="abc" href="products.jsp">Products&nbsp;</a> <a class="bcd"
							href="home.jsp"><h1>KartIn</h1></a>
					</div>

				</div>
			</div>


		</div>
	</div> -->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
			
				<div class="col-md-13 single-main-left">
				<c:forEach items="${SingleProduct}" var="prod">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="<c:url value="${prod.productImage1}"/>">
									<div class="thumb-image"> <img src="<c:url value="${prod.productImage1}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="<c:url value="${prod.productImage2}"/>">
									 <div class="thumb-image"> <img src="<c:url value="${prod.productImage2}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="<c:url value="${prod.productImage3}"/>">
								   <div class="thumb-image"> <img src="<c:url value="${prod.productImage3}"/>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> 
							  </ul>
						</div>
						
					</div>	
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2>${prod.productName}</h2>
							<div class="star-on">
								<ul class="star-footer">
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
										<li><a><i> </i></a></li>
									</ul>
									
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">Price: &#x20b9; ${prod.productPrice}</h5>
							<p>Description: ${prod.productDescription }</p>
							<div class="available">
								<div class="clearfix"> </div>
							</ul>
						</div>
						<ul class="tag-men">
								<li><span>TAG</span>
								<span class="women1">: ${prod.productTag }</span></li>
								<li><span>Id</span>
								<span class="women1">: ${prod.productId } </span></li>
							</ul>
							<c:if test="${User!=null}">
										<form action="products.do"> <!-- //action to add to cart -->
											<button type="submit" class="prodbutton" name="productId" value="${prod.productId }">ADD TO CART</button>
									</form>
									</c:if>
							
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				</c:forEach>
			
				</div>
				<%--  <div class="latestproducts">
				 <c:forEach items="${SingleProduct}" var="prod">
					<div class="product-one">
					
					<div class="col-md-3 product-left">
						<div class="product-main simpleCart_shelfItem">
					 
							<a><img class="img-responsive zoom-img" alt="" src="<c:url value="${prod.productImage1}"/>"></a>
							<div class="product-bottom">
								<h3>Model name: ${prod.productName}</h3>
								<p>Brand: ${prod.productBrand}</p>
								<h4><a><i></i></a> <span class=" item_price">Price: &#x20b9;${prod.productPrice} </span></h4>
									<span style="text-align:center">
									
									
										<c:if test="${User!=null}">
										<form action="products.do"> <!-- //action to add to cart -->
											<button type="submit" class="prodbutton" name="productId" value="${prod.productId }">ADD TO CART</button>
									</form>
									</c:if>
								</span>
							</div>
							<div class="srch">
								<span>-50%</span>
							</div>
						
						</div>
					</div>
				
				
				<div class="clearfix"></div>
			</div>
				</c:forEach>
		</div>
	</div> --%>
	
	</div>
	</div>
</body>
</html>