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
  <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css"/>

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="static/css/grid.css" />
</head>
<body>
<div class="container">
<a href="<% out.print(request.getContextPath()); %>/">Back</a>
      <h1>CALENDAR</h1>
      <p class="lead">View recently visits</p>
		<a href="<% out.print(request.getContextPath()); %>/showAll">Show all patient</a>
         <div class="row">
        <div class="col-4">DATE</div>
        <div class="col-4">TIME</div>
        <div class="col-4">PATIENT</div>
      </div>
	<c:forEach items="${visits}" var="v">
	
   

      <div class="row">
        <div class="col-sm-4" >${v.date}</div>
        <div class="col-sm-4">${v.hour}:00</div>
        <div class="col-sm-4"><a href="<% out.print(request.getContextPath()); %>/showPatient/${v.patient.id}">${v.patient.patientName}</a></div>
        
      </div>


</c:forEach>


			
				<%-- <a href="<c:url value="/calendar/edit/${v.id}"/>" class="btn btn-outline-info"><span class="glyphicon glyphicon-edit"></span></a>
				<a href="<c:url value="/calendar/del/${v.id}"/>" class="btn btn-outline-danger"><span class="glyphicon glyphicon-trash"></span></a></td> --%>
		
</div>
</body>
</html>