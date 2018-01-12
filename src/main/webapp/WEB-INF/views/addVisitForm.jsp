<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="static/css/style3.css"/>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
  } );
  </script>
</head>
<body>
<div class="jumbotron">
		<h2 class="text-center"><b>ADD VISIT </b></h2>
	</div>
	
	
<form:form method="post" modelAttribute="visit">
Patient: <p>${patient.patientName}</p>

Date:<br>
				<form:input path="date" id="datepicker"/>
				<form:errors path="date" class="error" />
				<br>
				
Time:<br><form:select path="hour" class="form-control">
					<form:option value="9" label="9:00" />
					<form:option value="10" label="10:00" />
					<form:option value="11" label="11:00" />
					<form:option value="12" label="12:00" />
					<form:option value="13" label="13:00" />
					<form:option value="14" label="14:00" />
					<form:option value="15" label="15:00" />
					<form:option value="16" label="16:00" />
					<form:option value="17" label="17:00" />
					<form:option value="18" label="18:00" />
				</form:select>
				<br>
	
Doctors:<br><form:select path="doctor" items="${doctors}" itemValue="id"
					itemLabel="name" class="form-control" />
				<br>
				<form:errors path="doctor" class="error" />
Service:<br>
				<form:select path="service.id" items="${services}" itemValue="id"
					itemLabel="name" class="form-control" />
				<br>
				<form:errors path="service" class="error" />

				
				<input type="submit" value="Add" class="btn btn-default"/>
</form:form>

</body>


</html>