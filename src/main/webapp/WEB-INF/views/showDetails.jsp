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
<link rel="stylesheet" type="text/css" href="static/css/style.css">

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
		<h2 class="text-center">
			<b>DOCUMENTATION</b>
		</h2>
	</div>

	<div class="container">
		<div class="row">
			<h4>
				<b>PATIENT DATA</b>
			</h4>
			<div class="col-sm-4">
				Patient name:
				<p>${p.patientName}</p>
				Owner lastname:
				<p>${p.ownerLastname}</p>
				Email:
				<p>${p.email}</p>
				Species:
				<p>${p.species}</p>
				Sex:
				<p>${p.sex}</p>
				Phone:
				<p>${p.phone}</p>
				Street:
				<p>ul. ${p.street}</p>
				Postcode:
				<p>${p.postcode}</p>
				City:
				<p>${p.city}</p>
				<p>
					<b>Basic diagnosis:</b> <br>${p.diagnosis}
				</p>
				<br>
			</div>
			<div class="col-sm-8">

				<table class="table table-hover table-bordered diagnosisTbl">

					<tr>
						<th colspan="3" class="text-center">HISTORY OF TREATMENT</th>
					<tr>
					<tr>
						<th>DATE</th>
						<th>TIME</th>
						<th>DOCTOR</th>
						<th>SERVICE</th>
						<th>DIAGNOSIS</th>
						<th class="text-center">ADD</th>
					</tr>
					<c:forEach items="${visits}" var="v">
						<tr>
							<td>${v.date}</td>
							<td>${v.hour}:00</td>
							<td>${v.doctor.name}</td>
							<td>${v.service.name}</td>
							<td class="diagnosis text-center"><span class="diagnosis">${v.descriptionOfVisit}</span><br>
								<div style="display: none">
									<input type="hidden" name="id" value="${v.id}" /> <input
										type="hidden" name="date" value="${v.date}" />
									<textarea name="descriptionOfVisit" form="diagnoForm" rows="5"
										cols="25">${v.descriptionOfVisit}</textarea>
									<input type="hidden" name="hour" value="${v.hour}" /> <input
										type="hidden" name="patient_id" value="${v.patient.id}" /> <input
										type="hidden" name="service_id" value="${v.service.id}" /><br>
									<%-- <input type="hidden" name="service_id" value="${v.doctor.id}"/><br> --%>
									<button class="submitDiagnosis btn btn-default"
										data-id="${v.id}">
										Submit <span class="glyphicon glyphicon-ok-circle">
									</button>
								</div></td>
							<td class="text-center">
								<button class="btn btn-default diagnosis">
									<span class="glyphicon glyphicon-edit" />
								</button>
							</td>





							<%-- <td><a class="btn btn-lg btn-success" href="<% out.print(request.getContextPath()); %>/newvisit/${v.id}" role="button">Open</a> --%>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>






	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="http://localhost:8080/Veterinary_clinic/static/js/patient_details.js?newversion"></script>




</body>
</html>