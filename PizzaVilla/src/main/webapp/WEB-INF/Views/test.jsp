<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <style>
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsIPxuqWfQuZGbz5Rz4Zu1gk.woff2) format('woff2');
  unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsENRpQQ4njX3CLaCqI4awdk.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsET2KMEyTWEzJqg9U8VS8XM.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsMH5J2QbmuFthYTFOnnSRco.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsDcCYxVKuOcslAgPRMZ8RJE.woff2) format('woff2');
  unicode-range: U+0102-0103, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsNKDSU5nPdoBdru70FiVyb0.woff2) format('woff2');
  unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 400;
  src: local('Roboto Condensed'), local('RobotoCondensed-Regular'), url(http://fonts.gstatic.com/s/robotocondensed/v13/Zd2E9abXLFGSr9G3YK2MsH4vxAoi6d67T_UKWi0EoHQ.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nBYyuMfI6pbvLqniwcbLofP2Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+0460-052F, U+20B4, U+2DE0-2DFF, U+A640-A69F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nIT75Viso9fCesWUO0IzDUX2Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nL8EBb1YR1F8PhofwHtObrz2Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nAro84VToOve-uw23YSmBS72Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nACS0ZgDg4kY8EFPTGlvyHP2Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+0102-0103, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nGPMCwzADhgEiQ8LZ-01G1L2Ot9t5h1GRSTIE78Whtoh.woff2) format('woff2');
  unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto Condensed';
  font-style: normal;
  font-weight: 700;
  src: local('Roboto Condensed Bold'), local('RobotoCondensed-Bold'), url(http://fonts.gstatic.com/s/robotocondensed/v13/b9QBgL0iMZfDSpmcXcE8nPX2or14QGUHgbhSBV1Go0E.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
body {
    margin:40px;
    font-family: 'Roboto Condensed', sans-serif;
    background: #16A085;
    
}

.head {
    color: #ECF0F1;
}

.board {
    width: 100%;
    height: auto;
    margin: 20px auto;
    background: #fefefe;
    border-radius: 8px 8px 0 0;
}

.board .nav-tabs {
    position: relative;
    margin: 40px auto;
    margin-bottom: 0;
    box-sizing: border-box;
}

.liner {
    height: 2px;
    background: #ddd;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.nav-tabs > li {
    width: 25%;
}

.nav-tabs > li:after {
    content: " ";
    position: absolute;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #aaa;
    transition: left 1s;
}

.nav-tabs > li.active:after {
    left: calc(50% - 10px);
    opacity: 1;
}

.nav-tabs > li[rel-index="-1"]:after {
    left: calc(50% + 100% - 10px);
}

.nav-tabs > li[rel-index="-2"]:after {
    left: calc(50% + 200% - 10px);
}

.nav-tabs > li[rel-index="-3"]:after {
    left: calc(50% + 300% - 10px);
}

.nav-tabs > li[rel-index="1"]:after {
    left: calc(50% - 100% - 10px);
}

.nav-tabs > li[rel-index="2"]:after {
    left: calc(50% - 200% - 10px);
}

.nav-tabs > li[rel-index="3"]:after {
    left: calc(50% - 300% - 10px);
}

.nav-tabs > li a {
    width: 70px;
    height: 70px;
    line-height: 70px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
}

.nav-tabs > li a:hover{
    background: transparent;
}

.nav-tabs > li span {
    width: 70px;
    height: 70px;
    line-height: 70px;
    display: inline-block;
    border-radius: 100px;
    background: white;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}

.nav-tabs > li:nth-of-type(1) span {
    color: #3e5e9a;
    border: 2px solid #3e5e9a;
}

.nav-tabs > li:nth-of-type(1).active span {
    color: #fff;
    background: #3e5e9a;
}

.nav-tabs > li:nth-of-type(2) span {
    color: #f1685e;
    border: 2px solid #f1685e;
}

.nav-tabs > li:nth-of-type(2).active span {
    color: #fff;
    background: #f1685e;
}

.nav-tabs > li:nth-of-type(3) span {
    color: #febe29;
    border: 2px solid #febe29;
}

.nav-tabs > li:nth-of-type(3).active span {
    color: #fff;
    background: #febe29;
}

.nav-tabs > li:nth-of-type(4) span {
    color: #25c225;
    border: 2px solid #25c225;
}

.nav-tabs > li:nth-of-type(4).active span {
    color: #fff;
    background: #25c225;
}

.nav-tabs > li > a.disabled {
    opacity: 1;
}

.nav-tabs > li > a.disabled span {
    border-color: #ddd;
    color: #aaa;
}

div#step-1 {
    background: #fff;
}

div[role="tabpanel"]:after {
    content: "";
    display: block;
    clear: both;
</style>
</head>
<body>
<div class="head">
    <h1>GIVINGEST</h1>
</div>

<div class="container">
    <div class="row">
        <div class="board">
            <ul class="nav nav-tabs">
                <div class="liner"></div>
                <li rel-index="0" class="active">
                    <a href="#step-1" class="btn" aria-controls="step-1" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-user"></i></span>
                    </a>
                </li>
                <li rel-index="1">
                    <a href="#step-2" class="btn disabled" aria-controls="step-2" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-heart"></i></span>
                    </a>
                </li>
                <li rel-index="2">
                    <a href="#step-3" class="btn disabled" aria-controls="step-3" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-plus"></i></span>
                    </a>
                </li>
                <li rel-index="3">
                    <a href="#step-4" class="btn disabled" aria-controls="step-4" role="tab" data-toggle="tab">
                        <span><i class="glyphicon glyphicon-ok"></i></span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="step-1">
                
                <div class="col-md-12">
                    <h3>Business Info</h3>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Business Name</label>
                            <input  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Name"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">EIN (used to verify your business)</label>
                            <input  maxlength="10" type="text" required="required" class="form-control" placeholder="12-3456789"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="subject">
                                Type of Business</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">Restaurant</option>
                                <option value="suggestions">Shopping</option>
                                <option value="product">Financial</option>
                                <option value="product">Retail</option>
                                <option value="product">Online</option>
                                <option value="product">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Website (option)</label>
                            <input maxlength="100" type="text"  class="form-control" placeholder="URL" />
                        </div>
                    </div> 
                    <h3>Business Location</h3>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Street Adress</label>
                            <input  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Address"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">City</label>
                            <input  maxlength="40" type="text" required="required" class="form-control" placeholder="Enter City"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">ZIP</label>
                            <input  maxlength="5" type="text" required="required" class="form-control" placeholder="Enter ZIP Code"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">State</label>
                            <input  maxlength="2" type="text" required="required" class="form-control" placeholder="Enter State"  />
                        </div>
                    </div>
                    <h3>Business Contact</h3>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Phone Number</label>
                            <input  maxlength="14" type="text" required="required" class="form-control" placeholder="(555) 555-5555"  />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Email</label>
                            <input  maxlength="100" type="text" required="required" class="form-control" placeholder="Enter Email"  />
                        </div>
                    </div>
                
                    <button id="step-1-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="step-2">
                <div class="col-md-12">
                    <button id="step-2-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="step-3">
                <div class="col-md-12">
                    <button id="step-3-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="step-4">
                <div class="col-md-12">
                    <button id="step-4-next" class="btn btn-lg btn-primary pull-right">Continue</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
$(function() {
    // Nav Tab stuff

    
    
    $('.nav-tabs > li > a').click(function() {
        if($(this).hasClass('disabled')) {
            return false;
        } else {
            var linkIndex = $(this).parent().index() - 1;
            $('.nav-tabs > li').each(function(index, item) {
                $(this).attr('rel-index', index - linkIndex);
            });
        }
    });
    $('#step-1-next').click(function() {
        // Check values here
        var isValid = true;
        
        if(isValid) {
            $('.nav-tabs > li:nth-of-type(2) > a').removeClass('disabled').click();
        }
    });
    $('#step-2-next').click(function() {
        // Check values here
        var isValid = true;
        
        if(isValid) {
            $('.nav-tabs > li:nth-of-type(3) > a').removeClass('disabled').click();
        }
    });
    $('#step-3-next').click(function() {
        // Check values here
        var isValid = true;
        
        if(isValid) {
            $('.nav-tabs > li:nth-of-type(4) > a').removeClass('disabled').click();
        }
    });
});
</script>
</body> -->

<!-- ----------------------------------------------------------------------------------------------- -->



<!-- <style>
<!-- multistep form 
<form id="msform">
	<!-- progressbar 
	<ul id="progressbar">
		<li class="active">Account Setup</li>
		<li>Social Profiles</li>
		<li>Personal Details</li>
	</ul>
	<!-- fieldsets 
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text" name="email" placeholder="Email" />
		<input type="password" name="pass" placeholder="Password" />
		<input type="password" name="cpass" placeholder="Confirm Password" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Social Profiles</h2>
		<h3 class="fs-subtitle">Your presence on the social network</h3>
		<input type="text" name="twitter" placeholder="Twitter" />
		<input type="text" name="facebook" placeholder="Facebook" />
		<input type="text" name="gplus" placeholder="Google Plus" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">We will never sell it</h3>
		<input type="text" name="fname" placeholder="First Name" />
		<input type="text" name="lname" placeholder="Last Name" />
		<input type="text" name="phone" placeholder="Phone" />
		<textarea name="address" placeholder="Address"></textarea>
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
</form>

<!-- jQuery 
<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<!-- jQuery easing plugin 
<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
</style>
</head>
<body>
multistep form
<form id="msform">
	progressbar
	<ul id="progressbar">
		<li class="active">Account Setup</li>
		<li>Social Profiles</li>
		<li>Personal Details</li>
	</ul>
	fieldsets
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text" name="email" placeholder="Email" />
		<input type="password" name="pass" placeholder="Password" />
		<input type="password" name="cpass" placeholder="Confirm Password" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Social Profiles</h2>
		<h3 class="fs-subtitle">Your presence on the social network</h3>
		<input type="text" name="twitter" placeholder="Twitter" />
		<input type="text" name="facebook" placeholder="Facebook" />
		<input type="text" name="gplus" placeholder="Google Plus" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">We will never sell it</h3>
		<input type="text" name="fname" placeholder="First Name" />
		<input type="text" name="lname" placeholder="Last Name" />
		<input type="text" name="phone" placeholder="Phone" />
		<textarea name="address" placeholder="Address"></textarea>
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
</form>

jQuery
<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
jQuery easing plugin
<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
<script>
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

$(".next").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'transform': 'scale('+scale+')'});
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

