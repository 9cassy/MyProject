<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> <!--For Mobile-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<link rel="stylesheet" href="Resources/css/bootstrap.min.css">
<link rel="stylesheet" href="Resources/css/bootstrap-select.min.css">

<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>

	




    <!-- <script src="resources/js/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui/0.4.0/angular-ui.min.js"></script>
    <script src="resources/js/jquery.autocomplete.min.js"></script> -->
    	

     <!-- <script src="resources/js/dirPagination.js"></script> -->
    
 	
  <!--   <link href="resources/css/simple-sidebar.css" rel="stylesheet"/>
    <link href="resources/css/footer-distributed-with-address-and-phones.css" rel="stylesheet" />
    <link href="resources/css/megamenu.css" rel="stylesheet" />  
    <link href="resources/css/Main.css" rel="stylesheet" />
    <link href="resources/css/animate.css" rel="stylesheet"/> -->
    <link rel="icon" href="resources/images/logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<script>
//Wait for window load
$(window).load(function() {
	// Animate loader off screen
	$(".se-pre-con").fadeOut("slow");;
});
</script>
</head>
<body>
<!-- Menu Bar -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
	<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	<span class="icon-bar"></span> 
	<span class="icon-bar"></span> 
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="pizzaVilla">PizzaVilla</a>
	</div>
	<div>
	<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="homePage">Home</a></li>
						<li><a href="menu">Menu</a></li>
						<li><a href="#section3">Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-user" ></span>
								Sign Up</a></li>
						<li><a onclick="document.getElementById('id02').style.display='block'"><span class="glyphicon glyphicon-log-in" ></span>
								Login</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</nav>
<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
<!-- SignUp Modal -->
<div id="id01" class="modalBackground" style="z-index: 100">
  <span onclick="document.getElementById('id01').style.display='none'" class="closeSignUp" title="Close Modal">×</span>
  <form:form class="modal-content animate" method="POST" action="addUser" commandName="user">
  
  <div class="containerForModal">
  <!--<input type="radio" name="role" value="true" checked id="role"><b> Admin</b> &nbsp; &nbsp;       
  <input type="radio" name="role" value="false" id="role"><b> Customer</b><br/> <br/> -->

  
      <label><b>Email</b></label>
      <form:input path="username" placeholder="Enter Username" type="text" class="modalInput"/>

      <label><b>Password</b></label>
      <form:input path="password" placeholder="Enter Password" type="password" class="modalInput"/>

      <%-- <label><b>Repeat Password</b></label>
      <form:input  path="password" id="password" placeholder="Enter Password"      type="password" placeholder="Repeat Password" name="pswrepeat" required class="modalInput" id="pswrepeat"/>
      <form:input type="checkbox" checked="checked"/> Remember me
      <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> --%>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="modalCancelBtnSignUp modalButtons">Cancel</button>
        <button type="submit" class="modalSignUpBtn modalButtons">Sign Up</button>
      </div>
    </div>
  </form:form>
</div>
<!-- End of SignUp Modal -->
<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
<!-- MODAL -->
<!-- Login Modal -->
<div id="id02" class="modalBackground" style="z-index: 100">
  
  
   <form class="modal-content animate" method="POST" action="perform_login">
    <div class="modalImgContainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="closeLogin" title="Close Modal">&times;</span>
      <!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
    </div>

    <div class="containerForModal">
    
    <label class="control-label" for="username" >User Name:</label>
	<input class="form-control" placeholder="Enter Username" type="text" name="username"/>
	
	<label class="control-label" for="password" style="text-align: left">Enter Password:</label>
	<input class="form-control" placeholder="Enter Password" type="password" name="password"/>
    

        
      <button type="submit" class="modalButtons">Login</button><br>
      <input type="checkbox" checked="checked"/> Remember me<br>
    </div>

    <div class="containerForModal" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="modalCancelBtnLogin">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form> 
</div>
<!-- End of Login Modal -->	
<!-- --------End of MODAL-------- -->



<!-- SCRIPTS -->
<script type="text/javascript" src="Resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.min.js"></script>

<script type="text/javascript" src="Resources/js/parallax.js"></script>

</body>
</html>