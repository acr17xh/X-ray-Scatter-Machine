
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
<title>X Ray Scatter Teaching Sheffield</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- <link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
	//禁用各种刷新 
	$(document).ready(function() {
		//禁用右键 
		$(document).bind("contextmenu", function(e) {
			return false;
		});

		$(document).bind("keydown", function(e) {
			e = window.event || e;
			if (e.keyCode == 116) //禁用F5
			{
				return false;
			}
			if (e.ctrlKey && e.keyCode == 82)// 禁用ctrl+R刷新 
			{
				return false;
			}

		});
	});//禁用刷新结束
</script>
</head>
<body>
	<%
		SessionCounter counter = (SessionCounter) session.getAttribute(SessionCounter.COUNTER);
	%>
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
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<label>Number of visitors recently: <%=counter.getActiveSessionNumber()%></label>
				<label>${usernameError}</label><label>${userpasswordError}</label> <label>${errorindb}</label><label>${notlogin}</label><label>${logoutmessage}</label>
				<div class="carousel slide" id="carousel-443871">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-443871"></li>
						<li data-slide-to="1" data-target="#carousel-443871"></li>
						<li data-slide-to="2" data-target="#carousel-443871"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt=""
								src="https://ehschem.files.wordpress.com/2016/09/chemistry-peels.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="https://ehschem.files.wordpress.com/2016/09/chemistry-peels.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="https://ehschem.files.wordpress.com/2016/09/chemistry-peels.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-443871"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-443871"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
				<hr>
				<div class="jumbotron">
					<h1>Hello, world!</h1>
					<p>This is a template for a simple marketing or informational
						website. It includes a large callout called the hero unit and
						three supporting pieces of content. Use it as a starting point to
						create something more unique.</p>
					<p>
						<a class="btn btn-primary btn-large"
							href="${contextPath}/lecturenotes">Learn more</a>
					</p>
				</div>
				<hr>
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
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
