<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Water Falls
Version    : 1.0
Released   : 20070408
Description: A two-column layout featuring fluid design. Suitable for blogs and small business websites.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Waterfalls by FCT</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="logo">
	<h1>MY INTELLIGENCE CAB</h1>
	
</div>
<div id="page">
	<div id="content">
		<div id="welcome" style="width:500px;">
			<p style="margin: 0;"></p>
			<h2 class="title">ADMIN LOGIN HERE</h2>
			<form method="post" action="ADMIN">
			<table >
			<tr><td>USERNAME</td><td><input type="text"  name="x" /></td></tr>
			<tr><td>PASSWORD</td><td><input type="password" name="y" /></td></tr>
			<tr><td></td><td><input type="submit" value="login" /></td></tr>
			</table>
			</form>
			

			
			
		</div>
		<!-- end #welcome -->
		<div style="clear: left;">
		
			</div>
		</div>
	</div>
	<!-- end #content -->
	<div id="sidebar">
		<div id="menu">
			<h2>Navigation Menu</h2>
			<!--
			<ul>
				<li class="first"><a href="#" accesskey="1" title="">REGISTRATION</a></li>
				<li><a href="#" accesskey="2" title="">About Us</a></li>
				<li><a href="#" accesskey="3" title="">DOWNLOADS</a></li>
				<li><a href="#" accesskey="4" title="">IES BOYS HOSTEL</a></li>
				<li><a href="#" accesskey="5" title="">MUSIC VIDEOS</a></li>
				<li><a href="#" accesskey="6" title="">MUSIC AUDIO</a></li>
				<li><a href="#" accesskey="7" title="">MUSIC ALBUM</a></li>
			</ul>
			-->
			
		</div>
		<!-- end #menu -->
		<div class="boxed">
			<%
 if(request.getAttribute("COKE")!=null)
 {
	 out.println("<font color='red'><h1>"+request.getAttribute("COKE"));
 }
%>
			</div>
		</div>
	</div>
	<!-- end #sidebar -->
	<div style="clear: both; height: 1px;"></div>
</div>
<!-- end #page -->
<div id="footer">
	<p id="legal">Copyright &copy; 2007 Water Falls. All Rights Reserved. Designed by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
	<p id="links"><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
</div>
</body>
</html>
