<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You | JOBIFY</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f5;
    }

    .container {
        width: 500px;
        margin: 100px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 8px;
        text-align: center;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .check {
        font-size: 50px;
        color: #28a745;
    }

    h2 {
        margin-top: 10px;
        color: #333;
    }

    p {
        color: #555;
        font-size: 16px;
        margin-top: 10px;
    }

    a {
        display: inline-block;
        margin-top: 25px;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }

    a:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<div class="container">
    <div class="check">✔</div>

    <h2>Thank You for Applying!</h2>

    <p>
        We appreciate your interest in joining <strong>JOBIFY</strong>.<br>
        Your application has been received successfully.
    </p>

    <p>
        Our team will review your profile and contact you if your skills
        match our requirements.
    </p>

    <a href="${pageContext.request.contextPath}/see-allJobs">
        View More Jobs
    </a>
</div>

</body>
</html>
