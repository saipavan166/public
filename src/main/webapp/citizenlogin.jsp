<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Citizen Login</title>
    <style>
        /* Centering and styling the form */
        .form-container {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }

        h3 {
            text-align: center;
            color: #333;
        }

        .message {
            color: red;
            text-align: center;
        }

        table {
            width: 100%;
            margin: 0 auto;
        }

        td {
            padding: 10px;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            margin: 10px;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <h3><u>Citizen Login</u></h3>
    
    <h4 class="message">
        <c:out value="${msg}"></c:out>
    </h4>
    
    <div class="form-container">
        <form method="post" action="checkCitizenLogin">
            <table>
                <tr>
                    <td><label for="aadharno">Enter Aadhar Number</label></td>
                    <td><input type="text" id="aadharno" name="aadharNumber" required/></td>
                </tr>
                <tr>
                    <td><label for="cpwd">Enter Password</label></td>
                    <td><input type="password" id="cpwd" name="password" required/></td>
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
