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
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-3">
				<h2 class="text-center">PATIENT DATA</h2>

				${patient.patientName} <br>
				<p>${patient.ownerLastname}</p>
				<br>
				<p>${patient.email}</p>
				<br>
				<p>${patient.diagnosis}</p>
				<br>
				<p>${patient.phone}</p>
				<br>
				<p>${patient.species}</p>
				<br>
				<p>${patient.sex}</p>
				<br>
				<p>${patient.city}</p>
				<br>
				<p>${patient.postcode}</p>
				<br>
				<p>${patient.street}</p>
				<br>
				<p>
					<a href="<c:url value="/visit/add/${patient.id}"/>"
						class="btn btn-default"> ADD NEW VISIT <span
						class="glyphicon glyphicon-plus-sign"></span>
					</a>
				</p>
				<p>
					<a href="<c:url value="/edit/${patient.id}"/>"
						class="btn btn-default"> EDIT <span
						class="glyphicon glyphicon-plus-sign"></span>
					</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>