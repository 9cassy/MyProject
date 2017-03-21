	<%@ include file="template.jsp"%>
	<html>
	<body>
    <div class="container">
	<form:form class="form-horizontal" method="POST" commandName="type" action="addType">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="customizeName" style="text-align:left">Customize:</label>
	<div class="col-sm-3">
	<form:select path="customize.customizeName" items="${customizeList}" itemValue="customizeName" itemLabel="customizeName" class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="customizeName">
	</form:select>
	</div>
	</div>
	
    <div class="form-group">
    <div class="col-sm-1"></div>
    <label class="control-label col-sm-3" for="typeName" style="text-align:left">Type Name:</label>
	<div class="col-sm-5">
	<form:input path="typeName" class="form-control" id="typeName" placeholder="Type Name"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="typeDescription" style="text-align:left">Type Description:</label>
	<div class="col-sm-5">
	<form:textarea path="typeDescription" class="form-control" id="typeDescription" placeholder="Type Description"/>
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
  
    <div class="container" >
	<table class="table table-hover table-fixed" id="myTable">
	
    <thead>
    <tr>
	<th class="control-label col-sm-2">Sr No.</th>
	<th class="control-label col-sm-2" onclick="sortTable(1)">Customize Name</th>
	<th class="control-label col-sm-2" onclick="sortTable(2)">Type Name</th>
	<th class="control-label col-sm-2" onclick="sortTable(3)">Type  Description</th>
	<th class="control-label col-sm-2">Edit</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach var="i" items="${typeList}">
    <tr>
    <td class="control-label col-sm-2">${i.typeId}</td>
	<td class="control-label col-sm-2">${i.customize.customizeName}</td>
	<td class="control-label col-sm-2">${i.typeName}</td>
	<td class="control-label col-sm-2">${i.typeDescription}</td>
	<td class="control-label col-sm-2"><a href="updateType-${i.typeId}">Edit</a></td>
    </tr>
    </c:forEach>
    </tbody>
    
	</table>
	</div>

	
	
	</body>
	</html>
