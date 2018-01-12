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
</head>
<body>
<div class="jumbotron">
		<h1 class="text-center">ADD SERVICE FORM</h1>
	</div>
	
	<div class="container center_div">
		<div class="col-sm-4 col-sm-offset-4">
			<a href="<c:url value="/service"/>" class="btn btn-default">Go back <span class="glyphicon glyphicon-arrow-left"></span></a>
			<hr class="style-one">
			<form:form method="post" modelAttribute="service">
			Name:<br>
				<form:input path="name" class="form-control"/>
				<form:errors path="name" class="error" />
				<br>
			Description:<br>
				<form:textarea path="description" cols="30" rows="5" class="form-control"/>
				<form:errors path="description" class="error" />
				<br>
			Price:<br>
				<form:input path="price" class="form-control"/>
				<form:errors path="price" class="error" />
				<br>
				<input type="submit" value="Add" class="btn btn-default"/>
			</form:form>
		</div>
	</div>

</body>
</html>