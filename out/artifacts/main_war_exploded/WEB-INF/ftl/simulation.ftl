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
<title>Simulation</title> <#assign contextPath=request.getContextPath()>
<!--<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  -->
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script src="${contextPath}/js/shop-item.css"></script>
<script src="${contextPath}/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
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
						<a class="navbar-brand" href="home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="lecturenotes">Lecture Notes</a></li>
							<li><a href="tovirtuallab">VitualLab</a></li>
							<li><a href="displaynotifs">Notification</a></li>
							<li><a href="quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>


	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">SAMPLE LIST</h1>
				<ul class="nav nav-tabs nav-stacked" data-spy="affix"
					data-offset-top="125">
					<li><#list samplelist as samples> <a
						href="simulation?page=${thispage}#${samples.sampleId}"
						class="list-group-item">${samples.sampleTil}</a> </#list>
					</li>
				</ul>
			</div>
			<!-- sample item -->
			<div class="col-lg-9">
				<label>${outcomeerror!}</label> <#list samplelist as samples2>
				<div class="card mt-4">
					<img class="card-img-top img-fluid"
						src="${contextPath}/simulation/showimgs?imgid=${samples2.sampleId}"
						alt="Ooops,image missing!">
					<div class="card-body" id=${samples2.sampleId?string}>
						<h3 class="card-title">${samples2.sampleTil}</h3>
						<p class="card-text">${samples2.sampleDes}</p>
					</div>
				</div>
				<!-- /.card -->
				<div class="card card-outline-secondary my-4">
					<div class="card-header">Sample ID: ${samples2.sampleId}</div>
					<div class="card-body">
						<small class="text-muted">${samples2.sampleDate}</small>
						<hr>
						<a href="${contextPath}/viewoutcome?sampleId=${samples2.sampleId}"
							class="btn btn-success">View outputs</a>
						<hr>
					</div>
				</div>
				<!-- /.card -->
				</#list>
				<ul class="pagination pagination-sm">
					<li><a href="simulation?page=${pageinfo.firstPage}">First</a></li>
					<li><a href="simulation?page=${pageinfo.prePage}">Prev</a></li>
					<li><a href="simulation?page=${pageinfo.nextPage}">Next</a></li>
					<li><a href="simulation?page=${pageinfo.lastPage}">Last</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- Footer -->
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
