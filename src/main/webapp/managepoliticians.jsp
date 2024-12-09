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
    <title>Manage Politicians</title>
    <style>
        /* Styling for the table */
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
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

        /* Search input styling */
        #myInput {
            width: 50%;
            font-size: 16px;
            padding: 10px;
            margin: 20px auto;
            display: block;
            border: 1px solid #ddd;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            table, th, td {
                font-size: 12px;
            }
            th, td {
                padding: 10px;
            }
            #myInput {
                width: 80%;
            }
        }
    </style>
    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // start from 1 to skip the header row
                td = tr[i].getElementsByTagName("td")[1]; // search in the "Name" column (index 1)
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
    <%@include file="adminnavbar.jsp" %> <!-- Include the navbar, ensure lowercase filename -->

    <h3 style="text-align: center;"><u>Manage Politicians</u></h3>
    <br>
    Total Politicians = <c:out value ="${polcount}"></c:out>
    <br>
    <!-- Search input -->
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
    
    <table id="myTable">
        <tr>
            <th>Politician ID</th>
            <th>Name</th>
            <th>Party</th>
            <th>Constituency</th>
            <th>Position</th>
            <th>Contact Info</th>
            <th>Action</th>
        </tr>
        
        <!-- Displaying the list of politicians -->
        <c:forEach items="${politicianslist}" var="politician">
            <tr>
                <td><c:out value="${politician.id}"/></td>
                <td><c:out value="${politician.name}"/></td>
                <td><c:out value="${politician.party}"/></td>
                <td><c:out value="${politician.constituency}"/></td>
                <td><c:out value="${politician.position}"/></td>
                <td><c:out value="${politician.contactInfo}"/></td>
                <td>
                    <a href='<c:url value="updatepolitician?id=${politician.id}"/>'>Update</a> |
                    <a href='<c:url value="deletepolitician?id=${politician.id}"/>' onclick="return confirm('Are you sure you want to delete this politician?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
