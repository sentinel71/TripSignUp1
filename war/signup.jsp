<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<title>Sign Up</title>
</head>
<body>
	<style type="text/css">
	
/*=======BEGIN RESET.CSS=======*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}


/*======END RESET.CSS======*/
body {
	background-image:url(childs.jpg);
	background-size: 100% 850px;
	background-repeat: no-repeat;
	overflow-x:hidden; 
	-webkit-animation:image 8s infinite ;
	-webkit-animation-timing-function:ease-in-out;
	-moz-animation:image 8s infinite ;
	-moz-animation-timing-function:ease-in-out;
	-o-animation:image 8s infinite ;
	-o-animation-timing-function:ease-in-out;
	animation-name:image ;
	animation-duration:8s ;
	animation-iteration-count:infinite ;
}

@-webkit-keyframes image{
	0% {background-image: url(childs.jpg);}
	50% {background-image: url(iphone.jpg);}
	100% {background-image: url(childs.jpg);}
}
@-moz-keyframes image{
	0% {background-image: url(childs.jpg);}
	50% {background-image: url(iphone.jpg);}
	100% {background-image: url(childs.jpg);}
}
@-o-keyframes image{
	0% {background-image: url(childs.jpg);}
	50% {background-image: url(iphone.jpg);}
	100% {background-image: url(childs.jpg);}
}
@keyframes image{
	0% {background-image: url(childs.jpg);}
	50% {background-image: url(iphone.jpg);}
	100% {background-image: url(childs.jpg);}
}
.container{
	width: 50%;
	background-color: rgba(255,255,255,0.85);
	height: 380px;
	padding-top: 50px;
	margin-left: 25%;
	margin-right: 25%;
	margin-top: 2%;
	text-align: center;
	border-radius: 15px;
}
.intro{
	color: orange;
	font-family:'Open Sans';
	font-size:1.1em;
	cursor: pointer;
}
.triangle{
	border-right:10px solid transparent ;
	border-left: 10px solid transparent ;
	border-bottom:10px solid orange;
	width: 0;
	height: 0;
	margin-top: 1%;
	margin-left: 48%;
	margin-right: 52%;
}
.more{
	font-family:'Open Sans Condensed';
	font-weight:300;
	font-size:1.25em;
	width: 65%;
	margin-left: 16.5%;
	color: white;
	margin-bottom: 1%;
	background-color: orange;
	padding: 10px ;
	border-radius: 5px;
}

.form{
	margin-top: 2%;
}
.form input[type="text"]{
	width:51.5%;
	height: 30px;
	font-family:'Open Sans';
	font-size: 1.25em;
	position: relative;
	top: 0px;
	text-align: center;
}
.form input[type="submit"]{
	width:15%;
	height: 36px;
	border-style:none;
	background-color: rgb(50,200,50);
	color:white;
	font-family:'Open Sans' ;
	font-size: 1.1em;
	font-weight: 500;
	cursor: pointer;
}
input[type="text"]:focus{
	outline: 0;
}
.disclaimer{
	color:#404040;
	width: 65%;
	margin-left: 19%;
	text-align: left;
	font-family:'Open Sans';
	margin-top: 2%;
}


	</style>
	<div class="container">
		<img src="http://placehold.it/80x80">
		<br>
		<br>
		<p style="color:rgb(50,200,50);font-size:2em;font-family:'Open Sans Condensed';font-weight:700;">Trip <span style="color:orange">to</span> Paradise</p>
		<br>
		<p style="color:#404040;font-family:'Open Sans';font-size:1.25em;">
			" One Life One Trip "
		</p>
		<br>
		<div class="intro">What do we do ?</div>
		<div class="triangle"></div>
		<div class="more">We do your laundry , So that you don't have to go home and cry for your mama</div>
		<!--<p class="launch">Count down to launch has begun . Till then buy some more undies</p>-->
		<form action="/signup" method="post" class="form">
			<input name="email" type="text" placeholder="Enter your email address"/> <input type="submit" value="Notify Me" />
		</form>
		<p class="disclaimer">Enter your email address and we'll let you know as soon as we're ready</p>
		<br>
		<br>
	</div>
	<script type="text/javascript">

	$(document).ready(function(){
		$(".more").hide();
		$(".triangle").hide();
		$(".intro").click(function(){
			$(".triangle").toggle();
			$(".more").toggle();
		});
	});

	</script>
</body>
</html>