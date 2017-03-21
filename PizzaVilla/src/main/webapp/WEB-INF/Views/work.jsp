<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<img src="Resources/Images/Slide2.jpg" alt="pizza" usemap="#Map"/>
<map name="Map" id="Map">
    <area alt="pizza" title="pizza"  href="#" shape="poly" coords="216,303,223,310,224,333,216,345,230,353,241,356,408,356,475,334,508,315,544,280,546,268,551,239,540,210,519,177,505,165,485,151,465,140,442,131,422,126,406,122,388,118,366,115,342,114,325,114,301,114,282,116,265,119,246,122,222,127,206,134,169,151,150,162,133,175,107,203,101,214,101,268,110,283,122,296,128,301"/>
</map> 

<div id="container">
<ul id="scene">
  <li class="layer" data-depth="0.02"><img src="Resources/Images/parallax-mountain-bg.png"></li>
  <li class="layer" data-depth="0.8"><img src="Resources/Images/parallax-mountain-montain-far.png"></li>
  <li class="layer" data-depth="1"><img src="Resources/Images/parallax-mountain-mountains.png"></li>
    <li class="layer" data-depth="2"><img src="Resources/Images/parallax-mountain-montain-far.png"></li>  
  <li class="layer" data-depth="1.5"><img src="Resources/Images/parallax-mountain-trees.png"></li>
  <li class="layer" data-depth="0.4"><img src="Resources/Images/parallax-mountain-foreground-trees.png"></li>
</ul>
</div>

<!-- Icon Button -->
<div class="row">
  <div class="col-sm-3"></div>
  <div class="col-sm-3"></div>
  <div class="col-sm-3"></div>
  <div class="col-sm-3"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-menu-down"></span>
        </button>
        </div>
</div>

<!-- Slider -->
<div class="w3-content" style="max-width:1200px color:#0000"> 
  <img class="mySlides" src="Resources/Images/Slide1.jpg" style="width:100%">
  <img class="mySlides" src="Resources/Images/Slide2.jpg" style="width:100%" title="pizza" usemap="#Map">
  <map name="Map" id="Map">
  <area alt="" title="pizza"  href="#" shape="poly" coords="216,303,223,310,224,333,216,345,230,353,241,356,408,356,475,334,508,315,544,280,546,268,551,239,540,210,519,177,505,165,485,151,465,140,442,131,422,126,406,122,388,118,366,115,342,114,325,114,301,114,282,116,265,119,246,122,222,127,206,134,169,151,150,162,133,175,107,203,101,214,101,268,110,283,122,296,128,301"/>
  </map> 
  <img class="mySlides" src="Resources/Images/Slide3.jpg" style="width:100%">

 <div class="w3-row-padding w3-section"> 
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="Resources/Images/Slide1.jpg" style="width:100%" onclick="currentDiv(1)">
      </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="Resources/Images/Slide2.jpg" style="width:100%" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="Resources/Images/Slide3.jpg" style="width:100%" onclick="currentDiv(3)">
    </div>
 </div>
  </div> 
  
  
  
 <!-- Customize --> 
 <div class="container col-sm-12" style="background-image: url(Resources/Images/CustomizeBackground.jpg); height: 700px">
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
    
    

			<div class="col-sm-3 well well-lg" style="height: 135px; width: 25%; padding-top:0px" fkid="topping1" onclick="addRemoveTopping(this)" id="button1"><img src="Resources/Images/itm006683.png" style="width:100%"/><div class="w3-display-bottommiddle w3-container" style="width: 100%; text-align: center"><p class="noselect noIbar">Sliced Black Olives</p></div></div>
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

<!-- -----------Parallax Mouse Effect-------- -->
<script>
var scene = document.getElementById('scene');
var parallax = new Parallax(scene, {
	  calibrateX: false,
	  calibrateY: true,
	  invertX: false,
	  invertY: true,
	  limitX: false,
	  limitY: 10,
	  scalarX: 2,
	  scalarY: 8,
	  frictionX: 0.2,
	  frictionY: 0.8,
	  originX: 0.0,
	  originY: 1.0
	});
</script>

<!-- -----------End Parallax Mouse Effect-------- -->






<!-- Parallax -->
<div class="parallaxPg1 ha" ></div>
<div class="parallax hd" ></div>
<div class="parallax hc"></div>
<div class="parallax hd" ></div>
<div class="parallax ha"></div>
<div class="parallax2"></div>


</body>
</html>
















<!-- index.jsp -->

<%@ include file="template.jsp"%>
<%@ include file="headerMenu.jsp"%>
<html style="padding-top:25px">
<style>
img {
img-responsive
}
body{
background: url('Resources/Images/InsidePizzaVilla.png') no-repeat fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
</style>
<body style="padding-top:25px; 
	background-image: url('Resources/Images/InsidePizzaVilla.png');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover" class="img-responsive"> 









<!-- PARALLAX MOUSE -->

  <div class="container-fluid wrapper col-sm-12 img-responsive">
  <!------------ Parallax Scene-------------------->
	  	<ul id="scene" class="scene">	  	
<!--<li class="layer" data-depth="0.02"><img src="Resources/Images/Layer1.png" class="img-responsive"></li> -->
<li class="layer" data-depth="0.38"><img src="Resources/Images/Layer3.png" class="img-responsive" style="max-width: 100%; max-height: 100%"></li>
<li class="layer" data-depth="0.155"><img src="Resources/Images/Layer4.png" class="img-responsive"></li>  
<li class="layer" data-depth="0.23"><img src="Resources/Images/Layer5.png" class="img-responsive"></li>
<li class="layer" data-depth="0.14"><img src="Resources/Images/Layer9.png" class="img-responsive"></li>
<li class="layer" data-depth="0.245"><img src="Resources/Images/Layer7.png" class="img-responsive"></li>
<li class="layer" data-depth="0.11"><img src="Resources/Images/Layer8.png" class="img-responsive"></li>
<li class="layer" data-depth="0.12"><img src="Resources/Images/Layer11.png" class="img-responsive"></li>
<li class="layer" data-depth="0.145"><img src="Resources/Images/Layer6.png" class="img-responsive"></li>
<li class="layer" data-depth="0.13"><img src="Resources/Images/Layer12.png" class="img-responsive"></li>
<li class="layer"><img src="Resources/Images/Layer2.png" class="moveUp img-responsive"></li>
		</ul>
   <!------------ End - Parallax Scene------------->

  </div>
<!-- END PARALLAX MOUSE -->






<!-- -----------Parallax Mouse Effect-------- -->
<script>
var scene = document.getElementById('scene');
var parallax = new Parallax(scene)
</script>
<!-- -----------End Parallax Mouse Effect-------- -->

<!--Image Responsive-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--End Image Responsive-->
</body>
</html>