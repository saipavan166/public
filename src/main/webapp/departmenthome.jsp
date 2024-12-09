<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
<title>Department Home</title>
</head>
<body>
<%@include file="departmentnavbar.jsp" %>



Department : <%=dep.getName() %>
Constituency : <%=dep.getConstituency() %>
<h1>Home Page</h1>

 <h4 align="center" style="color: red">
    <c:out value="${message}"></c:out>
    </h4>
    

</body>
</html>