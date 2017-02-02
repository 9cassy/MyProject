<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Veg Pizza</title>
</head>
<body>

	<form:form method="POST" commandName="vegPizza" action="addVegPizza">
		<table>
			<tr>
				<td>Veg Pizza Name:</td>
				<td><form:input path="vegPizzaName" /></td>
			</tr>
			<tr>
				<td>Veg Pizza Description:</td>
				<td><form:input path="vegPizzaDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${vegPizzaList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.vegPizzaId}</td>
			<td>${i.vegPizzaName}</td>
			<td>${i.vegPizzaDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>