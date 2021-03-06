<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>X Ray Scatter Teaching Sheffield</title>
<#assign contextPath=request.getContextPath()>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/baguetteBox.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/thumbnail-gallery.css">
	<!--	<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/shop-item.css"> -->
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="${contextPath}/js/bootstrap.bundle.min.js"></script>
<script src="${contextPath}/js/baguetteBox.min.js"></script>
</head>
<body>
	<!-- Navigation -->
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
	<label>${outcomeerror!}</label>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<form action="${contextPath}/simulation">
					<button type="submit" class="btn btn-info btn-block btn-lg">Return
						to samples</button>
				</form>
		</div>
		<div class="col-md-4 column">
</div>
</div></div>
<div class="container">
	<div class="row clearfix">
	   <div class="tz-gallery">
			<#list outputlist as output>
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<a class="lightbox"
						href="${contextPath}/virtualinstrumentoutputimage?outputid=${output.outputId}">
						<img
						src="${contextPath}/virtualinstrumentoutputimage?outputid=${output.outputId}"
						alt="Oops,image missing">
					</a>
					<div class="caption">
						<h3>${output.outputDate!}</h3>
						<h3>${output.outputExposuretime!}</h3>
					</div>
				</div>
			</div>
			</#list>
		</div>
		</div></div>
	  
</div>
	<!-- Footer -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy; MAXI TEAM3 2017</p>
					</div>
					<!-- /.container -->
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
