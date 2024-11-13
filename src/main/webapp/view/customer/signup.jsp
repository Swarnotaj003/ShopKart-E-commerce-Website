<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ShopKart | Login</title>
    <link rel="stylesheet" href="../../css/login.css">
    <link rel="stylesheet" href="../../css/colorScheme.css" />
</head>
<body>
	<form action="/login" method="get">
		<% String msg = request.getParameter("msg"); %>
		<% if (msg != null && msg.equals("failed")) { %>
			<h3 id="custom-msg">Invalid E-mail or Password!</h3>
		<% } %>
		
		<% String logout = request.getParameter("logout"); %>
		<% if (logout != null && logout.equals("true")) { %>
			<h3 id="custom-msg">You've been logged out!</h3>
		<% } %>
		
	    <div class="login-container">
	      <h1>Login</h1>
	        <div class="form-group">
	          <input type="email" name="email" placeholder="Email" required />
	        </div>
	        <div class="form-group">
	          <input type="password" name="password" placeholder="Password" required />
	        </div>
	        <div class="form-group">
	          <button type="submit" class="btn">Log in</button>
	        </div>
	        <div class="extra-links">
	          <p>New to this web site?</p>
	          <a href="/signup"><p>Create account</p></a>
	        </div>
	    </div>
    </form>
  </body>
</html>