<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <!-- Bootstrap core CSS -->
    <link href="http://localhost:8080/Veterinary_clinic/static/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://localhost:8080/Veterinary_clinic/static/dashboard.css" rel="stylesheet">
    
</head>
<body>
<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="<% out.print(request.getContextPath()); %>/calendar">Calendar</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="<% out.print(request.getContextPath()); %>/add">Add patients <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Settings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Help</a>
            </li>
          </ul>
          <form method="get" action="search">
		Search a patient:<input type="text" name="patientName">
		<input type="submit" value="Search" />
	</form>
        </div>
      </nav>
    </header>
    <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
        
    <h2>All patients</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Patient name</th>
                  <th>Owner surname</th>
                  <th>Species</th>
                  <th>Sex</th>
                  <th>Diagnosis</th>
                  <th>Details</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${patients}" var="p">
                <tr>
            			<td>${p.patientName}</td>
						<td>${p.ownerLastname}</td>
						<td>${p.species}</td>
						<td>${p.sex}</td>
						<td>${p.diagnosis}</td>
						<td><a href="<% out.print(request.getContextPath()); %>/showPatient/${p.id}">Details</a></td>
						<td><a href="<% out.print(request.getContextPath()); %>/editPatient/${p.id}">Edit</a></td>
						<td><a href="<% out.print(request.getContextPath()); %>/delete/${p.id}">Delete</a>
                </tr>
                </c:forEach>
                
              </tbody>
            </table>
          </div>
        </main>
      

    <script src="http://localhost:8080/Veterinary_clinic/static/jquery-3.2.1.slim.min.js" ></script>
    <script src="http://localhost:8080/Veterinary_clinic/static/jquery-3.2.1.slim.min.js"></script>
    <script src="http://localhost:8080/Veterinary_clinic/static/popper.min.js"></script>
    <script src="http://localhost:8080/Veterinary_clinic/static/bootstrap.min.js"></script>


</body>

</html>


