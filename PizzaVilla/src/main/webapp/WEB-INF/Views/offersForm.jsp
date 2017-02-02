<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Registration Page</title>
</head>
<body>

	<form:form method="POST" commandName="offers" action="addOffers">
		<table>
			<tr>
				<td>Offers Name:</td>
				<td><form:input path="offersName" /></td>
			</tr>
			<tr>
				<td>Offers Description:</td>
				<td><form:input path="offersDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${offersList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.offersId}</td>
			<td>${i.offersName}</td>
			<td>${i.offersDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>