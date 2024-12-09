<%@page import="com.klef.jfsd.springboot.JANATA.model.Department"%>
<%

Department dep = (Department) session.getAttribute("department");

if(dep == null){
	
	response.sendRedirect("politiciansessionexpage");
	return;
}

%>
<html>
<head>
<meta charset="UTF-8">
<title>Department Profile</title>
</head>
<body>
<%@include file="departmentnavbar.jsp" %>


<h1>Department Profile Page</h1>

<!-- depid  | pconstituency | dcontact_email       | ddescription                                    | dname      -->

 <br>Department Id = <%=dep.getDepartmentid() %><br>
 <br>Department Name = <%=dep.getName() %><br>
 <br>Department Constituency = <%=dep.getConstituency() %><br>
 <br>Department Email = <%=dep.getContactEmail() %><br>
 <br>Department Description = <%=dep.getDescription() %><br>


</body>
</html>