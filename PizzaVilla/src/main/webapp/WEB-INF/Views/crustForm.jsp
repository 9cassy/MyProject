<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Crust</title>
</head>
<body>

	<form:form method="POST" commandName="crust" action="addCrust">
		<table>
			<tr>
				<td>Crust Name:</td>
				<td><form:input path="crustName" /></td>
			</tr>
			<tr>
				<td>Crust Description:</td>
				<td><form:input path="crustDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${crustList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.crustId}</td>
			<td>${i.crustName}</td>
			<td>${i.crustDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>