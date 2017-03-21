	<%@ include file="template.jsp"%>
	<%@ include file="headerMenu.jsp"%>
	<html>
	<body>
    <div class="container">
	<form:form class="form-horizontal" method="POST" commandName="subCategory" action="addSubCategory">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="categoryName" style="text-align:left">Category:</label>
	<div class="col-sm-3">
	<form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="categoryName">
	</form:select>
	</div>
	</div>
	
    <div class="form-group">
    <div class="col-sm-1"></div>
    <label class="control-label col-sm-3" for="subCategoryName" style="text-align:left">Sub Category Name:</label>
	<div class="col-sm-5">
	<form:input path="subCategoryName" class="form-control" id="subCategoryName" placeholder="Sub Category Name"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="subCategoryDescription" style="text-align:left">Sub Category Description:</label>
	<div class="col-sm-5">
	<form:textarea path="subCategoryDescription" class="form-control" id="subCategoryDescription" placeholder="Sub Category Description"/>
	</div>
	</div>
	
	<div class="form-group">
	<form:input path="categoryId" class="form-control" id="edit" type="hidden"/>
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
	<th class="control-label col-sm-2" onclick="sortTable(1)">Category Name</th>
	<th class="control-label col-sm-2" onclick="sortTable(2)">Sub Category Name</th>
	<th class="control-label col-sm-2" onclick="sortTable(3)">Sub Category  Description</th>
	<th class="control-label col-sm-2">Edit</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach var="i" items="${subCategoryList}">
    <tr>
    <td class="control-label col-sm-2">${i.subCategoryId}</td>
	<td class="control-label col-sm-2">${i.category.categoryName}</td>
	<td class="control-label col-sm-2">${i.subCategoryName}</td>
	<td class="control-label col-sm-2">${i.subCategoryDescription}</td>
	<td class="control-label col-sm-2"><a href="updateSubCategory-${i.subCategoryId}">Edit</a></td>
    </tr>
    </c:forEach>
    </tbody>
    
	</table>
	</div>

	
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>	
	</body>
	</html>
