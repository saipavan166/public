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
<title>SendAnnouncementPage</title>
</head>
<body>
<%@include file="politiciannavbar.jsp" %>

Welcome <%=poli.getName()%></body>
</html>