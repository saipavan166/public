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
    <title>Manage Citizens</title>
    <style>
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
        th {
            padding: 15px;
            background-color: #3a7bd5;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            font-size: 14px;
        }
        td {
            padding: 12px;
            text-align: center;
            word-wrap: break-word;
            font-size: 14px;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }

        /* Search box styling */
        #searchInput {
            margin: 20px auto;
            display: block;
            width: 300px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            text-align: center;
        }
    </style>
    <script>
        function searchByConstituency() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("citizenTable");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those that don't match the search
            for (i = 1; i < tr.length; i++) { // Skip header row
                td = tr[i].getElementsByTagName("td")[7]; // Constituency column (index 7)
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }       
            }
        }
    </script>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Manage Citizens</u></h3>
<br>
    Total Citizens = <c:out value ="${citizencount}"></c:out>
    <br>
    <!-- Search box -->
    <input type="text" id="searchInput" onkeyup="searchByConstituency()" placeholder="Search by Constituency">

    <table id="citizenTable">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>ADDRESS</th>
            <th>CONTACT</th>
            <th>AADHAR NUMBER</th>
            <th>CONSTITUENCY</th>
            <th>MARITAL STATUS</th>
            <th>EMAIL</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${citizenlist}" var="citizen">
            <tr>
                <td><c:out value="${citizen.id}"/></td>
                <td><c:out value="${citizen.firstname}"/> <c:out value="${citizen.lastname}"/></td>
                <td><c:out value="${citizen.gender}"/></td>
                <td><c:out value="${citizen.dateofbirth}"/></td>
                <td><c:out value="${citizen.address}"/></td>
                <td><c:out value="${citizen.contact}"/></td>
                <td><c:out value="${citizen.aadharnumber}"/></td>
                <td><c:out value="${citizen.constituency}"/></td>
                <td><c:out value="${citizen.maritalstatus}"/></td>
                <td><c:out value="${citizen.email}"/></td>
                <td><c:out value="${citizen.status}"/></td>
                <td>
                    <a href='<c:url value="updatestatus?id=${citizen.id}&status=Accepted"></c:url>'>Accept</a> |
                    <a href='<c:url value="updatestatus?id=${citizen.id}&status=Rejected"></c:url>'>Reject</a> |
                    <a href='<c:url value="deletecitizen?id=${citizen.id}"/>' onclick="return confirm('Are you sure you want to delete this Citizen?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
