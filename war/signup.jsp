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

.container{
	width: 65%;
	height: 500px;
	margin-left: 17.5%;
	margin-right: 17.5%;
	margin-top: 2%;
	text-align: center;
}
.intro{
	color: #3799FF;
	font-family:'Open Sans';
	font-size:1.1em;
	cursor: pointer;
}
.triangle{
	border-right:10px solid transparent ;
	border-left: 10px solid transparent ;
	border-bottom:10px solid #3799FF;
	width: 0;
	height: 0;
	margin-top: 1%;
	margin-left: 50%;
	margin-right: 50%;
}
.more{
	font-family:'Open Sans Condensed';
	font-weight:300;
	font-size:1.25em;
	width: 50%;
	margin-left: 24%;
	color: white;
	margin-bottom: 1%;
	background-color: #3799FF;
	padding: 10px ;
	border-radius: 5px;
}

.launch{
	color:#404040;
	font-family:'Open Sans Condensed';
	font-size:1.55em;
	font-weight:700;
	margin-top:2%;
	color: white;
	text-shadow:0 0 5px black;
}
.form{
	margin-top: 2%;
}
.form input[type="text"]{
	width:40%;
	height: 30px;
	font-family:'Open Sans';
	font-size: 1.25em;
	position: relative;
	top: 0px;
	text-align: center;
}
.form input[type="submit"]{
	width:10%;
	height: 36px;
	border-style:none;
	background-color: #3799FF;
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
	width: 60%;
	margin-left: 24.7%;
	text-align: left;
	font-family:'Open Sans';
	margin-top: 2%;
}

	</style>
	<div class="container">
		<img src="http://placehold.it/80x80">
		<br>
		<br>
		<p style="color:#3799FF;font-size:2em;font-family:'Open Sans Condensed';font-weight:700;">Quick <span style="color:#404040">Laundry</span></p>
		<br>
		<p style="color:#404040;font-family:'Open Sans';font-size:1.25em;">
			" Live Life Laundry Free "
		</p>
		<br>
		<div class="intro">What do we do ?</div>
		<div class="triangle"></div>
		<div class="more">We do your laundry , So that you don't have to go home and cry for your mama</div>
		<form action="/signup" method="post">
			<input name="email" /> <input type="submit" value="Notify Me" />
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