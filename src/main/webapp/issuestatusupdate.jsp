<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.klef.jfsd.springboot.JANATA.model.Department" %>

<%
Department dep = (Department) session.getAttribute("department");

if (dep == null) {
    response.sendRedirect("politiciansessionexpage");
    return;
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Issue Status Update</title>
<style>
    /* Styling similar to your previous setup */
    table {
        width: 100%;
        max-width: 1200px;
        margin: 20px auto;
        border-collapse: separate;
        border-spacing: 0;
        background-color: #001f1e;
        color: white;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        padding: 15px;
        text-align: center;
        word-wrap: break-word;
        border-bottom: 1px solid #ffffff33;
    }

    th {
        background-color: #00302e;
        color: white;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    tr:hover {
        background-color: #004945;
        transition: background-color 0.3s ease;
    }

    tr:nth-child(even) {
        background-color: #002e2c;
    }

    tr:nth-child(odd) {
        background-color: #00302e;
    }

    td {
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    tr:hover td {
        color: #ffffff;
    }
</style>
</head>

<body>
<%@ include file="departmentnavbar.jsp" %>

Department : <%= dep.getName() %><br>
Constituency : <%= dep.getConstituency() %>

<h1>Resolve the Issues</h1>

<center>
    <table>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Issue Type</th>
            <th>Location</th>
            <th>Reported By</th>
            <th>Constituency</th>
            <th>Created Date</th>
            <th>Urgency Level</th>
            <th>Status</th>
            <th>Update Date</th>
            <th>Actions</th>
        </tr>
        
        <c:forEach items="${issues}" var="iss">
            <!-- Form for each row to update status and update date -->
            <form action="issueupdation" method="post">
                <tr>
                    <td><c:out value="${iss.title}"/></td>
                    <td><c:out value="${iss.description}"/></td>
                    <td><c:out value="${iss.issueType}"/></td>
                    <td><c:out value="${iss.location}"/></td>
                    <td><c:out value="${iss.reportedBy}"/></td>
                    <td><c:out value="${iss.constituency}"/></td>
                    <td><c:out value="${iss.createdDate}"/></td>
                    <td><c:out value="${iss.urgencyLevel}"/></td>
                    
                    <!-- Dropdown to update the Status -->
                    <td>
                        <input type="hidden" name="id" value="${iss.id}" />
                        <select name="status" required>
                            
                            <option value="In Progress" ${iss.status == 'In Progress' ? 'selected' : ''}>In Progress</option>
                            <option value="Resolved" ${iss.status == 'Resolved' ? 'selected' : ''}>Resolved</option>
                        </select>
                    </td>

                    <!-- Date input for update date, defaults to current date -->
                    <td>
                        <input type="date" name="updateDate" value="${iss.updatedDate != null ? iss.updatedDate : ''}" required>
                    </td>

                    <!-- Update button -->
                    <td>
                        <button type="submit">Update</button>
                    </td>
                </tr>
            </form>
        </c:forEach>
    </table>
</center>
</body>
</html>
