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
    <title>View All Issues</title>
<style>
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
     
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) { // Start from 1 to skip the header row
    td = tr[i].getElementsByTagName("td")[2]; // IssueType is the third column (index 2)
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
     <%@include file="politiciannavbar.jsp" %>
     Welcome <%=poli.getName()%>
    <!-- <h3 style="text-align: center;"><b>View All Employees</b></h3> -->
  
  
  <center> 

  <!-- Updated the placeholder to "Enter Issue Type" -->
  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Issue Type">
   <table border="2" id="myTable">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>IssueType</th>
            <th>Location</th>
            <th>Reported By</th>
            <th>Constituency</th>
            <th>Created Date</th>
            <th>Urgency Level</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${issuelist}" var="iss">
            <tr>
                <td><c:out value="${iss.title}"/></td>
                <td><c:out value="${iss.description}"/></td>
                <td><c:out value="${iss.issueType}"/></td>
                <td><c:out value="${iss.location}"/></td>
                <td><c:out value="${iss.reportedBy}"/></td>
                <td><c:out value="${iss.constituency}"/></td>
                <td><c:out value="${iss.createdDate}"/></td>
                <td><c:out value="${iss.urgencyLevel}"/></td>
                <td><c:out value="${iss.status}"/></td>
            </tr>
        </c:forEach>
    </table></center>
</body>
</html>
