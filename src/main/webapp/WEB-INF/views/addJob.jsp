<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Job - Jobify</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f6f9;
}

.job-container {
	max-width: 600px;
	margin: 50px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.job-container h2 {
	text-align: center;
	color: #4e54c8;
	margin-bottom: 25px;
}

.job-container form {
	display: flex;
	flex-direction: column;
}

.job-container label {
	margin-bottom: 5px;
	font-weight: bold;
}

.job-container input, .job-container textarea {
	margin-bottom: 15px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

.job-container textarea {
	resize: vertical;
}

.job-container button {
	background: #4e54c8;
	color: white;
	padding: 12px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	transition: background 0.3s;
}

.job-container button:hover {
	background: #8f94fb;
}
</style>
</head>
<body>
	<div class="job-container">
		<h2>Add New Job</h2>
		<form action="${pageContext.request.contextPath}/add-job"
			method="post">
			<c:if test="${not empty errorMessage}">
				<p style="color: red; text-align: center;">${errorMessage}</p>
			</c:if>

			<c:if test="${not empty msg}">
				<p style="color: green; text-align: center;">${msg}</p>
			</c:if>

			<label for="company">Company</label> <input type="text" id="company"
				name="company" placeholder="Company Name" required> <label
				for="jobTitle">Job Title</label> <input type="text" id="jobTitle"
				name="jobTitle" placeholder="Job Title" required> <label
				for="RequiredSkills">Required Skills</label> <input type="text"
				id="RequiredSkills" name="RequiredSkills"
				placeholder="e.g., Java, SQL" required> <label
				for="RequiredDegree">Required Degree</label> <input type="text"
				id="RequiredDegree" name="RequiredDegree"
				placeholder="e.g., B.Tech, MBA"> <label for="jobDescription">Job
				Description</label>
			<textarea id="jobDescription" name="jobDescription" rows="4"
				placeholder="Write job description here" required></textarea>


			<label for="companyMail">Company Email</label> <input type="email"
				id="companyMail" name="companyMail" placeholder="hr@company.com"
				required> <label for="ApplyLink">Apply Link</label> <input
				type="text" id="ApplyLink" name="ApplyLink"
				placeholder="Job application link" required> <label
				for="jobLocation">Job Location</label> <input type="text"
				id="jobLocation" name="jobLocation"
				placeholder="e.g., Mumbai, Remote" required>

			<button type="submit">Add Job</button>
		</form>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>
