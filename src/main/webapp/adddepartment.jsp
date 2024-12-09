<%@page import="com.klef.jfsd.springboot.JANATA.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Admin admin = (Admin)session.getAttribute("admin");
if(admin==null)
{
    response.sendRedirect("adminsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Department</title>
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

        input[type="text"], input[type="email"], input[type="password"], textarea, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical; /* Allow resizing only vertically */
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
    <h3><u>Add Department</u></h3>
    <div class="form-container">
        <form method="post" action="insertdepartment">
            <table>
               <tr>
                    <td><label for="depid">Enter Department ID</label></td>
                    <td><input type="text" id="depid" name="depid" required/></td>
                </tr>
                <tr>
                    <td><label for="dname">Select Department Name</label></td>
                    <td>
                        <select id="dname" name="dname" required>
                            <option value="">---Select Department---</option>
                            <option value="Health Department">Health</option>
                            <option value="Education Department">Education</option>
                            <option value="Infrastructure Department">Infrastructure</option>
                            <option value="Police Department">Police</option>
                            <!-- Add more options as needed -->
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="pconstituency">Enter Constituency</label></td>
                    <td><input type="text" id="pconstituency" name="pconstituency" required/></td>
                </tr>
                <tr>
                    <td><label for="ddescription">Enter Description</label></td>
                    <td><textarea id="ddescription" name="ddescription" rows="3" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="dcontact_email">Enter Contact Email</label></td>
                    <td><input type="email" id="dcontact_email" name="dcontact_email" required/></td>
                </tr>
                <tr>
                    <td><label for="dpassword">Enter Password</label></td>
                    <td><input type="password" id="dpassword" name="dpassword" required/></td>
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
