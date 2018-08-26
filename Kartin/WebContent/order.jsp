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
<div class="container" style="margin-top:50px">
<h1>My Order</h1><hr size="1" color="crimson">
<table class="table table-bordered">
<tr><th>${Orderadded}</th></tr>
<tr><th>${Totalcost}</th></tr>

 <c:forEach items="${ Orderprod }" var="c">
		<tr><th>name</th></tr>
		<tr>
			<td>${ c }</td>
			<<td>${ c.productName }</td>
			<td>${ c.productPrice }</td> 
			
			</c:forEach>
</table>
</div></div>

</body>
</html>