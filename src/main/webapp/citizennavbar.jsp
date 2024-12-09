<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffffff; /* White background */
            color: #000000; /* Black text for readability */
        }

        h2 {
            color: #0047ab; /* Deep blue for the header */
            text-align: center;
            text-shadow: 0 0 4px #0047ab, 0 0 6px #0047ab; /* Subtle glow effect */
            margin-top: 20px;
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: #f0f0f0; /* Light gray for navbar background */
            padding: 10px 0;
            border-bottom: 2px solid #0047ab; /* Deep blue border for techy look */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .navbar a {
            text-decoration: none;
            color: #0047ab; /* Deep blue for links */
            padding: 10px 20px;
            margin: 0 10px;
            font-weight: bold;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

        .navbar a:hover {
            background-color: #0047ab; /* Deep blue background on hover */
            color: #ffffff; /* White text on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }
    </style>
</head>
<body>
    <h2 align="center">PublicPluse</h2>
    <div class="navbar">
        <a href="citizenhome">Home</a>
        <a href="citizenprofile">Profile</a>
        <!--  <a href="updatecitizen"> Update  Profile</a> -->
        <a href="addissue">Report Issue</a> 
        <!--  <a href="trackissue">Track issue</a> -->
        <a href="citizenlogout">Logout</a>
    </div>
</body>
</html>
