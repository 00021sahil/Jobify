<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify OTP</title>

<style>
    body {
        font-family: Arial;
        background: #eef2f5;
    }
    .box {
        width: 400px;
        margin: 100px auto;
        background: white;
        padding: 25px;
        border-radius: 6px;
        text-align: center;
    }
    input, button {
        width: 100%;
        padding: 10px;
        margin-top: 15px;
    }
    button {
        background: #007bff;
        color: white;
        border: none;
    }
</style>
</head>
<body>

<div class="box">
    <h2>OTP Verification</h2>

    <form action="${pageContext.request.contextPath}/verifyOtp" method="post">
        <input type="text" name="otp" placeholder="Enter OTP" required>
        <button type="submit">Verify OTP</button>
    </form>
</div>

</body>
</html>
