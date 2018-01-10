<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
    <title>Veterinary Clinic</title>

  </head>

  <body>

    <div class="container">
      <header class="header clearfix">
        <nav>
          <ul class="nav nav-pills float-right">
            <li class="nav-item">
              <a class="nav-link active" href="">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<% out.print(request.getContextPath()); %>/register">Register</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<% out.print(request.getContextPath()); %>/service">Service</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="<% out.print(request.getContextPath()); %>/show">Your account</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="<% out.print(request.getContextPath()); %>/showAll">Vet Panel</a>
            </li>
          </ul>
        </nav>
        <h3 class="text-muted">Veterinary Clinic Med-Vet</h3>
      </header>

      <main role="main">

        <div class="jumbotron">
          <h1 class="display-3">Welcome in our clinic!</h1>
          <p class="lead">Sign up to register your pet for visit
          If you haven't account yet please register click button in the header</p>
          <p><a class="btn btn-lg btn-success" href="<% out.print(request.getContextPath()); %>/login" role="button">Sign up!</a></p>
        </div>

      <!--   <div class="row marketing">
          <div class="col-lg-6">
            <h4>Subheading</h4>
            <p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>

            <h4>Subheading</h4>
            <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum.</p>

            <h4>Subheading</h4>
            <p>Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
          </div>

        </div> -->

      </main>

      <footer class="footer">
        <p>© Company 2017</p>
      </footer>

    </div> <!-- /container -->
