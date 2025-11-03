<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.footer {
	background: #4e54c8; /* same as header gradient start */
	color: white;
	padding: 20px 30px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-wrap: wrap;
	font-family: Arial, sans-serif;
}

.footer .links a {
	color: white;
	text-decoration: none;
	margin-right: 20px;
	transition: color 0.3s;
}

.footer .links a:hover {
	color: #ffd700; /* gold on hover */
}

.footer .social-icons a {
	margin-right: 15px;
	color: white;
	font-size: 18px;
	text-decoration: none;
	transition: color 0.3s;
}

.footer .social-icons a:hover {
	color: #ffd700;
}

.footer .copyright {
	margin-top: 10px;
	width: 100%;
	text-align: center;
	font-size: 14px;
}
</style>
<!-- Include Font Awesome for social icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
	<div class="footer">
		<div class="links">
			<a href="${pageContext.request.contextPath}/">Home</a> <a
				href="${pageContext.request.contextPath}/see-allJobs">Jobs</a> <a
				href="https://forms.gle/kz5ugACCkmjUQx9RA" target="_blank">Complaints/Feedback</a>


		</div>

		<div class="social-icons">
			<a
				href="https://www.linkedin.com/in/sahil-shinde-823490272?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i
				class="fab fa-linkedin-in"></i></a> 
		</div>

		<div class="copyright">&copy; 2025 Jobify. All rights reserved.
		</div>
	</div>
</body>
</html>
