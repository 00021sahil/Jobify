<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Details - Jobify</title>
<style>
body, html {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.background {
	min-height: 100vh;
	background:
		url('${pageContext.request.contextPath}/resources/images/jobify-bg.jpg')
		no-repeat center center/cover;
	position: relative;
	padding: 50px 20px;
}

.background::after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	z-index: 0;
}

.content {
	position: relative;
	z-index: 1;
	max-width: 1000px;
	margin: 0 auto;
	background: rgba(255, 255, 255, 0.95);
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

h2 {
	text-align: center;
	color: #4e54c8;
	margin-bottom: 25px;
}

.job-card {
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 20px;
	margin-bottom: 20px;
	background-color: #fff;
	transition: box-shadow 0.3s;
}

.job-card:hover {
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.job-card h3 {
	color: #4e54c8;
	margin-bottom: 10px;
}

.job-card p {
	margin: 5px 0;
	color: #555;
}

.apply-button a {
	display: inline-block;
	margin-top: 10px;
	padding: 10px 15px;
	background-color: #4e54c8;
	color: white;
	text-decoration: none;
	border-radius: 5px;
	transition: background 0.3s;
}

.apply-button a:hover {
	background-color: #8f94fb;
}

.no-jobs {
	text-align: center;
	color: #555;
	font-size: 16px;
	padding: 20px 0;
}
</style>
</head>
<body>

	<div class="background">
		<div class="content">
			<h2>All Job Details</h2>

			<c:choose>
				<c:when test="${not empty jobs}">
					<c:forEach var="job" items="${jobs}">
						<div class="job-card">
							<h3>${job.jobTitle}@${job.company}</h3>
							<p>
								<strong>Skills Required:</strong> ${job.requiredSkills}
							</p>
							<p>
								<strong>Degree Required:</strong> ${job.requiredDegree}
							</p>
							<p>
								<strong>Description:</strong> ${job.jobDescription}
							</p>
							<p>
								<strong>Email:</strong> ${job.companyMail}
							</p>
							<p>
								<strong>Location:</strong> ${job.jobLocation}
							</p>

							<p class="apply-button">
								<c:choose>
									<c:when test="${not empty loggedInUser}">
										<a href="${job.applyLink}" target="_blank"
											class="btn btn-primary">Apply</a>
									</c:when>
									<c:otherwise>
										<a href="login" class="btn btn-secondary">Login to Apply</a>
									</c:otherwise>
								</c:choose>
							</p>

						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div class="no-jobs">No job postings available.</div>
				</c:otherwise>
			</c:choose>

		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>
