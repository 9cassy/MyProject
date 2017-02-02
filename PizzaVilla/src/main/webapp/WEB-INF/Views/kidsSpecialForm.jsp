<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="true" %>
<html>
<head>
<title>Kids Special</title>
</head>
<body>

	<form:form method="POST" commandName="kidsSpecial" action="addKidsSpecial">
		<table>
			<tr>
				<td>Kids Special Pizza Name:</td>
				<td><form:input path="kidsSpecialName" /></td>
			</tr>
			<tr>
				<td>Kids Special Pizza Description:</td>
				<td><form:input path="kidsSpecialDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<c:forEach var="i" items="${kidsSpecialList}">
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<tr>
			<td>${i.kidsSpecialId}</td>
			<td>${i.kidsSpecialName}</td>
			<td>${i.kidsSpecialDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>