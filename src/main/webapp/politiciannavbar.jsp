<html>
<head>
    <title>Sevanet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: center;
            padding: 10px;
            position: sticky;
            top: 0;
        }
        .navbar a {
            color: white;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        /* Responsive design for mobile */
        @media screen and (max-width: 600px) {
            .navbar a {
                padding: 10px;
                font-size: 14px;
                margin: 5px 0;
                width: 100%;
                text-align: left;
            }
        }
    </style>
</head>
<body>
    <h2>PublicPulse</h2>
    <div class="navbar">
        <a href="politicianhome">Home</a>
        <a href="viewissuespage">Current Issues</a>
        <a href="respondtoissuespage">Respond To Issues</a>
        <!-- <a href="sendannouncementspage">Send Announcements</a>
        <a href="viewfeedbackpage">View Feedback</a> -->
        <!-- <a href="profilepage">Profile</a> -->
        <a href="politicianlogout">Logout</a> <!-- Controller method -->
    </div>
</body>
</html>
