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
<#assign contextPath=request.getContextPath()> <!--<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  -->
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/fileinput.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="${contextPath}/js/bootstrap.min.js"></script> <script
	src="${contextPath}/js/shop-item.css"></script> <script
	src="${contextPath}/js/bootstrap.bundle.min.js"></script> <script
	src="${contextPath}/js/fileinput.min.js"></script> <script
	type="text/javascript">
	$(function() {
		$("#fileinput3").fileinput({
			uploadUrl : '${contextPath}/user/addoutput2',
			uploadAsync : true,
			showPreview : true,
			maxImageWidth : 1920,
			maxImageHeight : 1080,
			resizeImage : true,
			maxFilePreviewSize : 30720,
			maxFileSize : 30720,
			maxFileCount : 3,
			allowedFileExtensions : [ "jpg","png" ]
		});
	});
</script>
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
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form action="${contextPath}/user/tosamples">
					<button type="submit" class="btn btn-default btn-info">Return
						to dashboard</button>
				</form>
			</div>
			<div class="col-md-12 column">
				<label>Please upload images with the same exposure time, each with a specific title (For
								example:Si Particles 10nm 1sec.png, Si Particles 10nm 1sec
								1D.png, Si Particles 10nm 1sec 1D fit.png). Upload up to 3
								images each time,each limited in 30MB, '.jpg', '.png' are
								allowed. If the titles are wrong, the images cannot be shown in
								virtual instrument module</label>
				<div class="file-loading">
					<input id="fileinput3" name="fileinput3[]" type="file" multiple>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<footer class="py-5 bg-dark">
					<div class="container">
						<p class="m-0 text-center text-white">Copyright &copy; MAXI
							TEAM3 2017</p>
					</div>
					<!-- /.container -->
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
