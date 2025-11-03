<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Users - Jobify</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .background {
            min-height: 100vh;
            background: url('${pageContext.request.contextPath}/resources/images/jobify-bg.jpg') no-repeat center center/cover;
            position: relative;
            padding: 50px 20px;
        }

        .background::after {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-color: rgba(0,0,0,0.6); /* dark overlay */
            z-index: 0;
        }

        .content {
            position: relative;
            z-index: 1;
            max-width: 1000px;
            margin: 0 auto;
            background: rgba(255,255,255,0.95);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #4e54c8;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #4e54c8;
            color: white;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        .no-users {
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
        <h2>All Registered Users</h2>

        <c:choose>
            <c:when test="${not empty users}">
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Skills</th>
                        <th>Preferred Jobs</th>
                        <th>Preferred Location</th>
                        <th>Preferred Salary</th>
                    </tr>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.uid}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.username}</td>
                            <td>${user.skills}</td>
                            <td>${user.preferedJobs}</td>
                            <td>${user.preferedLocation}</td>
                            <td>${user.preferedSalary}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <div class="no-users">No users found.</div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
