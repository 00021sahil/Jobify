<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jobify - Connect with Your Dream Job</title>
<style>
.hero {
	height: 100vh;
	background:
		url('${pageContext.request.contextPath}/resources/images/jobify-bg.jpg')
		no-repeat center center/cover;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: white;
	text-align: center;
	position: relative;
}

.hero::after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* dark overlay */
}

.hero-content {
	position: relative;
	z-index: 1;
}

.hero-content img {
	width: 150px;
	margin-bottom: 20px;
}

.hero-content h1 {
	font-size: 48px;
	margin-bottom: 20px;
}

.hero-content p {
	font-size: 24px;
	margin-bottom: 30px;
}

.hero-content a {
	background: #4e54c8;
	color: white;
	padding: 15px 30px;
	border-radius: 5px;
	text-decoration: none;
	font-size: 18px;
	transition: background 0.3s;
}

.hero-content a:hover {
	background: #8f94fb;
}

body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background:
		url("${pageContext.request.contextPath}/images/background.jpeg")
		no-repeat center center fixed;
	background-size: cover;
}

/* optional: make content readable */
.container {
	background-color: rgba(255, 255, 255, 0.9);
	padding: 20px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="hero">
		<div class="hero-content">
			<c:if test="${not empty msg}">
				<div style="color: red; font-size: 18px; margin-top: 20px;">
					${msg}</div>
			</c:if>
			<img src="${pageContext.request.contextPath}/images/jobify-logo.jpeg"
				alt="Jobify Logo" style="width: 150px;">
			<h1>Jobify</h1>
			<p>Connect with Your Dream Job, Anywhere, Anytime</p>
			<a href="${pageContext.request.contextPath}/login">Get Started</a>

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>
