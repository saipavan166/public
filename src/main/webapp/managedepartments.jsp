<%@page import="com.klef.jfsd.springboot.JANATA.model.Admin"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Departments</title>
    <style>
        /* Styling for the table */
        table {
            width: 100%;
            max-width: 1200px;
            margin: 40px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table borders */
        table, th, td {
            border: 1px solid #ddd;
        }

        /* Table header */
        th {
            padding: 15px;
            background-color: #3a7bd5;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
        }

        /* Table cells */
        td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
            font-size: 14px;
            color: #333;
        }

        /* Alternating row colors */
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        /* Hover effect for table rows */
        tr:hover {
            background-color: #f1f1f1;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }
            
            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %> <!-- Navbar include, make sure adminnavbar.jsp is in lowercase -->

    <h3 style="text-align: center;"><u>Manage Departments</u></h3>
    <br>
    Total Departments = <c:out value ="${deptcount}"></c:out>
    <br>
    
    <table>
        <tr>
            <th>Department ID</th>
            <th>Name</th>
            <th>Constituency</th>
            <th>Description</th>
            <th>Contact Email</th>
            <th>Action</th>
        </tr>
        
        <!-- Displaying the list of departments -->
        <c:forEach items="${departmentslist}" var="department">
            <tr>
                <td><c:out value="${department.departmentid}"/></td>
                <td><c:out value="${department.name}"/></td>
                <td><c:out value="${department.constituency}"/></td>
                <td><c:out value="${department.description}"/></td>
                <td><c:out value="${department.contactEmail}"/></td>
                <td>
                    <a href='<c:url value="updatedepartment?id=${department.departmentid}"/>'>Update</a> |
                    <a href='<c:url value="deletedepartment?id=${department.departmentid}"/>' onclick="return confirm('Are you sure you want to delete this department?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