$(".submit").click(function(){
	return false;
})


</script>
</body> -->

<!-- -------------------------------ROTATE TEXT INPUT FIELD---------------------------------------------------------------- -->
<!-- 
<style>
/*Custom fonts - Sniglet and FontAwesome*/
@import url('http://fonts.googleapis.com/css?family=Sniglet');
@import url('http://thecodeplayer.com/uploads/fonts/font-awesome-4.1.0/css/font-awesome.min.css');

/* * {margin: 0; padding: 0;}
body {
	background: hsl(120, 40%, 60%);
	padding-top: 150px;
	font: normal 18px Sniglet; color: white; text-align: center;
} */

/*general styles*/
/* h1 {font-weight: normal; font-size: 36px; margin-bottom: 75px;}
.fun-cube i {transform: scale(10); opacity: 0.1;} */

#cuboid {
	width: 400px; margin: 0 auto;
	/*this also makes #cuboid a container for absolutely positioned descendants*/
	/* perspective: 1000px; */
}
#cuboid form {
	/*counter translate*/
	transform: translateZ(-20px);
	/*propogate 3d space for children*/
	transform-style: preserve-3d;
	/*prevent height collapse as children are absolutely positioned*/
	height: 40px;
	/*for smooth animations*/
	transition: all 0.35s;
}

