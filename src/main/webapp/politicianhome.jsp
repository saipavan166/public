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
<title>Politician Home</title>
</head>
<body>
<%@include file="politiciannavbar.jsp" %>
Welcome <%=poli.getName()%>
</body>
</html>