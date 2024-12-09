<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light grey background */
        }

        h3 {
            color: #0047ab; /* Deep blue */
            margin: 10px 0; /* Reduced margin to decrease space */
            text-align: center;
        }

        h4 {
            color: red;
            text-align: center;
            margin-bottom: 10px; /* Minor space after message */
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Aligns the form closer to the top */
            padding-top: 20px; /* Optional: Adjust as needed */
        }

        form {
            background-color: #ffffff; /* White background */
            border: 1px solid #cccccc; /* Light grey border */
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 20px 40px;
            width: 300px;
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px 5px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #0047ab; /* Deep blue */
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
            margin: 5px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #66b2ff; /* Light blue on hover */
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3><u>Admin Login</u></h3>
    <h4>
        <c:out value="${message}"></c:out>
    </h4>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
