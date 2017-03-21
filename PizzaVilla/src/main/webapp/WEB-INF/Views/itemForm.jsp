	<%@ include file="template.jsp"%>
	<html>
	<body>
	<!--  <div class="background">
	<div class="col-sm-1"></div>
    <div class="transbox"> -->
    <div class="container">
	<form:form class="form-horizontal" method="POST" commandName="item" action="addItem">
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="typeName" style="text-align:left">Sub Customize:</label>
	<div class="col-sm-3">
	<form:select path="type.typeName" items="${typeList}" itemValue="typeName" itemLabel="typeName" class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="typeName">
	</form:select>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="crust" style="text-align:left">Crust:</label>
	<div class="col-sm-3">
	<form:select path="crust.crustName"  class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="crust">
	<form:options items="${crustList}" itemValue="crustName" itemLabel="crustName"/>
	</form:select>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="toppings" style="text-align:left">Toppings:</label>
	<div class="col-sm-3">
	<form:select path="toppings.toppingsName" items="${toppingsList}" itemValue="toppingsName" itemLabel="toppingsName" class="form-control selectpicker show-tick" data-live-search="true" data-size="5" id="toppings">
	</form:select>
	</div>
	</div>
	
	<div class="form-group">
    <div class="col-sm-1"></div>
    <label class="control-label col-sm-3" for="itemName" style="text-align:left">Item Name:</label>
	<div class="col-sm-5">
	<form:input path="itemName" class="form-control" id="itemName" placeholder="Item Name"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-1"></div>
	<label class="control-label col-sm-3" for="itemDescription" style="text-align:left">Item Description:</label>
	<div class="col-sm-5">
	<form:textarea path="itemDescription" class="form-control" id="itemDescription" placeholder="Item Description"/>
	</div>
	</div>
	
	<div class="form-group">
	<div class="col-sm-4"></div>
	<div class="col-sm-5">
    <button type="submit" class="submitButton btn ">Submit</button>
    </div>
    </div>  
 
    </form:form>
    </div>
   <!--   </div>
    </div> -->
	
	<div class="container">
	<table class="table table-hover table-fixed">
	
    <thead>
    <tr>
	<th class="control-label col-sm-4">Sr No.</th>
	<th class="control-label col-sm-4">Name</th>
	<th class="control-label col-sm-4">Description</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach var="i" items="${itemList}">
    <tr>
    <td class="control-label col-sm-4">${i.itemId}</td>
	<td class="control-label col-sm-4">${i.itemName}</td>
	<td class="control-label col-sm-4">${i.itemDescription}</td>
    </tr>
    </c:forEach>
    </tbody>
    
	</table>
	</div>
	
	</body>
	</html>

