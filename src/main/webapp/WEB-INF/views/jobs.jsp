<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Jobs - Jobify</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f6f9;
	margin: 0;
	padding: 20px;
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

.job-listings {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
	gap: 20px;
}

.job-card {
	background: #fff;
	padding: 20px;
	border-radius: 12px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.2s ease;
}

.job-card:hover {
	transform: translateY(-5px);
}

.job-card h3 {
	margin: 0 0 10px;
	color: #333;
}

.job-card p {
	color: #666;
	font-size: 14px;
	margin-bottom: 15px;
}

.apply-btn {
	display: inline-block;
	padding: 10px 15px;
	background: #007bff;
	color: #fff;
	border-radius: 8px;
	text-decoration: none;
	transition: background 0.3s ease;
}

.apply-btn:hover {
	background: #0056b3;
}
</style>
</head>
<body>

	<h2>Available Jobs</h2>

	<div class="job-listings">
		<c:forEach var="job" items="${jobs}">
			<div class="job-card">
				<h3>${job.jobTitle}</h3>
				<p>${job.jobDescreption}</p>
				<p>
					<strong>Company:</strong> ${job.company}
				</p>
				<p>
					<strong>Skills:</strong> ${job.requiredSkills}
				</p>
				<p>
					<strong>Degree:</strong> ${job.requiredDegree}
				</p>
				<p>
					<strong>Location:</strong> ${job.jobLocation}
				</p>
				<p>
					<strong>Contact:</strong> ${job.companyMail}
				</p>

				<a href="${job.applyLink}" target="_blank" class="apply-btn">Apply Now</a>

			</div>
		</c:forEach>
	</div>


</body>
</html>
