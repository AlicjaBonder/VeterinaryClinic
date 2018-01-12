<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form method="post" modelAttribute="visit">
<form:textarea path="descriptionOfVisit" rows="25" cols="25"/>
<form:hidden path="doctor.id"/>
<form:hidden path="patient.id"/>
<form:hidden path="hour"/>
<form:hidden path="date"/>
<form:hidden path="service.id"/>
<input type="submit" value="zapisz ">
</form:form>
</body>
</html>