	<%@ include file="template.jsp"%>
	<%@ include file="headerMenu.jsp"%>
    <html>
	<body>
    <div class="container">
    
	<form:form class="form-horizontal" method="POST" commandName="customize" action="addCustomize">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="customizeName" style="text-align: left">Customize Name:</label>
	<div class="col-sm-5">
	<form:input path="customizeName" class="form-control" id="customizeName" placeholder="Customize Name"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="customizeDescription" style="text-align: left">Customize Description:</label>
	<div class="col-sm-5">
	<form:textarea path="customizeDescription" class="form-control" id="customizeDescription" placeholder="Customize Description"/>
	</div>
	</div>	
	
	<div class="form-group">
	<form:input path="customizeId" class="form-control" id="edit" type="hidden"/>
	</div>
	
	
	
	<div class="form-group">
	<div class="col-sm-4"></div>
	<div class="col-sm-5">
    <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    </div>
    
    </form:form>
    </div>
    
    <div class="container">
	<table class="table table-hover table-fixed" id="myTable">
	
    <thead>
    <tr>
	<th class="control-label col-sm-2">Sr No.</th>
	<th class="control-label col-sm-2" onclick="sortTable(1)">Name</th>
	<th class="control-label col-sm-2" onclick="sortTable(2)">Description</th>
	<th class="control-label col-sm-2">Edit</th>
	<th class="control-label col-sm-2">Delete</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach var="i" items="${customizeList}">
    <tr>
    <td class="control-label col-sm-2">${i.customizeId}</td>
	<td class="control-label col-sm-2">${i.customizeName}</td>
	<td class="control-label col-sm-2">${i.customizeDescription}</td>
	<td class="control-label col-sm-2"><a href="updateCustomize-${i.customizeId}">Edit</a></td>
	<td class="control-label col-sm-2"><a href="deleteCustomize-${i.customizeId}">Delete</a></td>
    </tr>
    </c:forEach>
    </tbody>
    
	</table>
	</div>
	
	

	</body>
	</html>	

