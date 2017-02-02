<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Non-Veg Toppings</title>
</head>
<body>

	<form:form method="POST" commandName="nonVegToppings" action="addNonVegToppings">
		<table>
			<tr>
				<td>Non-Veg Toppings Name:</td>
				<td><form:input path="nonVegToppingsName" /></td>
			</tr>
			<tr>
				<td>Non-Veg Toppings Description:</td>
				<td><form:input path="nonVegToppingsDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${nonVegToppingsList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.nonVegToppingsId}</td>
			<td>${i.nonVegToppingsName}</td>
			<td>${i.nonVegToppingsDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>