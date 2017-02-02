<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Cone Pizza</title>
</head>
<body>

	<form:form method="POST" commandName="conePizza" action="addConePizza">
		<table>
			<tr>
				<td>Cone Pizza Name:</td>
				<td><form:input path="conePizzaName" /></td>
			</tr>
			<tr>
				<td>Cone Pizza Description:</td>
				<td><form:input path="conePizzaDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${coneList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.coneId}</td>
			<td>${i.coneName}</td>
			<td>${i.coneDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>