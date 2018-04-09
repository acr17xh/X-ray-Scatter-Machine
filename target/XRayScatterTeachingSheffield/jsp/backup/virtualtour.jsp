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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>X Ray Scatter Teaching Sheffield</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
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
						<a class="navbar-brand" href="${contextPath}/home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="${contextPath}/lecturenotes">Lecture
									Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
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
				<div id="panorama" style="width: 800px; height: 600px;"></div>
				<script>
					pannellum.viewer('panorama', {
						"type" : "equirectangular",
						"panorama" : "${contextPath}/imgs/r1.jpg",
						/*
						 * Uncomment the next line to print the coordinates of mouse clicks
						 * to the browser's developer console, which makes it much easier
						 * to figure out where to place hot spots. Always remove it when
						 * finished, though.
						 */
						//"hotSpotDebug": true,
						"hotSpots" : [ {
							"pitch" : 14.1,
							"yaw" : 1.5,
							"type" : "info",
							"text" : "Baltimore Museum of Art",
							"URL" : "https://artbma.org/"
						}, {
							"pitch" : -9.4,
							"yaw" : 222.6,
							"type" : "info",
							"text" : "Art Museum Drive"
						}, {
							"pitch" : -0.9,
							"yaw" : 144.4,
							"type" : "info",
							"text" : "North Charles Street"
						} ]
					});
				</script>
				<div id="panorama2" style="width: 800px; height: 600px;"></div>
				<script>
					pannellum.viewer('panorama2', {
						"type" : "equirectangular",
						"panorama" : "${contextPath}/imgs/r2.jpg",
						/*
						 * Uncomment the next line to print the coordinates of mouse clicks
						 * to the browser's developer console, which makes it much easier
						 * to figure out where to place hot spots. Always remove it when
						 * finished, though.
						 */
						//"hotSpotDebug": true,
						"hotSpots" : [ {
							"pitch" : 14.1,
							"yaw" : 1.5,
							"type" : "info",
							"text" : "Baltimore Museum of Art",
							"URL" : "https://artbma.org/"
						}, {
							"pitch" : -9.4,
							"yaw" : 222.6,
							"type" : "info",
							"text" : "Art Museum Drive"
						}, {
							"pitch" : -0.9,
							"yaw" : 144.4,
							"type" : "info",
							"text" : "North Charles Street"
						} ]
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
