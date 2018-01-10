<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@	page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-3">
				<h2 class="text-center">PATIENT DATA</h2>
				<form:form method="post" modelAttribute="patient">
					<form:input path="patientName" class="form-control" />
					<br>
					<form:input path="email" class="form-control" />
					<br>
					<form:input path="ownerLastname" />
					<br>
					<form:input path="city" placeholder="city" />
					<br>
					<form:input path="street" placeholder="street" />
					<br>
					<form:input path="postcode" placeholder="postcode" />
					<br>
					<form:input path="phone" placeholder="phone" />
					<br>
					<form:input path="sex" placeholder="sex" />
					<br>
					<form:input path="species" placeholder="species" />
					<br>
					<input type="submit" value="Edit"
						class="btn btn-primary add-patient">

				</form:form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
</body>
</html>