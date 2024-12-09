<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Report Issue</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f9fc; /* Light blue background */
        }

        h3 {
            text-align: center;
            color: #004aad; /* Deep blue */
            margin-top: 20px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            background: #ffffff; /* White background */
            width: 80%;
            max-width: 600px;
            margin: 30px auto;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2); /* Subtle shadow */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
            color: #333333;
        }

        input[type="text"], textarea, select, input[type="date"], input[type="file"] {
            width: 100%;
            padding: 8px 12px;
            margin: 5px 0;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        textarea {
            resize: none;
        }

        .button {
            background-color: #004aad; /* Deep blue */
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .button:hover {
            background-color: #0073e6; /* Lighter blue */
        }

        @media (max-width: 600px) {
            .form-container {
                width: 90%;
                padding: 15px 20px;
            }

            td {
                display: block;
                width: 100%;
            }

            td:first-child {
                margin-top: 10px;
            }

            input[type="text"], textarea, select, input[type="date"], input[type="file"], .button {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <%@ include file="citizennavbar.jsp" %>

    <h3><u>Report an Issue</u></h3>

    <form action="insertissue" method="post" enctype="multipart/form-data" class="form-container">
        <table>
            <tr>
                <td><label>Title:</label></td>
                <td><input type="text" name="title" required="required" /></td>
            </tr>
            <tr>
                <td><label>Description:</label></td>
                <td><textarea name="description" rows="4" required="required"></textarea></td>
            </tr>
            <tr>
                <td><label>Issue Type:</label></td>
                <td>
                    <select name="issueType" required="required">
                        <option value="">---Select---</option>
                        <option value="Infrastructure">Infrastructure</option>
                        <option value="Health">Health</option>
                        <option value="Education">Education</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Location:</label></td>
                <td><input type="text" name="location" required="required" /></td>
            </tr>
            <tr>
                <td><label>Constituency:</label></td>
                <td>
                    <select id="constituency" name="constituency" required="required">
                        <option value="">---Select Constituency---</option>
                        <option value="constituency1">Constituency1</option>
                        <option value="constituency2">Constituency2</option>
                        <option value="constituency3">Constituency3</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><label>Reported By:</label></td>
                <td><input type="text" name="reportedBy" placeholder="ENTER ONLY FIRST NAME" required="required" /></td>
            </tr>
            <tr>
                <td><label>Created Date:</label></td>
                <td><input type="date" name="createdDate" required="required" /></td>
            </tr>
            <tr>
                <td><label>Attach File:</label></td>
                <td>
                    <input type="file" name="attachment" accept=".pdf, .jpg, .jpeg, .png, .gif" />
                    <small>Supported formats: PDF, JPG, PNG, GIF</small>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="Report Issue" class="button" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
