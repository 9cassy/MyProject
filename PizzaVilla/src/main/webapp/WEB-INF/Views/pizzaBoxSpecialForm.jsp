<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Pizza Box Special</title>
</head>
<body>

	<form:form method="POST" commandName="pizzaBoxSpecial" action="addPizzaBoxSpecial">
		<table>
			<tr>
				<td>Pizza Box Special Name:</td>
				<td><form:input path="pizzaBoxSpecialName" /></td>
			</tr>
			<tr>
				<td>Pizza Box Special Description:</td>
				<td><form:input path="pizzaBoxSpecialDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${pizzaBoxSpecialList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.pizzaBoxSpecialId}</td>
			<td>${i.pizzaBoxSpecialName}</td>
			<td>${i.pizzaBoxSpecialDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>