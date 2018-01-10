<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    
</head>
<body>

	<table style="border:solid 1px black">
	
	<c:forEach items="${patients}" var="p">
	<tr>
		<th style="border:solid 1px black">patient Name </th>
		<th style="border:solid 1px black">owner Lastname </th>
		<th style="border:solid 1px black">Email </th>
			<th style="border:solid 1px black">phone</th>
		<th style="border:solid 1px black">Species </th>
		<th style="border:solid 1px black">Sex </th>
			<th style="border:solid 1px black">Street</th>
		<th style="border:solid 1px black">City</th>
		<th style="border:solid 1px black">Post code </th>
			<th style="border:solid 1px black">diagnosis </th>
	</tr>
	<tr>
		<td style="border:solid 1px black">${p.patientName}</td>
		<td style="border:solid 1px black">${p.ownerLastname}</td>
		<td style="border:solid 1px black">${p.email}</td>
		<td style="border:solid 1px black">${p.phone}</td>
		<td style="border:solid 1px black">${p.species}</td>
		<td style="border:solid 1px black">${p.sex}</td>
		<td style="border:solid 1px black">${p.street}</td>
		<td style="border:solid 1px black">${p.city}</td>
		<td style="border:solid 1px black">${p.postcode}</td>
		<td style="border:solid 1px black">${p.diagnosis}</td>
	
	</tr>
		</c:forEach>
			</table> 



          
</body>
</html>