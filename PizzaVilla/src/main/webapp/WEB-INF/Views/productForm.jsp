	<%@ include file="template.jsp"%>
	<%@ include file="headerMenu.jsp"%>
	<html>
	<head>
	<script src="Resources/js/angular.min.js"></script>
	</head>
	<body>
	<!--  <div class="background">
	<div class="col-sm-1"></div>
    <div class="transbox"> -->
    
    <!-- PRODUCT FORM -->
    <div class="container">
	<form:form class="form-horizontal" method="POST" commandName="product" action="addProduct" enctype="multipart/form-data">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="subCategoryName" style="text-align:left">Sub Category:</label>
	<div class="col-sm-3">
	<form:select path="subCategory.subCategoryName" items="${subCategoryList}" itemValue="subCategoryName" itemLabel="subCategoryName" class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="subCategoryName">
	</form:select>
	</div>
	</div> 
	
	<div class="form-group">
    <div class="col-sm-1"></div>
    <label class="control-label col-sm-3" for="productName" style="text-align:left">Product Name:</label>
	<div class="col-sm-5">
	<form:input path="productName" class="form-control" id="productName" placeholder="Product Name"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="productDescription" style="text-align:left">Product Description:</label>
	<div class="col-sm-5">
	<form:textarea path="productDescription" class="form-control" id="productDescription" placeholder="Product Description"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="ProductQuantity" style="text-align:left">Product Quantity:</label>
	<div class="col-sm-5">
	<form:textarea path="ProductQuantity" class="form-control" id="ProductQuantity" placeholder="Product Quantity"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="productPrice" style="text-align:left">Product Price:</label>
	<div class="col-sm-5">
	<form:textarea path="productPrice" class="form-control" id="productPrice" placeholder="Product Price"/>
	</div>
	</div>
	
	<!-- Mulitpart File Upload -->
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="productImage" style="text-align: left">Product Image:</label>
	<div class="col-sm-5">
	<form:input path="productImage" type="file" class="form-control" id="Image" name="file"/>
	 </div>
	<!-- <form:input path="productImage" id="productImage" type="file" name="file"/> -->
	</div>
	<!-- End Mulitpart File Upload -->	
	
	<div class="form-group">
	<div class="col-sm-4"></div>
	<div class="col-sm-5">
    <button type="submit" class="submitButton btn">Submit</button>
    </div>
    </div>  
 
    </form:form>
    </div>
	<!-- END PRODUCT FORM -->
	
	
	
	<!-- PRODUCT LIST TABLE -->
	<div class="container" ng-app="myApp" ng-controller="myCtrl" >
	<table class="table table-hover table-fixed" id="myTable">
    <thead>
    <tr>
    <th class="control-label col-sm-1">Image</th>
	<th class="control-label col-sm-1">Sr No.</th>
	<th class="control-label col-sm-1">Name</th>
	<th class="control-label col-sm-1">Description</th>
	<th class="control-label col-sm-1">View</th>
	</tr>
	</thead>	
	<tbody>
	<%-- <c:forEach var="i" items="${productList}"> --%>
	<tr ng-repeat="i in myScope | filter:test | orderBy:myOrderBy"> <!-- ng-repeat is like foreach loop. Used for AngularJS -->
    <td class="col-sm-1"><img src="Resources/ProductImages/{{i.productId}}.gif" width="100px" height="100px"></td>
    <td class="control-label col-sm-1">{{i.productId}}</td>
	<td class="control-label col-sm-1">{{i.productName}}</td>
	<td class="control-label col-sm-1">{{i.productDescription}}</td>
	<td class="control-label col-sm-1"><a href="viewProduct-{{i.productId}}">View</a></td>
    </tr>
    <%-- </c:forEach> --%>
    </tbody>  
	</table>
	</div>
	<!-- END PRODUCT LIST TABLE -->
	
<!-- AngularJS -->	
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.myScope=${productListJSON};
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});
</script>		
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>	
	</body>
	</html>

