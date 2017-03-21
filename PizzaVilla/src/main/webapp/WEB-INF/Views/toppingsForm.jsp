<%@ include file="template.jsp"%>
	<form:form method="POST" commandName="toppings" action="addToppings">
		<table>
			<tr>
				<td>Toppings Name:</td>
				<td><form:input path="toppingsName" /></td>
			</tr>
			<tr>
				<td>Toppings Description:</td>
				<td><form:input path="toppingsDescription" /></td>
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
			<c:forEach var="i" items="${toppingsList}">
			<tr>
			<td>${i.toppingsId}</td>
			<td>${i.toppingsName}</td>
			<td>${i.toppingsDescription}</td>
			</tr>
			</c:forEach>
			
		</table>
	</form:form>

