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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h1>Admin Home</h1>
</body>
</html>