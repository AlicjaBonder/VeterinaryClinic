<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<link rel="stylesheet" type="text/css" href="static/css/style2.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
    
</head>
<body>
<div class="jumbotron">
	<h2 class="text-center"><b>DOCUMENTATION</b></h2>
</div>
<div class="container">
	<div class="row">
	<br>
			<hr class="style-one">
			<br>
			
			<table class="table table-hover table-bordered diagnosisTbl">
				<tr>
					<th colspan="5" class="text-center">HISTORY OF PACIENTS</th>
				</tr>
				
				<tr>
					<th>patient Name</th>
					<th>owner Lastname</th>
					<th>Email</th>
					<th>phone</th>
					<th>Species</th>
					<th>Sex</th>
					<th>diagnosis</th>
					</tr>
					<c:forEach items="patients" var="p">
					<tr>
						<td>${p.patientName}</td>
						<td>${p.ownerLastname}</td>
						<td>${p.email}</td>
						<td>${p.species}</td>
						<td>${p.sex}</td>
						<td>${p.diagnosis}</td>
	
					</tr>
					</c:forEach>
					</table>
					</div>
					</div>
						



</body>

</html>


