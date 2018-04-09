
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.maxi3.listener.SessionCounter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>X Ray Scatter Teaching</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- <link rel="stylesheet"
        href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/css/demo.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script
	src="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
#Picture {
	height: 700px;
	width: 100%;
}

#white_blank {
	height: 450px
}

#button1 {
	margin-top: 80px;
	height: 150px;
	border: solid 5px #3be6c4;
	border-radius: 5%;
	transition: height 0.5s, width 0.5s, background-color 0.5s, color 0.5s;
}

#button2 {
	margin-top: 80px;
	height: 150px;
	border: solid 5px #3be6c4;
	border-radius: 5%;
	transition: height 0.5s, width 0.5s, background-color 0.5s, color 0.5s;
}

#button3 {
	margin-top: 80px;
	height: 150px;
	border: solid 5px #3be6c4;
	border-radius: 5%;
	transition: height 0.5s, width 0.5s, background-color 0.5s, color 0.5s;
}

#button1:hover {
	height: 170px;
	width: 305px;
	background-color: #3be6c4;
	color: white
}

#button2:hover {
	height: 170px;
	width: 305px;
	background-color: #3be6c4;
	color: white
}

#button3:hover {
	height: 170px;
	width: 305px;
	background-color: #3be6c4;
	color: white
}

#span1 {
	font-size: 70px;
	position: relative;
	top: 30px;
}

#span2 {
	font-size: 70px;
	position: relative;
	top: 30px;
}

#span3 {
	font-size: 70px;
	position: relative;
	top: 30px;
}

#p {
	font-size: 40px;
	position: relative;
	top: 30px;
}

#section1 {
	padding: 0px;
	border-top: solid 10px #847b9c
}

#section1 img {
	max-height: 100%;
	max-width: 100%
}

#section2 {
	padding: 0px
}

#section2 img {
	max-height: 100%;
	max-width: 100%
}

#section3 {
	padding: 0px
}

#section3 img {
	max-height: 100%;
	max-width: 100%
}

#section1_text {
	color: #575073;
	position: relative;
	top: 110px;
	font-size: 25px
}

#section2_text {
	color: #ff8232;
	position: relative;
	top: 110px;
	font-size: 25px
}

#section3_text {
	color: #ff8232;
	position: relative;
	top: 110px;
	font-size: 25px
}

#section1_blank {
	height: 100px;
	background-color: #847b9c
}

#section2_blank {
	height: 100px;
	background-color: #ff8232
}

#section3_blank {
	height: 100px;
	background-color: #ff8232
}

#backtop {
	border: solid 2px #3be6c4;
	font-size: 50px;
	transition: background-color 0.5s, color 0.5s;
	position: relative;
	top: 130px;
	left: 20px;
}

