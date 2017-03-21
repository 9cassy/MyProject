<%@ include file="template.jsp"%>
	<%@ include file="headerMenu.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="Resources/js/angular.min.js"></script>
</head>

<body>
<div ng-app="myApp" ng-controller="myCtrl">
{{myScope.productName}}
<img src="Resources/ProductImages/{{myScope.productId}}.gif" width="100px" height="100px">
<a href="AddToCart-{{myScope.productId}}">Add To Cart</a>
</div>


<!-- AngularJS -->	
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.myScope=${productData};
});
</script>	    

</body>
</html>