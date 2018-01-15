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
        <a class="navbar-brand" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Dashboard</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Home <span class="sr-only">(current)</span></a>
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
          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
    </header>
    <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
          <h1>Dashboard</h1>

          <section class="row text-center placeholders">
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <div class="text-muted">Something else</div>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs=" width="200" height="200" class="img-fluid rounded-circle" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </section>
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
                </tr>
              </thead>
              <tbody>
              <c:forEach items="patients" var="p">
                <tr>
            			<td>${p.patientName}</td>
						<td>${p.ownerLastname}</td>
						<td>${p.species}</td>
						<td>${p.sex}</td>
						<td>${p.diagnosis}</td>
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


