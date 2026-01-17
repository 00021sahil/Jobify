<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBIFY | Feedback</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f5;
    }

    .container {
        width: 480px;
        margin: 50px auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
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
        margin-top: 12px;
        display: block;
    }

    input, select, textarea {
        width: 100%;
        padding: 8px;
        margin-top: 6px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    textarea {
        resize: none;
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
    <div class="subtitle">We value your feedback</div>

    <form action="submitFeedback" method="post">

        <label>Your Name</label>
        <input type="text" name="name" required>

        <label>Email Address</label>
        <input type="email" name="email" required>

        <label>Feedback Type</label>
        <select name="type" required>
            <option value="">-- Select --</option>
            <option value="Application Process">Application Process</option>
            <option value="Website Experience">Website Experience</option>
            <option value="Job Listings">Job Listings</option>
            <option value="Other">Other</option>
        </select>

        <label>Your Feedback</label>
        <textarea name="message" rows="4" required></textarea>

        <label>Rating (1 to 5)</label>
        <select name="rating" required>
            <option value="">-- Rate Us --</option>
            <option value="1">1 - Poor</option>
            <option value="2">2 - Fair</option>
            <option value="3">3 - Good</option>
            <option value="4">4 - Very Good</option>
            <option value="5">5 - Excellent</option>
        </select>

        <button type="submit">Submit Feedback</button>

    </form>

</div>

</body>
</html>
