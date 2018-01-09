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
	<h2 class="text-center"><b>PATIENT DATA</b></h2>
</div>

<div class="container">
	<div class="row">
				<p>${patient.patientName}</p>
			<%-- 	<p>ul. ${patient.street}</p>
				<p>${patient.postcode}</p>
				<p>${patient.city}</p>
				<p>
					<b>Basic diagnosis:</b> <br>${patient.basic_diagnosis}
				</p>
				<br> --%>
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
</body>
</html>