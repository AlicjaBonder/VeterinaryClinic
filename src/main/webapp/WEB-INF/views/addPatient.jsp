<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>

<form:form method="post" modelAttribute="patient">
 <div class="form-group">
   <label for="patientName">Patient name:</label>
    <form:input path="patientName" class="form-control" id="patientName"/>
  </div>
   <div class="form-group">
   <label for="ownerLastname">Owner LastName:</label>
    <form:input path="ownerLastname" class="form-control" id="ownerLastname"/>
  </div>
 <div class="form-group">
   <label for="email">Email address:</label>
    <form:input path="email" class="form-control" id="email"/>
  </div>
<div class="form-group">
   <label for="phone">Phone:</label>
    <form:input path="phone" class="form-control" id="phone"/>
  </div>
<div class="form-group">
   <label for="postcode">Post code:</label>
    <form:input path="postcode" class="form-control" id="postcode"/>
  </div>
  <div class="form-group">
   <label for="city">City:</label>
    <form:input path="city" class="form-control" id="city"/>
  </div>
 <div class="form-group">
   <label for="street">Street:</label>
    <form:input path="street" class="form-control" id="street"/>
  </div>
   <div class="form-group">
   <label for="sex">Sex:</label>
    <form:input path="sex" class="form-control" id="sex"/>
  </div>
   <div class="form-group">
   <label for="species">Species:</label>
    <form:input path="species" class="form-control" id="species"/>
  </div>
   <div class="form-group">
   <label for="diagnosis">Diagnosis:</label>
    <form:input path="diagnosis" class="form-control" id="diagnosis"/>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form:form>
</body>
</html>