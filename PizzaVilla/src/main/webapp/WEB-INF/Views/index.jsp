<%@ include file="template.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<style>

body, html {
	height: 100%;
}

.parallax {
	/* The image used */
	background-image: url('Resources/Images/Background.jpg');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.parallax2 {
	/* The image used */
	background-image: url('Resources/Images/Pizza Waffel.jpg');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.parallax3 {
	/* The image used */
	background-image: url('Resources/Images/Quote.jpg');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.mySlides {display:none}
.demo {cursor:pointer}

#section1 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #1E88E5;
}

#section2 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #673ab7;
}

#section3 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #ff9800;
}

#section41 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #00bcd4;
}

#section42 {
	padding-top: 50px;
	height: 500px;
	color: #fff;
	background-color: #009688;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}



</style>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

<div class="parallax"></div>



    <!-- <div class="w3-content" style="max-width:1200px">   -->
  <img class="mySlides" src="Resources/Images/Slide1.jpg" style="width:100%">
  <img class="mySlides" src="Resources/Images/Slide2.jpg" style="width:100%">
  <img class="mySlides" src="Resources/Images/Slide3.jpg" style="width:100%">

    <div class="w3-col s4"> 
      <img class="demo w3-opacity" 
      src="Resources/Images/Slide1.jpg" onclick="currentDiv(1)" style="width:98%">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity"
      src="Resources/Images/Slide2.jpg" onclick="currentDiv(2)" style="width:98%">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity" 
      src="Resources/Images/Slide3.jpg" onclick="currentDiv(3)" style="width:98%">
    </div>
  <!-- </div>  -->

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
    setTimeout(carousel, 2000); // Change image every 3 seconds
}

</script>

<div class="parallax"></div>








<!--	<div class="w3-card-8 w3-dark-grey" style="width: 50%; background-color: lightblue"> -->

<!--		<div class="w3-container w3-center"> -->
			<h3>Feedback</h3>
			<img src="Resources/Images/Cone Pizza.jpg" alt="Avatar"
				style="width: 80%">
			<h5>Cone Pizza</h5>

			<div class="w3-section">
				<button class="w3-btn w3-green">Like</button>
				<button class="w3-btn w3-red">Dislike</button>
			</div>
<!--		</div> -->

<!--	</div> -->

<div class="parallax"></div>

	<div id="section1" class="container-fluid">
		<h1>Section 1</h1>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>

</div>












	<div class="parallax"></div>







	<div id="section2" class="container-fluid">
		<h1>Section 2</h1>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
	</div>

	<div class="parallax2"></div>

	<div id="section3" class="container-fluid">
		<h1>Section 3</h1>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
	</div>

	<div class="parallax2"></div>

	<div id="section41" class="container-fluid">
		<h1>Section 4 Submenu 1</h1>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
	</div>

	<div class="parallax2"></div>

	<div id="section42" class="container-fluid">
		<h1>Section 4 Submenu 2</h1>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
		<p>Try to scroll this section and look at the navigation bar while
			scrolling! Try to scroll this section and look at the navigation bar
			while scrolling!</p>
	</div>

	<div class="parallax2"></div>

<script type="text/javascript" src="Resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.min.js"></script>

</body>
</html>