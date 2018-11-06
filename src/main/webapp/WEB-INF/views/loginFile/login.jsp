<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/list/resources/loginStyle.css">
</head>
<body>
<h3 class="message">${message}</h3>
<a class="createAcc btn btn-success" href="createAcc">Create Account</a>
<div class="signup-form">
    <form method="post" action="${pageContext.request.contextPath}/login">
		<h2>Login</h2>
		<p class="hint-text">Enter Your connection data</p>
        <div class="form-group">
        	<input type="text" class="form-control" name="username" placeholder="Name" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Sing In</button>
        </div>
    </form>
</div>
</body>
</html>                         