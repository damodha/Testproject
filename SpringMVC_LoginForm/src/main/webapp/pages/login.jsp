<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body bgcolor="pink">
 <div id="container">
<center>
<h1>Employee Registration Form</h1>
<form:form modelAttribute="employee">
	<table style="with:40%">
		<tr>
			<td>
			<form:label path="eno" cssClass="form-control col-md-12" cssStyle="form-control col-md-12">Eno</form:label>
			</td>
			<td> 
			<form:input path="eno" cssClass="form-control col-md-12" cssStyle="form-control col-md-12"/>
			</td>
			<td>
			<form:errors path="eno" cssClass="form-control col-md-12" cssStyle="form-control col-md-12"/>
			</td>
		</tr>
			<tr>
			<td>
			<form:label path="firstName">First Name</form:label>
			</td>
			<td>
			<form:input path="firstName"/>
			</td>
			<td>
			<form:errors path="firstName"/>
			</td>
		</tr>
		<tr>
			<td>
			<form:label path="lastName">Last Name</form:label>
			</td>
			<td>
			<form:input path="lastName"/>
			</td>
			<td>
			<form:errors path="lastName"/>
			</td>
		</tr>
		<tr>
			<td>
			<form:label path="fatherName">Father Name</form:label>
			</td>
			<td>
			<form:input path="fatherName"/>
			</td>
			<td>
			<form:errors path="fatherName"/>
			</td>
		</tr>
		<tr>
			<td>
			<form:label path="mailId">Email Id</form:label>
			</td>
			<td>
			<form:input path="mailId"/>
			</td>
			<td>
			<form:errors path="mailId"/>
			</td>
		</tr>
		<tr>
			<td>
			<form:label path="companyName">Organization</form:label>
			</td>
			<td>
			<form:select path="companyName">
			<form:option value="InetSolv">InetSolv</form:option>
			<form:option value="Hinduja Foundries">Hinduja Foundries</form:option>
			<form:option value="Mahindra Infotech">Mahindra</form:option>			
			<form:option value="Infosis">Infosis</form:option>
			<form:option value="wipro">wipro</form:option>
			<form:option value="Veva Informatrix">Veva Informatrix</form:option>
			</form:select>
			</td>
			<td>
			<form:errors path="companyName"/>
			</td>
		</tr>
			<tr>
			<td>
			<form:label path="qualification">Select Qualification</form:label>
			</td>
			<td>
				<form:checkbox path="qualification" value="UG"/>UG
				<form:checkbox path="qualification" value="PG"/>PG 
				<form:checkbox path="qualification" value="Phd"/>Phd
			</td>
			<td>
			<form:errors path="qualification"/>
			</td>
		</tr>
		<tr>
			<td>
			<form:label path="age">Enter Your Age</form:label>
			</td>
			<td>
			<form:input path="age"/>
			</td>
			<td>
			<form:errors path="age"/>
			</td>
		</tr>
			<tr>
			<td>
			<form:label path="gender">Select Gender</form:label>
			</td>
			<td>
			<form:radiobutton path="gender" value="Male"/>Male
			<form:radiobutton path="gender" value="Feale"/>Female
			<form:radiobutton path="gender" value="Other"/>Other
			</td>
			<td>
			<form:errors path="gender"/>
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td>
			<form:button>Save Employee</form:button>
			</td>
			
		</tr>
	</table>
</form:form>
</center>
</div>
</body>
</html>