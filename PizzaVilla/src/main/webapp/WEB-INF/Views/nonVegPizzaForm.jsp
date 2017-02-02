<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Non-Veg Pizza</title>
</head>
<body>

	<form:form method="POST" commandName="nonVegPizza" action="addNonVegPizza">
		<table>
			<tr>
				<td>Non-Veg Pizza Name:</td>
				<td><form:input path="nonVegPizzaName" /></td>
			</tr>
			<tr>
				<td>Non-Veg Pizza Description:</td>
				<td><form:input path="nonVegPizzaDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${nonVegPizzaList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.nonVegPizzaId}</td>
			<td>${i.nonVegPizzaName}</td>
			<td>${i.nonVegPizzaDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>