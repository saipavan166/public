<%@page import="com.klef.jfsd.springboot.JANATA.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Citizen citizen = (Citizen) session.getAttribute("citizen");
if(citizen == null) {
    response.sendRedirect("citizensessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Citizen Profile</title>
</head>
<body>
    <%@include file="citizennavbar.jsp" %>
    
    <h4 align="center" style="color:red">
        <c:out value="${message}"></c:out>
    </h4>

    <h3 style="text-align: center;"><u>Update Citizen Profile</u></h3>
    <div align="center" class="form-container">
        <form method="post" action="updateCitizenProfile">
            <table>
                <tr>
                    <td><label for="cid">Citizen ID</label></td>
                    <td><input type="number" id="cid" name="cid" readonly value="<%= citizen.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="firstname">First Name</label></td>
                    <td><input type="text" id="firstname" name="firstname" value="<%= citizen.getFirstname() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="lastname">Last Name</label></td>
                    <td><input type="text" id="lastname" name="lastname" value="<%= citizen.getLastname() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="gender" value="MALE" <%= citizen.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="gender" value="FEMALE" <%= citizen.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="gender" value="OTHERS" <%= citizen.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                 <tr>
                    <td><label for="dob">Enter Date of Birth</label></td>
                    <td><input type="text" id="dob" name="edob" readonly value="<%= citizen.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="address">Address</label></td>
                    <td><input type="text" id="address" name="address" value="<%= citizen.getAddress() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="constituency">Constituency</label></td>
                    <td><input type="text" id="constituency" name="constituency" readonly value="<%= citizen.getConstituency() %>" required/></td>
                </tr>
                
                
                
                <tr>
                    <td><label for="aadhar">Aadhaar Number</label></td>
                    <td><input type="text" id="aadhar" name="aadharno" readonly value="<%= citizen.getAadharnumber() %>" required/></td>
                </tr>
                
                
                
                
                
                <tr>
                    <td><label for="contact">Contact Number</label></td>
                    <td><input type="text" id="contact" name="contact" readonly value="<%= citizen.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="maritalstatus">Marital Status</label></td>
                    <td>
                        <select id="maritalstatus" name="maritalstatus" required>
                            <option value="">---Select---</option>
                            <option value="SINGLE" <%= "SINGLE".equals(citizen.getMaritalstatus()) ? "selected" : "" %>>Single</option>
                            <option value="MARRIED" <%= "MARRIED".equals(citizen.getMaritalstatus()) ? "selected" : "" %>>Married</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="email" id="email" name="email" readonly value="<%= citizen.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input type="password" id="password" name="password" readonly value="<%= citizen.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
