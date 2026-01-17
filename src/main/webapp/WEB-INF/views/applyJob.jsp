<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBIFY | Apply Job</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #eef2f5;
}

.container {
	width: 500px;
	margin: 40px auto;
	background: #ffffff;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.brand {
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	color: #007bff;
	margin-bottom: 5px;
}

.subtitle {
	text-align: center;
	font-size: 18px;
	margin-bottom: 25px;
	color: #555;
}

label {
	font-weight: bold;
	margin-top: 10px;
	display: block;
}

input, textarea {
	width: 100%;
	padding: 8px;
	margin-top: 6px;
	border-radius: 4px;
	border: 1px solid #ccc;
}

textarea {
	resize: none;
}

.job-box {
	background: #f7f9fc;
	padding: 10px;
	margin-bottom: 15px;
	border-left: 4px solid #007bff;
	font-weight: bold;
}

button {
	width: 100%;
	margin-top: 20px;
	padding: 10px;
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 4px;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>

<body>

	<div class="container">

		<div class="brand">JOBIFY</div>
		<div class="subtitle">Apply for Job</div>

		<div class="job-box">Welcome to JOBIFY — ${user.name}, this
			could be the start of something great.</div>


		<!-- FORM THAT TRIGGERS CONTROLLER -->
		<form action="${pageContext.request.contextPath}/applyJob"
			method="post" enctype="multipart/form-data">

			<input type="hidden" name="jobTitle"
				value="Java Full Stack Developer"> 
			<label>Full Name</label> <input type="text" name="fullName"
				value="${user.name}" readonly required> <label>Email
				Address</label> <input type="email" name="email" value="${user.email}"
				readonly required> <label>Mobile Number</label> <input
				type="text" name="mobile" placeholder="Enter your mobile number"
				required> <label>Years of Experience</label> <input
				type="number" name="experience" min="0" max="30" required> <label>Why
				should we hire you?</label>
			<textarea name="about" rows="4"
				placeholder="Tell us why you are a good fit" required></textarea>


			<label>Upload Resume</label> <input type="file" name="resume"
				required>

			<button type="submit">Apply Now</button>
		</form>


	</div>

</body>
</html>
