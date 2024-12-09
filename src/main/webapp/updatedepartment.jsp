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
    <title>Update Department</title>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Department</u></h3>
    
    <form action="updatedepartment" method="post">
        <input type="hidden" name="id" value="${department.departmentid}"/>

        <label>Name:</label><br>
        <input type="text" name="name" value="${department.name}" required><br><br>

        <label>Constituency:</label><br>
        <input type="text" name="constituency" value="${department.constituency}" required><br><br>

        <label>Description:</label><br>
        <textarea name="description" required>${department.description}</textarea><br><br>

        <label>Contact Email:</label><br>
        <input type="email" name="contactEmail" value="${department.contactEmail}" required><br><br>

        <label>Password:</label><br>
        <input type="password" name="password" placeholder="Leave blank to keep current password"><br><br>

        <input type="submit" value="Update Department">
    </form>
</body>
</html>
