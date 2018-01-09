<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


</head>

<body>
	
	<div class="jumbotron">
		<h2 class="text-center"><b>CHOOSE A DATE </b></h2>
	</div>

	<div class="container center_div">
		<div class="col-sm-4 col-sm-offset-4">
		<form:form method="post" modelAttribute="patient">
<form:select path="doctor.id" items="${doctors}" itemValue="id" itemLabel="lastName"/><br>
<%-- <form:input path="description" placeholder="description"/><br>
<form:input path="rating" placeholder="rating"/><br>
<form:input path="title" placeholder="title"/><br>
<form:select path="publisher" items="${publishers}" itemValue="id" itemLabel="name"></form:select>
<input type="submit" value="zapisz książkę z wydawcą"> --%>
</form:form>
			<a href="<c:url value="/doctor/${doctor.id}"/>" class="btn btn-default text-center"></a>
			<hr class="style-one">
			<form:form method="post" modelAttribute="visit" align="left">		
				Date:<br>
				<form:input path="date" class="form-control datepicker" />
				<form:errors path="date" class="error" />
				<span class="error">${message}</span>
				<br>
					Time:<br>
				<form:input path="hour" class="form-control"/>
					
				<br>
				<form:errors path="hour" class="error" />
				Service:<br>
				<form:select path="service.id" items="${visits}" itemValue="id"
					itemLabel="name" class="form-control" />
				<br>
				<form:errors path="service" class="error" />

				<input type="submit" value="Add" class="btn btn-default"/>
			</form:form>
		</div>
	</div>

</body>
<script type="text/javascript" src="<c:url value="/js/datepicker.js"/>"></script>
</html>
