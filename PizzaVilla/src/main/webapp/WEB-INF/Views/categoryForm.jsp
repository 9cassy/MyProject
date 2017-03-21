	<%@ include file="template.jsp"%>
	<%@ include file="headerMenu.jsp"%>
    <html>
    <head>
    <script src="Resources/js/angular.min.js"></script>
    
<!-- CSS for Search Cuboid -->    
<style>
/*Custom fonts - Sniglet and FontAwesome*/
@import url('http://fonts.googleapis.com/css?family=Sniglet');
@import url('http://thecodeplayer.com/uploads/fonts/font-awesome-4.1.0/css/font-awesome.min.css');

#cuboid {
	width: 400px; margin: 0 auto;
	/*this also makes #cuboid a container for absolutely positioned descendants*/
	/* perspective: 1000px; */
}
#cuboid form {
	/*counter translate*/
	transform: translateZ(-20px);
	/*propogate 3d space for children*/
	transform-style: preserve-3d;
	/*prevent height collapse as children are absolutely positioned*/
	height: 40px;
	/*for smooth animations*/
	transition: all 0.35s;
}

#submit {display: none;}

.submit-icon, .reset-icon {
	position: absolute; top: 0; right: 0;
	color: rgba(0, 0, 0, 0.25);
	line-height: 40px; padding: 0 10px;
	/*smooth transitions when user activates input and types something*/
	transition: all 0.5s;
	/*to make the icons feel like buttons*/
	cursor: pointer;
}
/*.active = when the user is typing something*/
.submit-icon.active {color: hsl(120, 40%, 30%);}
/* .reset-icon {color: rgba(255, 255, 255, 0.25); font-size: 14px;} */

#cuboid div {position: absolute; top: 0; left: 0; width: 100%;}
/*3D transforms. Each face will be rotated in multiples of -90deg and moved 20px(half of their 40px height) out*/
#cuboid div:nth-child(1) {transform: rotateX(0deg) translateZ(20px);}
#cuboid div:nth-child(2) {transform: rotateX(-90deg) translateZ(20px);}
/* #cuboid div:nth-child(3) {transform: rotateX(-180deg) translateZ(20px);}
#cuboid div:nth-child(4) {transform: rotateX(-270deg) translateZ(20px);} */

/*the form will have 4 states/classes(default+3) for rotation*/
#cuboid form:hover, 
#cuboid form.ready {transform: translateZ(-20px) rotateX(90deg);}
/* #cuboid form.loading {transform: translateZ(-20px) rotateX(180deg);}
#cuboid form.complete {transform: translateZ(-20px) rotateX(270deg);} */

</style>

<!-- End CSS for Search -->   
    
    </head>
    
	<body>
    <div class="container">
    
	<form:form class="form-horizontal" method="POST" commandName="category" action="addCategory">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="categoryName" style="text-align: left">Category Name:</label>
	<div class="col-sm-5">
	<form:input path="categoryName" class="form-control" id="categoryName" placeholder="Category Name"/>
	<form:errors cssClass="error" cssStyle="color:#ff0000" path="categoryName"></form:errors>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="categoryDescription" style="text-align: left">Category Description:</label>
	<div class="col-sm-5">
	<form:textarea path="categoryDescription" class="form-control" id="categoryDescription" placeholder="Category Description"/>
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
    
    
    
    
    
    <div class="container" ng-app="myApp" ng-controller="myCtrl" >

	<div id="cuboid">
	<form>
		<!-- #1 hover button -->
		<div>
			<p class="cuboid-text">Search Category</p>
		</div>
		<!-- #2 text input -->
		<div>
			<!-- Label to trigger #submit -->
			
			<input type="text" name="categorySearch" class="cuboid-text form-control" placeholder="Search for a Category" autocomplete="off" ng-model="test" path="categorySearch" id="categorySearch"/>
			<!-- hidden submit button -->
			 <!-- <input type="submit" id="submit" /> -->
		</div>
		</form>
</div>

	<table class="table table-hover table-fixed" id="myTable">
    <thead>
    <tr>
	<th class="control-label col-sm-2" ng-click="orderByMe('categoryId')">Sr No.</th>
	<th class="control-label col-sm-2" ng-click="orderByMe('categoryName')">Name</th>
	<th class="control-label col-sm-2" ng-click="orderByMe('categoryDescription')">Description</th>
	<th class="control-label col-sm-2">Edit</th>
	<th class="control-label col-sm-2">Delete</th>
	</tr>
	</thead>	
	<tbody>
	<%-- <c:forEach var="i" items="${categoryList}"> --%>
    <tr ng-repeat="i in myScope | filter:test | orderBy:myOrderBy"> <!-- ng-repeat is like foreach loop. Used for AngularJS -->
    <td class="control-label col-sm-2">{{i.categoryId}}</td>
	<td class="control-label col-sm-2">{{i.categoryName}}</td>
	<td class="control-label col-sm-2">{{i.categoryDescription}}</td>
	<td class="control-label col-sm-2"><a href="updateCategory-{{i.categoryId}}">Edit</a></td>
	<td class="control-label col-sm-2"><a href="deleteCategory-{{i.categoryId}}">Delete</a></td>
    </tr>
    <%-- </c:forEach> --%>
    </tbody>
    
	</table>
	</div>
	
	
	
	
	
	
<!-- jQuery -->
<script src="http://thecodeplayer.com/u/js/jquery-1.9.1.min.js" type="text/javascript"></script>


<script>
//jQuery time

//add '.ready' to form when user focuses on it
$("#categorySearch").focus(function(){
	$("#cuboid form").addClass("ready");
})
//remove '.ready' when user blus away but only if there is no content
$("#categorySearch").blur(function(){
	if($(this).val() == "")
		$("#cuboid form").removeClass("ready");
})

</script>
	
	
	
	
	
	
	
	
<!-- AngularJS -->	
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.myScope=${categoryListJSON};
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});
</script>	

	</body>
	</html>	