/*faces*/
/* .cuboid-text {
	/*each face will be 40px high*/
	/* line-height: 40px; height: 40px;
	background: hsl(120, 40%, 20%);
} */
/* .loader {
	background: hsl(120, 40%, 30%);
	animation: phase 1s infinite; 
}
/* /*Lets create a pulsating animation for the loader face*/
/* @keyframes phase {
	50% {background: hsl(120, 70%, 30%);}
} */ */
/* #email {
	background: white; outline: none; border: 0 none;
	font: inherit; text-align: left; color: hsl(120, 40%, 30%);
	display: block; width: 100%; padding: 0 10px;
	box-sizing: border-box;
} */
#submit {display: none;}

.submit-icon, .reset-icon {
	position: absolute; top: 0; right: 0;
	color: rgba(0, 0, 0, 0.25);
	line-height: 40px; padding: 0 10px;
	/*smooth transitions when user activates input and types something*/
	transition: all 0.5s;
	/*to make the icons feel like buttons*/
	cursor: pointer;
}
/*.active = when the user is typing something*/
.submit-icon.active {color: hsl(120, 40%, 30%);}
/* .reset-icon {color: rgba(255, 255, 255, 0.25); font-size: 14px;} */

#cuboid div {position: absolute; top: 0; left: 0; width: 100%;}
/*3D transforms. Each face will be rotated in multiples of -90deg and moved 20px(half of their 40px height) out*/
#cuboid div:nth-child(1) {transform: rotateX(0deg) translateZ(20px);}
#cuboid div:nth-child(2) {transform: rotateX(-90deg) translateZ(20px);}
/* #cuboid div:nth-child(3) {transform: rotateX(-180deg) translateZ(20px);}
#cuboid div:nth-child(4) {transform: rotateX(-270deg) translateZ(20px);} */

/*the form will have 4 states/classes(default+3) for rotation*/
#cuboid form:hover, 
#cuboid form.ready {transform: translateZ(-20px) rotateX(90deg);}
/* #cuboid form.loading {transform: translateZ(-20px) rotateX(180deg);}
#cuboid form.complete {transform: translateZ(-20px) rotateX(270deg);} */

