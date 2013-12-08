<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/index.css">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300'
	rel='stylesheet' type='text/css'>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
</head>
<body>
	<div class="fixed">

		<div class="price">
		    <span style="font-size:1.25em;color:white">Fares starting as low as Rs.5499/-</span> <br><br>
			<p style="color:black;text-shadow:none;font-size:1em;text-align:justify;margin-left:10px;">
				<img src="drink.png" style="width:24px;height:24px"> Drink
				<img src="food.png" style="width:24px;height:24px"> Food
				<img src="fruit.png" style="width:30px;height:30px;position:relative;top:6px"> Fruits
				<img src="coffee.png" style="width:30px;height:30px;position:relative;top:6px"> Coffee
				<img src="TV.png" style="width:24px;height:24px;top:4px;position:relative"> T.V<br><br>
				<img src="water1.png" style="width:24px;height:24px"> Mineral Water&emsp;
				<img src="wifi1.png" style="width:24px;height:24px"> wifi&emsp;
				<img src="conf1.png" style="width:24px;height:24px"> Conf. Room

			</p>
			<br>
			<span class="close" style="color:black;cursor:pointer;background-color:white;padding:1px 2px;border-radius:5px;text-shadow:none;font-size:0.85em">Close</span>
		</div>
	</div>
	<div class="container">
		<div class="one">
<!-- 		    <img  src="logo.jpg" style="float:left;width:80px;height:auto"> -->
			<p class="tagline">Explore , Experience &amp; Enrich</p>
			<p class="about">
				Happiness comes in packages.We create experiences, meanwhile take a look at what we have
				to <span class="offer" style="color: white; cursor: pointer">offer
					&raquo;</span>
			</p>
			<form id="signupForm" action="/signup" method="post" class="form">
				<input id="emailInput" name="email" type="text"
					placeholder="Enter your email address" /> <input id="submitButton"
					type="submit" value="Notify Me" />
				<c:if test="${isDuplicate}">
				<p style="color:rgb(200,50,50);font-size:1.25em;margin-left: 37%;">Duplicate Email. Please enter your Email again.</p>
			</c:if>
				<c:if test="${isPatternWrong}">
				<p style="color:rgb(200,50,50);font-size:1.25em;margin-left: 37%;">Email pattern is incorrect. Please enter your Email again.</p>
			</c:if>
			</form>
			
		</div>
		<div class="two">
		
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.offer').click(function() {
				$('.one').animate({
					bottom : '0px'
				}, 100, 'linear');
				$('.two').animate({
					top : '270px'
				}, 100, 'linear');
			});
			$('.close').click(function() {
				$('.one').animate({
					bottom : '0'
				}, 100, 'linear');
				$('.two').animate({
					top : '0'
				}, 100, 'linear');
			});
		});
		
		$("#signupForm").submit(function(ev) {
		    ev.preventDefault(); // to stop the form from submitting
		    var x = $("#emailInput").val();
		    var atpos = x.indexOf("@");	    
			var dotpos = x.lastIndexOf(".");
			//$("#emailInput").effect( "shake" );
			//$("#submitButton").effect( "shake" );
			if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= x.length || atpos>dotpos)
			{
				$("#emailInput").effect( "shake");
				$("#submitButton").effect( "shake");
				//$("#emailInput").val("");
			}
			else
		    	this.submit(); // If all the validations succeeded
		});
	</script>
	<style type="text/css">
.ui-effects-wrapper {
	display: inline;
}
</style>

</body>
</html>