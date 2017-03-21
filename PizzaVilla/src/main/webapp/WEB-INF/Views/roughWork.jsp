<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

/* Dropdown Button */
.dropbtn 
{
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* Affix */
 .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  
 /*transparent*/
div.background 
{
    background: url('Resources/Images/bubblin-pizza-time-lapse.gif'); 
    width:100%; 
    padding: 10px;
    /*border: 2px solid black;*/
}

div.transbox {
    margin: 30px;
    background-color: #ffffff;
    /*border: 1px solid black;*/
    opacity: 0.88;
    filter: alpha(opacity=60); /* For IE8 and earlier */
    padding: 10px;
}

div.transbox p {
    margin: 5%;
    font-weight: bold;
    color: #000000;
}

/* End Transparent */ 

/* Login */
/* Full-width input fields */
.modalInput
{
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
/* Set a style for all buttons */
.modalSubmitButton 
{
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 90.9%;
}
/* Extra styles for the cancel button */
.modalCancelBtn 
{
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
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
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
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
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .modalCancelBtn {
       width: 100%;
    }
}
/* End Login */ 
</style>
</head>
<body>
<!-- --------------TIMER------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->	
<p id="demo" style="text-align: center; font-size: 60px"></p>
<!-- Countdown -->
<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 5, 2018 15:37:25").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);
</script>
<!-- ------------END_TIMER-------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	

<!--Google Map-->
<script>
function myMap() {
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.2), zoom: 10
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!-- ------------END GOOGLE MAP-------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	


</body>
</html>
















