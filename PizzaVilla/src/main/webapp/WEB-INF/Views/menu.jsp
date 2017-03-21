<%@ include file="template.jsp"%>
<%@ include file="headerMenu.jsp"%>
<html style="padding-top:25px">
<body style="padding-top:25px; 
	background-image: url('Resources/Images/CustomizeBackground.jpg');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover">

 <!-- Customize --> 
 <div class="container col-sm-12">
<div class="container-fluid col-sm-6">

<div class="container-fluid col-sm-6" style="height: 600px; width:100%">
<img  src="Resources/Images/PlainCrust.png" style="width:100%; z-index: 5" class="custPizza">
<img  src="Resources/Images/itm006658.png" style="width:100%; z-index: 6; visibility:hidden;" class="custPizza" id="topping1" >
<img  src="Resources/Images/itm006663.png" style="width:100%; z-index: 6; visibility:hidden;" class="custPizza" id="topping2" >
<img  src="Resources/Images/itm006665.png" style="width:100%; z-index: 6; visibility:hidden;" class="custPizza" id="topping3" >
</div>
</div>

<div class="container col-sm-6">

<div>
<ul class="nav nav-tabs col-sm-12" style="padding-top:34px">
    <li class="active" style="background-image: url(Resources/Images/yellowbg.jpg); border-radius: 5px 0px 0px 0px"><a data-toggle="tab" href="#veggie">Veggie</a></li>
    <li style="background-image: url(Resources/Images/yellowbg.jpg)"><a data-toggle="tab" href="#meat">Meat</a></li>
    <li style="background-image: url(Resources/Images/yellowbg.jpg); border-radius: 0px 5px 0px 0px"><a data-toggle="tab" href="#crustFlavor">Crust Flavor</a></li>
  </ul>
  
<div class="tab-content">
    <div id="veggie" class="tab-pane fade in active">
    <div class="col-sm-12" style="padding-top:20px">
    
    

<!-- 			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%; padding-top:0px" fkid="topping1" onclick="addRemoveTopping(this)" id="button1"><input type="checkbox"><img src="Resources/Images/itm006683.png" style="width:100%"/><div class="w3-display-bottommiddle w3-container" style="width: 100%; text-align: center"><p class="noselect noIbar">Sliced Black Olives</p></div></div> -->
 			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006683.png" style="width:100%"fkid="topping1" onclick="addRemoveTopping(this)" id="button1"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006688.png" style="width:100%" fkid="topping2" onclick="addRemoveTopping(this)" id="button2"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006690.png" style="width:100%" fkid="topping3" onclick="addRemoveTopping(this)" id="button3"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006691.png" style="width:100%"></div>
		</div>
		<div class="col-sm-12">
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006667.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006693.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006696.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006697.png" style="width:100%"></div>
		</div>
		<div class="col-sm-12">
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006699.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006701.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006702.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006704.png" style="width:100%"></div>
		</div>
    </div> <!-- End of tab1 -->
    <div id="meat" class="tab-pane fade">
      <div class="col-sm-12" style="padding-top:20px">
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006681.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006682.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006684.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006685.png" style="width:100%"></div>
		</div>
		<div class="col-sm-12">
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006686.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006689.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006698.png" style="width:100%"></div>
			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006700.png" style="width:100%"></div>
		</div>
		<div class="col-sm-12">
			<div class="col-sm-12 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm006703.png" style="width:100%"></div>
		</div>	
    </div> <!-- End of tab2 -->
    <div id="crustFlavor" class="tab-pane fade">
      <div class="col-sm-12" style="padding-top:20px">
			<div class="col-sm-4 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm005964.png" style="width:100%"></div>
			<div class="col-sm-4 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm005963.png" style="width:100%"></div>
			<div class="col-sm-4 well well-lg" style="height: 135px; width: 25%"><input type="image" src="Resources/Images/itm005960.png" style="width:100%"></div>
	 </div>	
    </div> <!-- End of tab3 -->
  </div> <!-- End of tab content -->
  
</div> <!-- End of Tab Div -->  
</div>
<div class="col-sm-12 container" style="padding-left: 650px">
	<button type="button" class="oButton" style="margin:auto; display:block; vertical-align:middle;"> <span>Order Now </span></button>
	</div> 		
		
</div> 
<!---------------- End of Customize --------------------->
<!---------------- Coca Cola --------------------->
<div class="container col-sm-12" style="padding-top:100px">

<div class="container-fluid col-sm-6">
<div class="container-fluid col-sm-6" style="height: 600px; width:100%">
<img  src="Resources/Images/ColaBasilSorbet.gif" style="height:90%; width:60%; z-index: 5" class="custPizza" id="cola1">
<img  src="Resources/Images/ColaBrownie.gif" style="height:90%; width:60%; z-index: 6; visibility:hidden" class="custPizza"id="cola2" >
<img  src="Resources/Images/ColaBubbleGum.gif" style="height:90%; width:60%; z-index: 6; visibility:hidden" class="custPizza" id="cola3" >
<img  src="Resources/Images/ColaButterPecan.gif" style="height:90%; width:60%; z-index: 6; visibility:hidden" class="custPizza" id="cola4" >
<img  src="Resources/Images/ColaCherry.gif" style="height:90%; width:60%; z-index: 6; visibility:hidden" class="custPizza" id="cola5" >
</div>
</div>

<div class="container col-sm-6">
<div class="list-group">
	<a class="list-group-item active" colafkid="cola1" onclick="addRemoveCola(this)" id="colabutton1">Basil Sorbet</a>
    <a class="list-group-item" colafkid="cola2" onclick="addRemoveCola(this)" id="colabutton2">Brownie</a>
    <a class="list-group-item" colafkid="cola3" onclick="addRemoveCola(this)" id="colabutton3">Bubble Gum</a>
    <a class="list-group-item" colafkid="cola4" onclick="addRemoveCola(this)" id="colabutton4">Butter Pecan</a>
    <a class="list-group-item" colafkid="cola5" onclick="addRemoveCola(this)" id="colabutton5">Cherry</a>
</div>
</div>
</div> 
<!---------------- End of Coca Cola --------------------->
</body>
</html>