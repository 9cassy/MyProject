<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>
<html lang="en">
<head>
<title>PizzaVilla</title>
<meta charset="utf-8">



<style>
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
body, html 
{
	height: 100%;
	padding-top:34px
}
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
.parallaxPg1 
{
	/* The image used */
	background-image: url('Resources/Images/PizzaVilla.png');
	/* Full height */
	/* height: 100%; */
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
.parallax 
{
	/* The image used */
	background-image: url('Resources/Images/Background.jpg');
	/* Full height */
	/* height: 100%; */
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
.parallax2 
{
	/* The image used */
	background-image: url('Resources/Images/bubblin-pizza-time-lapse.gif');
	/* Full height */
	height: 100%;
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
.parallax3 
{
	/* The image used */
	background-image: url('Resources/Images/IceCreamBg.gif');
	/* Full height */
	/* height: 100%; */
	/* Create the parallax scrolling effect */
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}


.ha {
height: 100%;
}

.hb {
height: 95%;
}

.hc {
height: 90%;
}

.hd {
height: 25%;
}
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
#container
{
	width:100%;
	height:500px;
}
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */ 
/* Full-width input fields */
.modalInput 
{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
/* Set a style for all buttons */
.modalButtons 
{
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
/* Extra styles for the cancel button */
.modalCancelBtnSignUp 
{
    padding: 14px 20px;
    background-color: #f44336;
}
.modalCancelBtnLogin 
{
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
/* Float cancel and signup buttons and add an equal width. Only for SignUp modal */
.modalCancelBtnSignUp,.modalSignUpBtn 
{
	float:left;
	width:50%
}
/* Center the image and position the close button */
.modalImgContainer  
{
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
img.avatar 
{
    width: 40%;
    border-radius: 50%;
}
.containerForModal 
{
    padding: 16px;
}
span.psw 
{
    float: right;
    padding-top: 16px;
}
/* The Modal (background) */
.modalBackground 
{
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
/* Modal Content/Box */
.modal-content 
{
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
/* The Close Button (x) */
.closeSignUp 
{
    position: absolute;
    right: 35px;
    top: 15px;
    color: #000;
    font-size: 40px;
    font-weight: bold;
}
/* The Close Button (x) */
.closeLogin 
{
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.closeLogin:hover,
.closeLogin:focus 
{
    color: red;
    cursor: pointer;
}
.closeSignUp 
{
    position: absolute;
    right: 35px;
    top: 40px;
    color: #000;
    font-size: 40px;
    font-weight: bold;
}
.closeSignUp:hover,
.closeSignUp:focus 
{
    color: red;
    cursor: pointer;
}
/* Clear floats */
.clearfix::after 
{
    content: "";
    clear: both;
    display: table;
}
/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}   
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) 
{
    span.psw 
    {
       display: block;
       float: none;
    }
    .modalCancelBtnLogin,.modalCancelBtnSignUp,.modalSignUpBtn
    {
       width: 100%;
    }
}
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */   
.submitButton{background-color: rgba(0,0,0,1);
z-index: 2;}
.submitButton:hover
{
background-color: rgba(0,0,0,1);
z-index: 2
}  
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */ 
/*CustomizePizza*/
.custPizza
{
position:absolute; top: 50px; left: 2px;
}
/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */ 
/*Order Now Button*/

.oButton {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 250px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.oButton span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.oButton span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.oButton:hover span {
  padding-right: 25px;
}

.oButton:hover span:after {
  opacity: 1;
  right: 0;
}

/*-----------LOADING------------*/
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url(Resources/Images/Loading_pizza.gif) center no-repeat #fff;
}

/*------------NO TEXT SELECT ------- */
.noselect {
  -webkit-touch-callout: none; /* iOS Safari */
    -webkit-user-select: none; /* Safari */
     -khtml-user-select: none; /* Konqueror HTML */
       -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* Internet Explorer/Edge */
            user-select: none; /* Non-prefixed version, currently
                                  supported by Chrome and Opera */
}

/*------------NO TEXT SELECT MOUSE POINTER------- */
.noIbar {
cursor:default;
}

/*--------AFFIX ---*/
.affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }

/* IMAGE FIT TO SCREEN */
.screenFit {
  background-image: url('http://p1.pichost.me/i/32/1548022.png');
  background-position: center center;
  background-repeat: no-repeat;
  background-size: contain;
  width: 100vw;
  height: 100vh;
  }
  
  /* TRY */


  
  
 .wrapper{
  width:100%;
  height:100vh;
  margin-left: auto ;
  margin-right: auto ;
  overflow:hidden;
  position:relative;
  z-index:2;
}

.scene {
  padding: 0;
  margin: 0;
}
/*================================================================
Starry Sky
Trick created by Andrey https://www.script-tutorials.com/night-sky-with-twinkling-stars/
================================================================*/
@keyframes move-twink-back {
    from {background-position:0 0;}
    to {background-position:-10000px 5000px;}
}

@-webkit-keyframes move-twink-back {
    from {background-position:0 0;}
    to {background-position:-10000px 5000px;}
}

@-moz-keyframes move-twink-back {
    from {background-position:0 0;}
    to {background-position:-10000px 5000px;}
}

@-ms-keyframes move-twink-back {
    from {background-position:0 0;}
    to {background-position:-10000px 5000px;}
}

.stars, .twinkling {
  position:absolute;
  top:0;
  left:0;
  right:0;
  bottom:0;
  width:100%;
  height:100%;
  display:block;
}

.stars {
  background:#000 url(http://www.land-of-web.com/wp-content/uploads/2016/08/stars.png) repeat top center;
  z-index:0;
}
 
 .twinkling {
  background:transparent url(http://www.land-of-web.com/wp-content/uploads/2016/08/twinkling.png) repeat top center;
  z-index:1;
  -moz-animation:move-twink-back 200s linear infinite;
  -ms-animation:move-twink-back 200s linear infinite;
  -o-animation:move-twink-back 200s linear infinite;
  -webkit-animation:move-twink-back 200s linear infinite;
  animation:move-twink-back 200s linear infinite;
}

/*================================================================
Animation - Move Up and Move Down Letters
================================================================*/
/*================================================================
Move Up
================================================================*/
@keyframes moveUp {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, 10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
}
@-webkit-keyframes moveUp {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, 10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
}
@-moz-keyframes moveUp {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, 10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
}
@-ms-keyframes moveUp {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, 10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
}

.moveUp{
    animation: moveUp 2s infinite;
}
/*================================================================
Move Down
================================================================*/
@keyframes moveDown {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, -10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
} 
@-webkit-keyframes moveDown {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, -10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
} 
@-moz-keyframes moveDown {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, -10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
} 
@-ms-keyframes moveDown {
    0% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
     
    50% {
        transform: translate3d(0px, -10px, 0px);
        animation-timing-function: ease-out;
    }
     
    100% {
        transform: translate3d(0px, 0px, 0px);
        animation-timing-function: ease-in;
    }
} 

.moveDown{
    animation: moveDown 2s infinite;
}
/*================================================================
PARALLAX
================================================================*/
ul#scene {
	list-style-type:none;
}

.layer {
  display: block;
  height: 100%;
  width: 100%;
  padding: 0;
  margin: 0;
  position: absolute;
}


</style>
</head>

<body>

<!-- Loading Page -->
<div class="se-pre-con"></div> 

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	

	
<script>
// Get the modal
var modal = document.getElementById('id01','id02');
</script>

<!-- -------- -->
<script>
$('.selectpicker').selectpicker({
	  style: 'btn-info',
	  size: 4
	});
</script>



<!-- --------Table Sorting by Column Name-------- -->	
<script>
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc"; 
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.getElementsByTagName("TR");
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;      
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
</script>

<!-- --------Customize Pizza Tab-------- -->
<script>
$(document).ready(function(){
    $(".nav-tabs a").click(function(){
        $(this).tab('show');
    });
});
</script>

<!-- --------Show Hide Topping-------- -->
<script>
function addRemoveTopping(n) {
	var x = n.getAttribute("fkid");
	var y = document.getElementById(x);
    if (y.style.visibility==='hidden') {
        y.style.visibility='visible';
    } else {
        y.style.visibility='hidden';
    }
}
</script>
<!-- --------End Show Hide Topping-------- -->

<!-- --------Show Hide Cola-------- -->
<script>
function addRemoveCola(n) {
	var x = n.getAttribute("colafkid");
	var y = document.getElementById(x);
    if (y.style.visibility==='hidden') {
        y.style.visibility='visible';
    } else {
        y.style.visibility='hidden';
    }
}
</script>
<!-- --------End Show Hide Cola-------- -->

<!-- -------LOADING-------------- -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script>
//Wait for window load
$(window).load(function() {
	// Animate loader off screen
	$(".se-pre-con").fadeOut("slow");;
});
</script>
<!-- -------END LOADING-------------- -->

<!-- -------SCRIPTS-------------- -->

<script type="text/javascript" src="Resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.min.js"></script>	

<script type="text/javascript" src="Resources/js/parallax.js"></script>
<!-- -------END SCRIPTS-------------- -->

</body>