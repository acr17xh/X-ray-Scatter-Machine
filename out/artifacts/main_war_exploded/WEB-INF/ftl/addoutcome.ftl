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
<script src="${contextPath}/js/summernote.js"></script>
<script src="${contextPath}/js/summernote-uk-UA.js"></script>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/summernote.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/font-awesome.min.css">

<!-- <link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
	<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css"
	rel="stylesheet">-->

</head>
<script type="text/javascript">
	$(function() {
		$('div.summernote').each(function() {
			var $this = $(this);
			var placeholder = $this.attr("placeholder") || '';
			var url = $this.attr("action") || '';
			$this.summernote({
				lang : 'en-US',
				placeholder : placeholder,
				minHeight : 300,
				dialogsFade : true, // Add fade effect on dialogs
				dialogsInBody : true, // Dialogs can be placed in body, not in
				// summernote.
				disableDragAndDrop : false, // default false You can disable drag
			// and drop
			});
		});
	});
</script>
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
				<div class="summernote" name="addoutputmodule"
					placeholder="Please write text"
					action="${contextPath}/user/addoutputimgs"></div>
			</div>
		</div>
	</div>
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
