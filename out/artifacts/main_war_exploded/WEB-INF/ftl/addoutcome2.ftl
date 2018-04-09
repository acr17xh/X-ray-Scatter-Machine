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
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info" id="addsamplecase">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>Add outcome</h4>
					<p>You can upload outcome pictures in multiple times, meanwhile
						you can add description or not.</p>
				</div>
				<form class="form-horizontal" action="${contextPath}/user/addoutput"
					enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label for="inputoutputdes" class="col-sm-2 control-label">Outcome
							description</label>
						<div class="col-sm-10">
							<input class="form-control" id="inputoutputdes" type="text"
								name="outputdes" style="height:100px;width:500px" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<table>
								<tr>
									<td>Please choose an outcome image, in .jpg format</td>
								</tr>
								<tr>
									<td><input type="file" name="outputfile"></td>
								</tr>
								<tr>
									<td><br></td>
								</tr>

							</table>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="submit" value="Add output"
								class="btn btn-default btn-success">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
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
