<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Veg Toppings</title>
</head>
<body>

	<form:form method="POST" commandName="vegToppings" action="addVegToppings">
		<table>
			<tr>
				<td>Veg Toppings Name:</td>
				<td><form:input path="vegToppingsName" /></td>
			</tr>
			<tr>
				<td>Veg Toppings Description:</td>
				<td><form:input path="vegToppingsDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${vegToppingsList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.vegToppingsId}</td>
			<td>${i.vegToppingsName}</td>
			<td>${i.vegToppingsDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>