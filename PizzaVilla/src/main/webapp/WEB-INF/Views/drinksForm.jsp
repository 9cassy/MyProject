<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>
<html>
<head>
<title>Drinks Page</title>
</head>
<body>

	<form:form method="POST" commandName="drinks" action="addDrinks">
		<table>
			<tr>
				<td>Drinks Name:</td>
				<td><form:input path="drinksName" /></td>
			</tr>
			<tr>
				<td>Drinks Description:</td>
				<td><form:input path="drinksDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${drinksList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.drinksId}</td>
			<td>${i.drinksName}</td>
			<td>${i.drinksDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>