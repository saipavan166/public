<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@page import="com.klef.jfsd.springboot.JANATA.model.Politician" %>
    
<%
Politician poli =  (Politician)session.getAttribute("politician");

if(poli == null){
	response.sendRedirect("politiciansessionexpage");
	return;
}
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Issue</title>
</head>
<body>
    <%@include file="politiciannavbar.jsp" %>
    Welcome <%=poli.getName()%>

    <center>
        <h2>Respond to Issues</h2>
        <table>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Type</th>
                <th>Location</th>
                <th>Reported By</th>
                <th>Constituency</th>
                <th>Created Date</th>
                <th>Urgency Level</th>
                <th>Update Status</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${issuelist}" var="iss">
                <form action="updateIssueFields" method="post">
                    <tr>
                        <td><c:out value="${iss.title}"/></td>
                        <td><c:out value="${iss.description}"/></td>
                        <td><c:out value="${iss.issueType}"/></td>
                        <td><c:out value="${iss.location}"/></td>
                        <td><c:out value="${iss.reportedBy}"/></td>
                        <td><c:out value="${iss.constituency}"/></td>
                        <td><c:out value="${iss.createdDate}"/></td>
                        <td><c:out value="${iss.urgencyLevel}"/></td>
                        <td>
                            <input type="hidden" name="id" value="${iss.id}"/>

                            <!-- Dropdown for Status -->
                            <select name="status" required>
                                <option value="Reported" ${iss.status == 'Reported' ? 'selected' : ''}>Reported</option>
                                <option value="In Progress" ${iss.status == 'In Progress' ? 'selected' : ''}>In Progress</option>
                            </select>

                            <!-- Dropdown for Priority -->
                            <select name="priority" required>
                                <option value="Immediate" ${iss.priority == 'Immediate' ? 'selected' : ''}>Immediate</option>
                                <option value="Soon" ${iss.priority == 'Soon' ? 'selected' : ''}>Soon</option>
                                <option value="Whenever possible" ${iss.priority == 'Whenever possible' ? 'selected' : ''}>Whenever possible</option>
                            </select>

                            <!-- Dropdown for Assigned Department -->
                            <select name="assignedTo" required>
                               <option >---Select Department---</option>
                                <option value="Health Department" ${iss.assignedTo == 'HealthDepartment' ? 'selected' : ''}>Health</option>
                                <option value="Education Department" ${iss.assignedTo == 'EducationDepartment' ? 'selected' : ''}>Education</option>
                                <option value="Infrastructure Department" ${iss.assignedTo == 'InfrastructureDepartment' ? 'selected' : ''}>Infrastructure</option>
                                 <option value="Police Department" ${iss.assignedTo == 'PoliceDepartment' ? 'selected' : ''}>Police</option>
                                
                                <!-- Add more options as needed -->
                            </select>
                        </td>
                        <td>
                            <button type="submit">Respond</button>
                        </td>
                    </tr>
                </form>
            </c:forEach>
        </table>
    </center>
</body>
</html>
