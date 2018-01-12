<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="https://getbootstrap.com/favicon.ico">
 <!-- Bootstrap core CSS -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="static/css/signin.css" rel="stylesheet">
</head>
<body>
 <div class="container">
<form method="post" action="login">
      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text"  name="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <input class="btn btn-lg btn-primary btn-block" type="submit"value="Log in"/>
      </form>
	</form>
    </div> <!-- /container -->
  
	
	<%-- <form method="post">
		email: <input type="text" name="email"/><br>
		
		password:<input type="text" name="password"/><br>
		
		<input type="submit" value="Log in">
	</form> --%>

</body>
</html>