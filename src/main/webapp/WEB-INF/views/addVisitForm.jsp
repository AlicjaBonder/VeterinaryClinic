<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="js/datepicker.js"></script>
</head>
<body>
<div class="jumbotron">
		<h2 class="text-center"><b>ADD VISIT </b></h2>
	</div>
<form:form method="post" modelAttribute="visit">
Patient: <p>${patient.patientName}</p>
Date:<br>
				<form:input path="date" class="form-control datepicker" data-date-format="yyyy-mm-dd"/>
				<form:errors path="date" class="error" />
Time:<br>
				<form:input path="hour" class="form-control"/>
	
Service:<br>
				<form:select path="service.id" items="${services}" itemValue="id"
					itemLabel="name" class="form-control" />
				<br>
				<form:errors path="service" class="error" />

				<input type="submit" value="Add" class="btn btn-default"/>
</form:form>

</body>


</html>