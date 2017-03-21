<%@ include file="template.jsp"%>
	<form:form method="POST" commandName="crust" action="addCrust">
		<table>
			<tr>
				<td>Crust Name:</td>
				<td><form:input path="crustName" /></td>
			</tr>
			<tr>
				<td>Crust Description:</td>
				<td><form:input path="crustDescription" /></td>
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
			<c:forEach var="i" items="${crustList}">
			<tr>
			<td>${i.crustId}</td>
			<td>${i.crustName}</td>
			<td>${i.crustDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

