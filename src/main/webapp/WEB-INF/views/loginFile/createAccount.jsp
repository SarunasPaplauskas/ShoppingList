<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Create Account</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/list/resources/loginStyle.css">
<link rel="stylesheet" href="/list/resources/myStyle.css">
</head>

<body>
<h3 class="message">${emailExisting }</h3>
<h3 class="message">${badPassword }</h3>
<a class="createAcc btn btn-success" href="login">Back to Login</a>
<div class="signup-form">
    <form:form action="/list/createAcc" method="post" modelAttribute="newUser">
		<h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
			<div class="row">
				<div class="row message"><form:errors path="username" class="alert alert-danger"/></div><br>
				<div class="row message"><form:errors path="surname" class="alert alert-danger"/></div><br>
				<div class="row message"><form:errors path="email" class="alert alert-danger"/></div><br>
				<div class="col-xs-6"><form:input type="text" class="form-control" path="username" placeholder="First Name" required="required"/></div>
				<div class="col-xs-6"><form:input type="text" class="form-control" path="surname" placeholder="Last Name" required="required"/></div>
			</div>        	
        </div>
        <div class="form-group">
        	<form:input type="email" class="form-control" path="email" placeholder="Email" required="required"/>
        </div>
		<div class="form-group">
            <form:input type="text" class="form-control" path="password" placeholder="Password" required="required"/>
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="confirmPassword" placeholder="Confirm Password" required="required">
        </div>
        <div class="form-group">
            <form:input class="hidden" path="enabled" value="1"/>
        </div>        
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
        </div>
    </form:form>
</div>
</body>
</html>                         