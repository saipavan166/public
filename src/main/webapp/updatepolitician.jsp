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
    <title>Update Politician</title>
</head>
<body>
    <%@include file="adminnavbar.jsp" %> <!-- Include the admin navbar -->

    <h3 style="text-align: center;"><u>Update Politician</u></h3>
    
    <form action="${pageContext.request.contextPath}/updatepolitician" method="post" style="max-width: 500px; margin: 0 auto;">
        <input type="hidden" name="id" value="${politician.id}" />

        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="${politician.name}" required><br><br>

        <label for="party">Party:</label><br>
        <input type="text" id="party" name="party" value="${politician.party}" required><br><br>

        <label for="constituency">Constituency:</label><br>
        <input type="text" id="constituency" name="constituency" value="${politician.constituency}" required><br><br>

        <label for="position">Position:</label><br>
        <input type="text" id="position" name="position" value="${politician.position}" required><br><br>

        <label for="contactInfo">Contact Info:</label><br>
        <input type="text" id="contactInfo" name="contactInfo" value="${politician.contactInfo}" required><br><br>

        <label>Password:</label><br>
        <input type="password" name="password" placeholder="Leave blank to keep current password"><br><br>

        <input type="submit" value="Update Politician">
    </form>
</body>
</html>
