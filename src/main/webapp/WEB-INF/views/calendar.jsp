<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 class="text-center">CALENDAR</h2>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr class="info">
				<td><b>DATE</b></td>
				<td><b>TIME</b></td>
				<td><b>PATIENT</b></td>
				<td><b>ACTION</b></td>
			</tr>
		</thead>
				<c:forEach items="${visits}" var="v">
			<tr>
				<td>${v.date}</td>
				<td>${v.hour}:00</td>
				<td><a href="<c:url value="/patient/details/${v.patient.id}"/>">${v.patient.firstname} ${v.patient.lastname}</a></td>
				<td>
				<a href="<c:url value="/calendar/edit/${v.id}"/>" class="btn btn-outline-info"><span class="glyphicon glyphicon-edit"></span></a>
				<a href="<c:url value="/calendar/del/${v.id}"/>" class="btn btn-outline-danger"><span class="glyphicon glyphicon-trash"></span></a></td>
			</tr>
		</c:forEach>

	</table>
</div>
</body>
</html>