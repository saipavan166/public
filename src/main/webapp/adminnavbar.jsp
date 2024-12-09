<!DOCTYPE html>
<html>
<head>
    <title>SevaNet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff; /* Light blue background */
        }

        h2 {
            text-align: center;
            color: #0047ab; /* Deep blue */
            margin-top: 20px;
            text-shadow: 2px 2px 4px #888888; /* Subtle shadow */
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: #0047ab; /* Deep blue */
            padding: 10px 0;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Navbar shadow */
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-weight: bold;
            border-radius: 4px;
            transition: background-color 0.3s ease-in-out;
        }

        .navbar a:hover {
            background-color: #66b2ff; /* Light blue on hover */
        }

        .navbar a.active {
            background-color: #002d70; /* Darker blue for active link */
        }

        /* Optional: Responsive navbar for small screens */
        @media screen and (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <h2>PublicPulse</h2>
    <div class="navbar">
        <a href="adminhome" class="active">Home</a>
        <a href="addpolitician">Add Politician</a>
        <a href="adddepartment">Add Department</a>
        <a href="managecitizens">Manage Citizens</a>
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>
