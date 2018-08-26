<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" /> 
<div class="container" style="margin-top:50px">
 <%-- <table align="center" width="50%" border="1" cellspacing="5">
		<tr bgcolor="wheat">
		
			<th>Productid</th>
		<c:forEach items="${Added}" var="add">
		<tr>
			<td>${ add.productId }</td>
			
						
		</tr>
		</c:forEach>
	</table>  --%>
<!-- 	<form action="remproductdummy.do">
	<input type="text" name="productId2" value="WW129">
	<input type="submit" value="removeFromCart"><br><br>
	</form>  -->
	
	
	  <%-- 	${added }<br><br> --%>

 	
${Orderadded}
<div class="container" style="margin-top:50px">
<h1>My Cart</h1><hr size="1" color="crimson">
<table class="table table-bordered">
<th>Products In Cart</th></tr>
<c:forEach items="${Cart.productsCart }" var="c">
	<tr>
		
		<tr><th>name</th></tr>
		<tr>
			<td>${ c.productName }</td>
			
		</tr>
		</c:forEach>


</table>
</div>
</div>	
</body>
</html>