<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Sides</title>
</head>
<body>

	<form:form method="POST" commandName="sides" action="addSides">
		<table>
			<tr>
				<td>Sides Name:</td>
				<td><form:input path="sidesName" /></td>
			</tr>
			<tr>
				<td>Sides Description:</td>
				<td><form:input path="sidesDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${sidesList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.sidesId}</td>
			<td>${i.sidesName}</td>
			<td>${i.sidesDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>