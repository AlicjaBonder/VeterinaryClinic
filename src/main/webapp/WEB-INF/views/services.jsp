<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--   <link rel="stylesheet" href="static/css/style3.css"/> -->
</head>
<body>
<div class="jumbotron">
	<h2 class="text-center">SERVICES</h2>
</div>

<p class="text-center"><a href="<c:url value="/service/add"/>" class="btn btn-default"  >ADD NEW SERVICE <span class="glyphicon glyphicon-plus-sign"></span></a></p>

<div class="container">
	<table class="table table-hover">

		<tr class="info">
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Edit</th>
		</tr>
		<c:forEach items="${services}" var="s">
			<tr>
				<td>${s.name}</td>
				<td>${s.description}</td>
				<td>${s.price}</td>
				<td>
					<a href="<c:url value="/service/edit/${s.id}"/>"><span class="glyphicon glyphicon-edit"></span></a> 
				</td>
			</tr>
		</c:forEach>

	</table>
</div>

</body>
</html>