#backtop:hover {
	background-color: #3be6c4;
	color: white
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">
	<%
		SessionCounter counter = (SessionCounter) session.getAttribute(SessionCounter.COUNTER);
	%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">

				<nav class="navbar navbar-default" role="navigation"
					style="margin: 0%">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand active" href="${contextPath}/home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="${contextPath}/lecturenotes">Lecture Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
						<c:choose>
							<c:when test="${remembered}">
								<form action="${contextPath}/user/returnbackground"
									method="post" class="navbar-form navbar-left" role="search">
									<button type="submit" class="btn btn-default">Return</button>
								</form>
								<form action="${contextPath}/user/userlogout" method="post"
									class="navbar-form navbar-left" role="search">
									<button type="submit" class="btn btn-default">Logout</button>
								</form>
							</c:when>
							<c:when test="${loggedout}">
								<form action="${contextPath}/user/userlogin" method="post"
									class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input class="form-control" type="text" name="username"
											placeholder="Username"
											value="${sessionScope.newuser.username}" />
									</div>
									<div class="form-group">
										<input class="form-control" type="password"
											name="userpassword" placeholder="Password"
											value="${sessionScope.newuser.userpassword}" />
									</div>
									<div class="form-group">
										<div class="checkbox">
											<input type="checkbox" name="rememberbox" value="checked"
												checked="checked" /><label class="text-muted">Check
												to remember user</label>
										</div>
									</div>
									<button type="submit" class="btn btn-default">Submit</button>
								</form>
							</c:when>
							<c:otherwise>
								<form action="${contextPath}/user/userlogin" method="post"
									class="navbar-form navbar-left" role="search">
									<div class="form-group">
										<input class="form-control" type="text" name="username"
											placeholder="Username"
											value="${sessionScope.newuser.username}" />
									</div>
									<div class="form-group">
										<input class="form-control" type="password"
											name="userpassword" placeholder="Password"
											value="${sessionScope.newuser.userpassword}" />
									</div>
									<div class="form-group">
										<div class="checkbox">
											<input type="checkbox" name="rememberbox" value="checked"
												checked="checked" /><label class="text-muted">Check
												to remember user</label>
										</div>
									</div>
									<button type="submit" class="btn btn-default">Submit</button>
								</form>
							</c:otherwise>
						</c:choose>
					</div>
				</nav>
				<label>Number of visitors recently: <%=counter.getActiveSessionNumber()%></label>
				<label>${usernameError}</label><label>${userpasswordError}</label> <label>${errorindb}
				</label><label>${notlogin}</label><label>${logoutmessage}</label>
			</div>
		</div>
	</div>



	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="carousel slide" data-ride="carousel"
					data-interval="5000" id="carousel-443871">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-443871"></li>
						<li data-slide-to="1" data-target="#carousel-443871"></li>
						<li data-slide-to="2" data-target="#carousel-443871"></li>
					</ol>
					<div class="carousel-inner" id="Picture">
						<div class="item active">
							<img alt="" src="${contextPath}/imgs/lab3.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="${contextPath}/imgs/lab9.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="${contextPath}/imgs/IMG_5187.JPG" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-443871"
							data-slide="prev"><span
							class="glyphicon glyphicon-chevron-left"></span></a> <a
							class="right carousel-control" href="#carousel-443871"
							data-slide="next"><span
							class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>

				<%--新建模块--%>
				<div class="container-fluid" id="white_blank">
					<div class="row">
						<a class="col-md-2 col-md-offset-2 text-center" id="button1"
							href="#section1"> <label><span
								class="glyphicon glyphicon-home" id="span1"></span></label>
						</a> <a class="col-md-2 col-md-offset-1 text-center" id="button2"
							href="#section2"> <label><span
								class="glyphicon glyphicon-camera" id="span2"></span></label>
						</a> <a class="col-md-2 col-md-offset-1 text-center" id="button3"
							href="#section3"> <label><span
								class="glyphicon glyphicon-tint" id="span3"></span></label>
						</a>
					</div>
					<div class="row">
						<div class="col-md-12 text-center" id="p">
							<p>
								<strong>Here is some link</strong>
							</p>
							<p>to make a simple introduce of our X-ray scatting machine</p>
						</div>
					</div>

				</div>

				<%--新建模块--%>
				<%--section1--%>
				<div id="section1" class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<img src="${contextPath}/imgs/lab8.jpg">
						</div>
						<div class="col-md-4" id="section1_text">
							<h1 class="text-center">
								<strong>Hello</strong>
							</h1>
							<p class="text-center">X-rays are scattered at the electrons
								of the atomic shell.</p>
							<p class="text-center">During the scattering process the
								electron is starts oscilating.</p>
							<p class="text-center">It becomes a dipol and a spherical
								wave is sent out.</p>
							<p class="text-center">The wavelength and energy of the
								scattered wave does not change (elastic scattering).</p>
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" id="section1_blank"></div>
					</div>
				</div>
				<%--section2--%>
				<div id="section2" class="container-fluid">
					<div class="row">
						<div class="col-md-4" id="section2_text">
							<h1 class="text-center">
								<strong>Hello</strong>
							</h1>
							<p class="text-center">X-rays are scattered at the electrons
								of the atomic shell.</p>
							<p class="text-center">During the scattering process the
								electron is starts oscilating.</p>
							<p class="text-center">It becomes a dipol and a spherical
								wave is sent out.</p>
							<p class="text-center">The wavelength and energy of the
								scattered wave does not change (elastic scattering).</p>
						</div>
						<div class="col-md-8">
							<img src="${contextPath}/imgs/lab9.jpg">
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" id="section2_blank"></div>
					</div>
				</div>
				<%--section3--%>
				<div id="section3" class="container-fluid">
					<div class="row">
						<div class="col-md-8">
							<img src="${contextPath}/imgs/lab3.jpg">
						</div>
						<div class="col-md-4" id="section3_text">
							<h1 class="text-center">
								<strong>Hello</strong>
							</h1>
							<p class="text-center">X-rays are scattered at the electrons
								of the atomic shell.</p>
							<p class="text-center">During the scattering process the
								electron is starts oscilating.</p>
							<p class="text-center">It becomes a dipol and a spherical
								wave is sent out.</p>
							<p class="text-center">The wavelength and energy of the
								scattered wave does not change (elastic scattering).</p>
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" id="section3_blank"></div>
					</div>
				</div>



				<div class="text-center"
					style="padding-top: 80px; padding-bottom: 80px">
					<h2>If you want to know more about the X-Ray Scatting machine,
						please go to Lecture notes.</h2>
					<div class="container">
						<div class="row clearfix">
							<div class="col-md-4 column"></div>
							<div class="col-md-4 column">
								<form action="${contextPath}/lecturenotes">
									<button type="submit"
										class="btn btn-default btn-block btn-success">Learn
										more</button>
								</form>
							</div>
							<div class="col-md-4 column"></div>
						</div>
					</div>
				</div>
				<hr>

			</div>

		</div>

	</div>





	<%--新增模块--%>
	<hr>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<a href="#top" id="backtop"><label><span
						class="glyphicon glyphicon-menu-up"></span></label></a>
			</div>
			<div class="col-md-6 text-right">
				<address>
					<strong>University of Sheffield</strong><br>Broad Lane Court<br>
					Sheffield, UK<br> <abbr title="postcode">S1 4BU</abbr> <abbr
						title="Phone">P:</abbr> (123) 456-7890
				</address>
				<address>
					<strong>Full Name</strong><br> <a href="mailto:#">first.last@example.com</a>
				</address>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy;
							YourWebsite 2017</p>
					</div>
				</footer>
			</div>
		</div>
	</div>

</body>
</html>
