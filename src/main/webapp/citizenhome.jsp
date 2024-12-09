<%@page import="com.klef.jfsd.springboot.JANATA.model.Citizen"%>
<%
Citizen citiz =(Citizen)session.getAttribute("citizen");


//after logout session expired
if(citiz == null){
  response.sendRedirect("empsessionexpiry");
  return;
}

%>
<html>
<head>
<meta charset="UTF-8">
<title>Citizen Home</title>
</head>
<body>
<%@include file="citizennavbar.jsp" %>
Welcome <%=citiz.getFirstname()%> <!-- keep it in nav bar -->
</body>
</html>