<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>X Ray Scatter Teaching Sheffield</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
<!-- Theme CSS -->
<link href="${contextPath}/js/css/clean-blog.min.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="${contextPath}/js/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!-- Contact Form JavaScript -->
<script src="${contextPath}/js/js/jqBootstrapValidation.js"></script>
<script src="${contextPath}/js/js/contact_me.js"></script>
<!-- Theme JavaScript -->
<script src="${contextPath}/js/js/clean-blog.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="${contextPath}/home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${contextPath}/lecturenotes">Lecture
									Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('${contextPath}/imgs/home-bg.jpg')">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading">
						<h1>Virtual laboratory</h1>
						<hr class="small">
						<span class="subheading">Explore the laboratory, understand
							how it works. Click the title to continue.</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-preview">
					<a href="${contextPath}/tovirtualtour">
						<h2 class="post-title">View panorama image of the laboratory</h2>
						<h3 class="post-subtitle">Be familiar with the laboratory.</h3>
					</a>

				</div>
				<hr>
				<div class="post-preview">
					<a href="${contextPath}/simulation">
						<h2 class="post-title">View real samples</h2>
						<h3 class="post-subtitle">View samples and their outputs,
							with different camera lengths and exposure time.</h3>
					</a>
				</div>
				<hr>
				<div class="post-preview">
					<a href="${contextPath}/tovirtualinstrument">
						<h2 class="post-title">Learn operating it step by step</h2>
						<h3 class="post-subtitle">Choose from 5 camera lengths and 4
							stages, then pick the sample you like.</h3>
					</a>
				</div>
				<hr>
			</div>
		</div>
	</div>
	<hr>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy; MAXI
							TEAM3 2017</p>
					</div>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
