<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Jobify</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f6f9;
}

.login-container {
	max-width: 400px;
	margin: 80px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.login-container h2 {
	text-align: center;
	color: #4e54c8;
	margin-bottom: 25px;
}

.login-container form {
	display: flex;
	flex-direction: column;
}

.login-container label {
	margin-bottom: 5px;
	font-weight: bold;
}

.login-container input {
	margin-bottom: 15px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

.login-container button {
	background: #4e54c8;
	color: white;
	padding: 12px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background 0.3s;
}

.login-container button:hover {
	background: #8f94fb;
}

.login-container .register-link {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}

.login-container .register-link a {
	color: #4e54c8;
	text-decoration: none;
}

.login-container .register-link a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="login-container">
		<h2>Login to Jobify</h2>
		<form action="${pageContext.request.contextPath}/verifyLogin"
			method="post">
			<c:if test="${not empty errorMessage}">
				<p style="color: red; text-align: center;">${errorMessage}</p>
			</c:if>

			<c:if test="${not empty msg}">
				<p style="color: green; text-align: center;">${msg}</p>
			</c:if>

			<label for="username">Username</label> <input type="text"
				id="username" name="username" placeholder="Enter your username"
				required> <label for="password">Password</label> <input
				type="password" id="password" name="password"
				placeholder="Enter your password" required>

			<button type="submit">Login</button>
		</form>
		<div class="register-link">
			Don't have an account? <a
				href="${pageContext.request.contextPath}/get-register">Register
				here</a>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>
