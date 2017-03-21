<%@ include file="template.jsp"%>
<%@ include file="headerMenu.jsp"%>
<html style="padding-top:25px">
<head>
<style>
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
/* Slider */
.mySlides 
{
	display:none
}
.demo 
{
	cursor:pointer
}
/* End Slider */
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
</style>
</head>
<body style="padding-top:25px; 
	background-image: url('Resources/Images/Background.jpg');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover">
	
<div class="parallax ha"></div>

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
 <!-- End Slider --> 

<div class="parallax ha"></div> 

<img src="Resources/Images/Slide2.jpg" alt="pizza" usemap="#Map"/>
<map name="Map" id="Map">
    <area alt="pizza" title="pizza"  href="#" shape="poly" coords="216,303,223,310,224,333,216,345,230,353,241,356,408,356,475,334,508,315,544,280,546,268,551,239,540,210,519,177,505,165,485,151,465,140,442,131,422,126,406,122,388,118,366,115,342,114,325,114,301,114,282,116,265,119,246,122,222,127,206,134,169,151,150,162,133,175,107,203,101,214,101,268,110,283,122,296,128,301"/>
</map> 



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


  
 



<!-- Parallax -->
<div class="parallax ha"></div>
<div class="parallax2"></div>
<div class="parallaxPg1 ha" ></div>
<div class="parallax3 ha"></div>	

<!------------ Slider ---------->
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
  
}

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2500); // Change image every 3 seconds
    
}
</script>
</body>
</html>