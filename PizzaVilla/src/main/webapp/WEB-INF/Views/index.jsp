<%@ include file="template.jsp"%>
<%@ include file="headerMenu.jsp"%>
<html style="padding-top:10px">
<head>
<style>
.border{
border:1px solid black;
}
</style>
</head>
<body style="padding-top:10px"> 

<!-- PARALLAX MOUSE LARGE SCREEN-->
<div class="container-fluid wrapper hidden-sm col-lg-12 hidden-md hidden-xs"
	style="background-image: url('Resources/Images/InsidePizzaVilla.png');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover">
<!------------ Parallax Scene-------------------->
<div style=" height: 100%;">
<ul id="scene" class="scene" style="height: 100%;">	  	
<li class="layer"><img src="Resources/Images/Layer2.png" class="moveUp" style="border:5px solid green; position: absolute; width:100%"></li>
<li class="layer" data-depth="0.155" style="border:10px solid blue;"><img src="Resources/Images/IndexPgImages/Pizza.png" style="border:5px solid red; position: absolute; bottom: 0; width:100%"></li> 
</ul>
</div>
<!------------ End - Parallax Scene------------->
</div>
<!-- END PARALLAX MOUSE -->

<!-- -----------Parallax Mouse Effect-------- -->
<script>
var scene = document.getElementById('scene');
var parallax = new Parallax(scene)
</script>
<script>
var scene = document.getElementById('scene2');
var parallax = new Parallax(scene)
</script>
<script>
var scene = document.getElementById('scene3');
var parallax = new Parallax(scene)
</script>
<!-- -----------End Parallax Mouse Effect-------- -->

</body>
</html>