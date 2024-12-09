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
<title>Politician Profile</title>
</head>
<body>
<%@include file="politiciannavbar.jsp" %>
Welcome <%=poli.getName()%>
</body>

<!-- (pid,pname, pparty, pconstituency, pposition, pcontact_info, ppassword)
 -->
 <br>Id = <%=poli.getId() %><br>
 <br>Name = <%=poli.getName() %><br>
 <br>Party = <%=poli.getParty() %><br>
 <br>Constituency = <%=poli.getConstituency() %><br>
 <br>Position = <%=poli.getPosition() %><br>
 <br>Contact Info = <%=poli.getContactInfo() %><br>
 
 <br>
 <a href="updateprofilepage">Update Profile</a>
 
 
 </body>
</html>