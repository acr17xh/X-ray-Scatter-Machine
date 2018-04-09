<%@ page language="java" import="java.util.*" isELIgnored="false"
	pageEncoding="UTF-8"%>
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
<title>Teacher User Background</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script src="${contextPath}/js/shop-item.css"></script>
<script src="${contextPath}/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
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
							<li><a href="${contextPath}/lecturenotes">Lecture Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<p class="lead">Samples</p>
				<div class="list-group">
					<c:forEach items="${samplelist}" var="samples">
						<a
							href="${contextPath}/simulation?page=${thispage}#${samples.sampleId}"
							class="list-group-item">${samples.sampleTil}</a>
					</c:forEach>
				</div>
			</div>
			<div class="col-lg-9">
				<label>${outcomeerror}</label>
				<c:forEach items="${samplelist}" var="samples2">
					<div class="thumbnail">
						<img class="img-responsive"
							src="${contextPath}/simulation/showimgs?imgid=${samples2.sampleId}"
							alt="">
						<div class="caption-full" id=${samples2.sampleId}>
							<h4 class="pull-right">Camera length:
								${samples2.sampleCamlen}</h4>
							<h4>${samples2.sampleTil}</h4>
							<p>${samples2.sampleDes}</p>
							<small class="text-muted">${samples2.sampleDate!}</small>
							<h4>Sample ID: ${samples2.sampleId}</h4>
							<a
								href="${contextPath}/viewoutcome?sampleId=${samples2.sampleId}"
								class="btn btn-success">View outputs with different exposure
								time</a>
						</div>
					</div>
				</c:forEach>
				<ul class="pagination pagination-sm">
					<li><a
						href="${contextPath}/simulation?page=${pageinfo.firstPage}">First</a></li>
					<li><a
						href="${contextPath}/simulation?page=${pageinfo.prePage}">Prev</a></li>
					<li><a
						href="${contextPath}/simulation?page=${pageinfo.nextPage}">Next</a></li>
					<li><a
						href="${contextPath}/simulation?page=${pageinfo.lastPage}">Last</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright
							&copy;MAXI TEAM3 2017</p>
					</div>
				</footer>
			</div>
		</div>
	</div>
</body>
</html>

