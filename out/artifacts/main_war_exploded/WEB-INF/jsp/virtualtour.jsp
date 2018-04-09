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
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Virtual tour</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- <script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/three.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/js/jquery.ipanorama.min.js"></script>
<script type="text/css" src="${contextPath}/js/ipanorama.css"
	rel="stylesheet" media="all"></script>
<script type="text/css"
	src="${contextPath}/js/ipanorama.theme.default.css" rel="stylesheet"
	media="all"></script>
	 -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.pannellum.org/2.3/pannellum.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.pannellum.org/2.3/pannellum.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<!--  -->
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span><span
								class="icon-bar"></span><span class="icon-bar"></span><span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="lecturenotes">Lecture Notes</a></li>
							<li><a href="tovirtuallab">VitualLab</a></li>
							<li><a href="displaynotifs">Notification</a></li>
							<li><a href="quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-2 column"></div>
			<div class="col-md-10 column">
				<div id="panorama2" style="width:800px;height:600px;"></div>
				<script>
					pannellum.viewer('panorama2', {
						"type" : "equirectangular",
						"panorama" : "${contextPath}/imgs/panoramapic1.jpg",
						/*
						 * Uncomment the next line to print the coordinates of mouse clicks
						 * to the browser's developer console, which makes it much easier
						 * to figure out where to place hot spots. Always remove it when
						 * finished, though.
						 */
						//"hotSpotDebug": true,
						"hotSpots" : [
							{
								"pitch" : 14.1,
								"yaw" : 1.5,
								"type" : "info",
								"text" : "Baltimore Museum of Art",
								"URL" : "https://artbma.org/"
							},
							{
								"pitch" : -9.4,
								"yaw" : 222.6,
								"type" : "info",
								"text" : "Art Museum Drive"
							},
							{
								"pitch" : -0.9,
								"yaw" : 144.4,
								"type" : "info",
								"text" : "North Charles Street"
							}
						]
					});
				</script>
				<hr>
				<div id="panorama" style="width:800px;height:600px;"></div>
				<script>
					pannellum.viewer('panorama', {
						"default" : {
							"firstScene" : "library",
							"author" : "Matthew Petroff",
							"sceneFadeDuration" : 1000,
							"autoLoad" : false,
						},
				
						"scenes" : {
							"library" : {
								"title" : "George Peabody Library",
								"hfov" : 100,
								"pitch" : 10,
								"yaw" : 50,
								"compass" : true,
								"northOffset" : 289,
								"type" : "multires",
								"multiRes" : {
									"basePath" : "https:\/\/pannellum.org/images/multires/library",
									"path" : "/%l/%s%y_%x",
									"fallbackPath" : "/fallback/%s",
									"extension" : "jpg",
									"tileResolution" : 512,
									"maxLevel" : 6,
									"cubeResolution" : 8432
								},
								"hotSpots" : [
									{
										"pitch" : 60,
										"yaw" : 60,
										"type" : "info",
										"text" : "The skylight is supported by an iron truss and has a second, peaked skylight over it."
									},
									{
										"pitch" : 10,
										"yaw" : 25,
										"type" : "info",
										"text" : "Much of the library was constructed from cast-iron to reduce the risk of fire."
									},
									{
										"pitch" : 0,
										"yaw" : 8,
										"type" : "info",
										"text" : "The lighting was originally gas."
									},
									{
										"pitch" : -3,
										"yaw" : 115,
										"type" : "info",
										"text" : "The JHU library catalog contains the Peabody Library’s holdings.",
										"URL" : "https://catalog.library.jhu.edu/"
									},
									{
										"pitch" : -3,
										"yaw" : 65,
										"type" : "scene",
										"text" : "Gallery",
										"sceneId" : "gallery"
									},
									{
										"pitch" : 47,
										"yaw" : -135,
										"type" : "scene",
										"text" : "6th Floor",
										"sceneId" : "6th-floor"
									}
								]
							},
				
							"gallery" : {
								"title" : "Gallery",
								"hfov" : 100,
								"yaw" : -20,
								"type" : "multires",
								"compass" : true,
								"northOffset" : 240,
								"multiRes" : {
									"basePath" : "https:\/\/pannellum.org/images/multires/gallery",
									"path" : "/%l/%s%y_%x",
									"fallbackPath" : "/fallback/%s",
									"extension" : "jpg",
									"tileResolution" : 512,
									"maxLevel" : 5,
									"cubeResolution" : 4384
								},
								"hotSpots" : [
									{
										"pitch" : -7,
										"yaw" : -58,
										"type" : "scene",
										"text" : "Library",
										"sceneId" : "library",
										"targetYaw" : 240
									}
								]
							},
				
							"6th-floor" : {
								"title" : "6th Floor",
								"hfov" : 100,
								"pitch" : -20,
								"yaw" : -20,
								"compass" : true,
								"northOffset" : 0,
								"type" : "multires",
								"multiRes" : {
									"basePath" : "https:\/\/pannellum.org/images/multires/6th-floor",
									"path" : "/%l/%s%y_%x",
									"fallbackPath" : "/fallback/%s",
									"extension" : "jpg",
									"tileResolution" : 512,
									"maxLevel" : 4,
									"cubeResolution" : 3968
								},
								"hotSpots" : [
									{
										"pitch" : -47.5,
										"yaw" : -11,
										"type" : "scene",
										"text" : "Main Floor",
										"sceneId" : "library"
									},
									{
										"pitch" : -28,
										"yaw" : -3,
										"type" : "scene",
										"text" : "Gallery",
										"sceneId" : "gallery"
									},
									{
										"pitch" : -20,
										"yaw" : -165.7,
										"type" : "info",
										"text" : "The A B C of Prohibition",
										"URL" : "https://catalyst.library.jhu.edu/catalog/bib_1121184"
									}
								]
							}
						}
					});
				</script>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-9 column"></div>
	</div>
	<hr>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy; Your
							Website 2017</p>
					</div>
					<!-- /.container -->
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
