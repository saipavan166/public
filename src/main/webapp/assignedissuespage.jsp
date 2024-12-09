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
<title>Assigned IssuePage</title>


</head>
<body>
<%@include file="departmentnavbar.jsp" %>

Department : <%=dep.getName() %>
Constituency : <%=dep.getConstituency() %>

<h1>assigned Isuues Page</h1>

 <center>
 
 <h2> Respond to Issues </h2>
 <form  action="issueupdate">
 
    <table>
          
            
            <tr>
                <td><label for="iname">Department Name</label></td>
                <td><input type="text" id="iname" name="iname" readonly="readonly" value="<%=dep.getName() %>" required/></td>
            </tr>
            <tr>
                <td><label for="pconstituency">Constituency</label></td>
                <td><input type="text" id="pconstituency" name="pconstituency" readonly="readonly" value="<%= dep.getConstituency() %>" required/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="respond"/>
                    
                </td>
            </tr>
        </table>
 
 </form>
 
 </center>

</body>
</html>