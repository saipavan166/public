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
<html>
<head>
    <meta charset="UTF-8">
    <title>View Issues</title>
    <style>
        /* Style for the table and page */
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #3a7bd5;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;">View Issues</h3>
    
    <form action="viewissues" method="get" style="text-align: center; margin: 20px;">
        <label for="status">Sort by Status:</label>
        <select name="status" id="status" onchange="this.form.submit()">
            <option value="">---Select---</option>
            <option value="ViewALl">View All</option>
            <option value="Reported">Reported</option>
            <option value="In Progress">In Progress</option>
            <option value="Resolved">Resolved</option>
        </select>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Issue Type</th>
            <th>Status</th>
            <th>Priority</th>
            <th>Location</th>
            <th>Constituency</th>
            <th>Reported By</th>
            <th>Assigned To</th>
            <th>Created Date</th>
            <th>Updated Date</th>
            <th>Urgency Level</th>
        </tr>
        <c:forEach items="${issues}" var="issue">
            <tr>
                <td><c:out value="${issue.id}"/></td>
                <td><c:out value="${issue.title}"/></td>
                <td><c:out value="${issue.description}"/></td>
                <td><c:out value="${issue.issueType}"/></td>
                <td><c:out value="${issue.status}"/></td>
                <td><c:out value="${issue.priority}"/></td>
                <td><c:out value="${issue.location}"/></td>
                <td><c:out value="${issue.constituency}"/></td>
                <td><c:out value="${issue.reportedBy}"/></td>
                <td><c:out value="${issue.assignedTo}"/></td>
                <td><c:out value="${issue.createdDate}"/></td>
                <td><c:out value="${issue.updatedDate}"/></td>
                <td><c:out value="${issue.urgencyLevel}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