</style>
</head>
<body>



heirarchy: #cuboid > form > div*4(cuboid faces)
<div id="cuboid">
	<form>
		#1 hover button
		<div>
			<p class="cuboid-text">Subscribe</p>
		</div>
		#2 text input
		<div>
			Label to trigger #submit
			<label for="submit" class="submit-icon">
				<i class="fa fa-chevron-right"></i>
			</label>
			<input type="text" id="email" class="cuboid-text" placeholder="Your Email" autocomplete="off"/>
			hidden submit button
			 <input type="submit" id="submit" />
		</div>
		#3 loading message
		<div>
			<p class="cuboid-text loader">Just a moment</p>
		</div>
		#4 success message
		<div>
			reset/retry button
			<span class="reset-icon"><i class="fa fa-refresh"></i></span>
			<p class="cuboid-text">Thankyou, we'll be in touch</p>
		</div>
	</form>
</div>

jQuery
<script src="http://thecodeplayer.com/u/js/jquery-1.9.1.min.js" type="text/javascript"></script>


<script>
//jQuery time

//add '.ready' to form when user focuses on it
$("#email").focus(function(){
	$("#cuboid form").addClass("ready");
})
//remove '.ready' when user blus away but only if there is no content
$("#email").blur(function(){
	if($(this).val() == "")
		$("#cuboid form").removeClass("ready");
})

//If the user is typing something make the arrow green/.active
$("#email").keyup(function(){
	//this adds .active class only if the input has some text
	$(".submit-icon").toggleClass("active", $(this).val().length > 0);
})

/* //on form submit remove .ready and add .loading to the form
$("#cuboid form").submit(function(){
	$(this).removeClass("ready").addClass("loading"); 
	
	//finish loading in 3s
	setTimeout(complete, 3000);
	
	//prevent default form submisson
	return false;
})
/* function complete()
{
	$("#cuboid form").removeClass("loading").addClass("complete");
} */
/* //reset/refresh functionality
$(".reset-icon").click(function(){
	$("#cuboid form").removeClass("complete");
}) */

</script>

</body> -->

<!-- -------------------------------INPUT TEXTFIELD---------------------------------------------------------------- -->

<!-- <style>
.enjoy-css {
  display: inline-block;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  padding: 10px 20px;
  border: 1px solid #b7b7b7;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  font: normal 16px/normal "Times New Roman", Times, serif;
  color: rgba(0,142,198,1);
  -o-text-overflow: clip;
  text-overflow: clip;
  background: rgba(252,252,252,1);
  -webkit-box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
  box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
  text-shadow: 1px 1px 0 rgba(255,255,255,0.66) ;
  -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
}
</style>
<body>
<input class="enjoy-css" placeholder="Enjoy" />

</body> -->

<!-- -------------------------------3D TEXT---------------------------------------------------------------- -->
<style>
.enjoy-css {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  border: none;
  font: normal 72px/normal "Passero One", Helvetica, sans-serif;
  color: rgba(255,255,255,1);
  text-align: center;
  -o-text-overflow: clip;
  text-overflow: clip;
  text-shadow: 0 1px 0 rgb(204,204,204) , 0 2px 0 rgb(201,201,201) , 0 3px 0 rgb(187,187,187) , 0 4px 0 rgb(185,185,185) , 0 5px 0 rgb(170,170,170) , 0 6px 1px rgba(0,0,0,0.0980392) , 0 0 5px rgba(0,0,0,0.0980392) , 0 1px 3px rgba(0,0,0,0.298039) , 0 3px 5px rgba(0,0,0,0.2) , 0 5px 10px rgba(0,0,0,0.247059) , 0 10px 10px rgba(0,0,0,0.2) , 0 20px 20px rgba(0,0,0,0.14902) ;
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}

.enjoy-css:hover {
  color: rgba(202,18,18,1);
  text-shadow: 0 1px 0 rgba(117,17,17,1) , 0 2px 0 rgba(117,17,17,1) , 0 3px 0 rgba(117,17,17,1) , 0 4px 0 rgba(117,17,17,1) , 0 5px 0 rgba(117,17,17,1) , 0 6px 1px rgba(0,0,0,0.0980392) , 0 0 5px rgba(0,0,0,0.0980392) , 0 1px 3px rgba(0,0,0,0.298039) , 0 3px 5px rgba(0,0,0,0.2) , 0 -5px 10px rgba(0,0,0,0.247059) , 0 -7px 10px rgba(0,0,0,0.2) , 0 -15px 20px rgba(0,0,0,0.14902) ;
  -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
}
</style>
<body>
<div class="enjoy-css">Pizza Villa</div>
<link async href="http://fonts.googleapis.com/css?family=Passero%20One" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
</body>


</html>