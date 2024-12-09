<%@page import="com.klef.jfsd.springboot.JANATA.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Admin admin = (Admin)session.getAttribute("admin");
if(admin == null)
{
    response.sendRedirect("adminsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Politician Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9; /* Light background color */
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #0047ab; /* Deep blue */
            margin-top: 20px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2); /* Subtle shadow */
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-top: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            width: 48%;
            padding: 10px;
            margin-top: 20px;
            background-color: #0047ab;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #66b2ff; /* Light blue on hover */
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <h3><u>Add Politician</u></h3>
    <div class="form-container">
        <form method="post" action="insertpolitician">
            <table>
               <tr>
                    <td><label for="pname">Enter Name</label></td>
                    <td><input type="text" id="pname" name="pname" required/></td>
                </tr>
                <tr>
                    <td><label for="pparty">Select Party</label></td>
                    <td>
                        <select id="pparty" name="pparty" required>
                            <option value="" disabled selected>Select Party</option>
                            <option value="TDP">TDP</option>
                            <option value="YCP">YCP</option>
                            <option value="JANASENA">JANASENA</option>
                            <option value="BJP">BJP</option>
                            <option value="CONGRESS">CONGRESS</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="pconstituency">Enter Constituency</label></td>
                    <td><input type="text" id="pconstituency" name="pconstituency" required/></td>
                </tr>
                <tr>
                    <td><label for="pposition">Enter Position</label></td>
                    <td><input type="text" id="pposition" name="pposition" required/></td>
                </tr>
                <tr>
                    <td><label for="pcontact_info">Enter Contact Information</label></td>
                    <td><input type="text" id="pcontact_info" name="pcontact_info" required/></td>
                </tr>
                <tr>
                    <td><label for="ppassword">Enter Password</label></td>
                    <td><input type="password" id="ppassword" name="ppassword" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Submit"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
