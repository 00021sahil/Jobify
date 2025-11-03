<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - Jobify</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
        }

        .registration-container {
            max-width: 500px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .registration-container h2 {
            text-align: center;
            color: #4e54c8;
            margin-bottom: 25px;
        }

        .registration-container form {
            display: flex;
            flex-direction: column;
        }

        .registration-container label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        .registration-container input,
        .registration-container textarea,
        .registration-container select {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .registration-container button {
            background: #4e54c8;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .registration-container button:hover {
            background: #8f94fb;
        }

        .registration-container .login-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .registration-container .login-link a {
            color: #4e54c8;
            text-decoration: none;
        }

        .registration-container .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="registration-container">
    <h2>Register for Jobify</h2>
    <form action="${pageContext.request.contextPath}/add-user" method="post">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Your Name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Your Email" required>

        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Choose a username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required>

        <label for="skills">Skills</label>
        <textarea id="skills" name="skills" placeholder="List your skills" rows="2" required></textarea>

        <label for="preferedJobs">Preferred Jobs</label>
        <input type="text" id="preferedJobs" name="preferedJobs" placeholder="e.g.,Developer/Tester">

        <label for="preferedLocation">Preferred Location</label>
        <input type="text" id="preferedLocation" name="preferedLocation" placeholder="e.g., Mumbai, Remote">

        <label for="preferedSalary">Preferred Salary</label>
        <input type="text" id="preferedSalary" name="preferedSalary" placeholder="e.g., 50000 - 70000">

        <button type="submit">Register</button>
    </form>

    <div class="login-link">
        Already have an account? <a href="${pageContext.request.contextPath}/verifyLogin">Login here</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
