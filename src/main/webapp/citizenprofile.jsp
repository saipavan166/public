<%@page import="com.klef.jfsd.springboot.JANATA.model.Citizen" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Citizen citiz = (Citizen) session.getAttribute("citizen");

// After logout session expired
if (citiz == null) {
    response.sendRedirect("citizensessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9; /* Light background */
            color: #333333; /* Dark text for readability */
        }
        h3 {
            text-align: center;
            color: #0047ab; /* Deep blue color */
            text-decoration: underline;
            margin-top: 20px;
        }
        .profile-container {
            width: 50%;
            margin: 30px auto;
            background-color: #ffffff; /* White background for the container */
            border: 1px solid #dddddd; /* Light gray border */
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            padding: 20px;
        }
        .profile-container div {
            margin: 10px 0;
        }
        .profile-container b {
            color: #0047ab; /* Blue color for labels */
        }
        .profile-container span {
            color: #555555; /* Slightly lighter text for values */
        }
    </style>
</head>
<body>
    <%@ include file="citizennavbar.jsp" %>
    <h3>My Profile</h3>
    <div class="profile-container">
        <div><b>ID:</b> <span><%= citiz.getId() %></span></div>
        <div><b>First Name:</b> <span><%= citiz.getFirstname() %></span></div>
        <div><b>Last Name:</b> <span><%= citiz.getLastname() %></span></div>
        <div><b>Email:</b> <span><%= citiz.getEmail() %></span></div>
        <div><b>Address:</b> <span><%= citiz.getAddress() %></span></div>
        <div><b>Contact:</b> <span><%= citiz.getContact() %></span></div>
        <div><b>Aadhar No:</b> <span><%= citiz.getAadharnumber() %></span></div>
        <div><b>Constituency:</b> <span><%= citiz.getConstituency() %></span></div>
        <div><b>Gender:</b> <span><%= citiz.getGender() %></span></div>
        <div><b>Marital Status:</b> <span><%= citiz.getMaritalstatus() %></span></div>
    </div>
</body>
</html>
