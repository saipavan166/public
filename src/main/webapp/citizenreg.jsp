<!DOCTYPE html>
<html>
<head>
    <title>Citizen Registration</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <h3 style="text-align: center;"><u>Citizen Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertcitizen">
            <table>
                <tr>
                    <td><label for="firstName">First Name</label></td>
                    <td><input type="text" id="firstName" name="firstName" required /></td>
                </tr>
                <tr>
                    <td><label for="lastName">Last Name</label></td>
                    <td><input type="text" id="lastName" name="lastName" required /></td>
                </tr>
                <tr>
                    <td><label for="email">Email</label></td>
                    <td><input type="email" id="email" name="email" required /></td>
                </tr>
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><input type="password" id="password" name="password" required /></td>
                </tr>
                <tr>
                    <td><label for="address">Address</label></td>
                    <td><input type="text" id="address" name="address" required /></td>
                </tr>
                <tr>
                    <td><label for="contact">Contact</label></td>
                    <td><input type="number" id="contact" name="contact" required /></td>
                </tr>
                <tr>
                    <td><label for="aadharNumber">Aadhar Number</label></td>
                    <td><input type="text" id="aadharNumber" name="aadharNumber" required /></td>
                </tr>
                <tr>
                    <td><label for="constituency">Select Constituency</label></td>
                    <td>
                        <select id="constituency" name="constituency" required>
                            <option value="">---Select Constituency---</option>
                            <option value="constituency1">Constituency1</option>
                            <option value="constituency2">Constituency2</option>
                            <option value="constituency3">Constituency3</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="gender">Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="gender" value="MALE" required />
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="gender" value="FEMALE" required />
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="gender" value="OTHERS" required />
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="maritalStatus">Marital Status</label></td>
                    <td>
                        <select id="maritalStatus" name="maritalStatus" required>
                            <option value="">---Select Marital Status---</option>
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Divorced">Divorced</option>
                            <option value="Widowed">Widowed</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="dateOfBirth">Date of Birth</label></td>
                    <td><input type="date" id="dateOfBirth" name="dateOfBirth" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
