<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ShopKart | Sign Up</title>
    <link rel="stylesheet" href="../../css/signup.css">
    <link rel="stylesheet" href="../../css/colorScheme.css" />
</head>
<body>
	<form action="/signup" method="post">
	    <div class="signup-container">
	    	<% String msg = (String)request.getParameter("msg"); %>
			<% if (msg != null && msg.equals("failed")) { %>
				<div class="error">
					<h3>Account already exists with the given E-mail!</h3>
					<h3>Please login or use another E-mail</h3>
				</div>
			<% } %>
	      <h1>Sign Up</h1>
	        <div class="form-group">
	          <input type="text" name="name" placeholder="Name" required />
	        </div>
	        <div class="form-group">
	          <input type="email" name="email" placeholder="Email" required />
	        </div>
	        <div class="form-group">
	          <input
	            type="tel"
	            name="phone"
	            placeholder="Phone Number"
	            pattern="[0-9]{10}"
	            required
	          />
	        </div>
	        <div class="form-group">
	          <textarea
	            name="address"
	            placeholder="Address"
	            rows="3"
	            required
	          ></textarea>
	        </div>
	        <div class="form-group">
	          <input
	            type="password"
	            name="password"
	            placeholder="Password"
	            required
	          />
	        </div>
	        <div class="form-group">
	          <button type="submit" class="btn">Create Account</button>
	        </div>
	        <div class="extra-links">
	          <p>Already have an account?</p>
	          <a href="/"><p>Click to login</p></a>
	        </div>
	    </div>
    </form>
  </body>
</html>