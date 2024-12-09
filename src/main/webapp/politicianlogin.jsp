<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Politician Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }
        h3 {
            color: #333;
            font-size: 24px;
        }
        h4 {
            color: red;
            font-size: 16px;
        }
        .form-container {
            width: 40%;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            margin: 20px 0;
            border-spacing: 0;
        }
        td {
            padding: 10px;
            text-align: left;
            font-size: 16px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }
        input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 48%;
            margin-top: 15px;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
        .error-message {
            color: red;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Politician Login</u></h3>
    <h4 align="center">
        <c:out value="${message}" />
    </h4>
    <div class="form-container">
        <form method="post" action="checkpoliticianlogin">
            <table>
                <tr>
                    <td><label for="username">Enter Username</label></td>
                    <td><input type="text" id="username" name="username" required /></td>
                </tr>
                <tr>
                    <td><label for="password">Enter Password</label></td>
                    <td><input type="password" id="password" name="password" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
