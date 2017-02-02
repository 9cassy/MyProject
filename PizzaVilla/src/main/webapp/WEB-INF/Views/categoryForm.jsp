<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>
<html>
<head>
<title>Category</title>
</head>
<body>

	<form:form method="POST" commandName="category" action="addCategory">
		<table>
			<tr>
				<td>Category Name:</td>
				<td><form:input path="categoryName" /></td>
			</tr>
			<tr>
				<td>Category Description:</td>
				<td><form:input path="categoryDescription" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Submit"></td>
			</tr>
			
			<tr>
			<td>Sr No.</td>
			<td>Name</td>
			<td>Description</td>
			</tr>
			<c:forEach var="i" items="${categoryList}">
			<tr>
			<td>${i.categoryId}</td>
			<td>${i.categoryName}</td>
			<td>${i.categoryDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

</body>
</html>