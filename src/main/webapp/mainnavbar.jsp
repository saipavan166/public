<!DOCTYPE html>
<html>
<head>
    <title>JANATA</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff; /* Light blue background */
        }

        h1 {
            color: #0047ab; /* Deep blue */
            text-shadow: 2px 2px 4px #888888; /* Subtle shadow for the heading */
            margin-top: 20px;
            font-size: 36px;
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: #0047ab; /* Deep blue */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Adds depth to the navbar */
            padding: 10px 0;
        }

        .navbar a {
            text-decoration: none;
            color: white; /* White text for contrast */
            padding: 10px 20px;
            margin: 0 10px;
            font-weight: bold;
            transition: all 0.3s ease-in-out; /* Smooth hover effect */
            border-radius: 5px;
        }

        .navbar a:hover {
            background-color: #66b2ff; /* Light blue on hover */
            color: #0047ab; /* Text turns deep blue */
            box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3); /* Adds a hover shadow effect */
        }

        .navbar a:active {
            background-color: #003366; /* Darker shade of blue when clicked */
            color: white;
        }
    </style>
</head>
<body>
    <h1 align="center">PublicPulse</h1>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="adminlogin">Admin Login</a>
        <a href="politicianlogin">Politician Login</a>
        <a href="departmentlogin">Department Login</a>
        <a href="citizenlogin">Citizen Login</a>
        <a href="citizenreg">Citizen Registration</a>
    </div>
</body>
