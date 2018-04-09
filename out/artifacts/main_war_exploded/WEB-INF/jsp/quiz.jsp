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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Quiz</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!--  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<!--  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>-->

<script type="text/javascript">
	var quizwrong;
	var quizcorrect;
	$(function() {
		$("#quizmessage").hide();
		$("#quizmessage2").hide();
		$("#quizsubmit2").click(function(e) {
			e.preventDefault();
			var params = $("#quizid").serialize(); // 序列化表单
			// alert(params);
			$.ajax({
				type : "POST",
				url : '${contextpath}quizsubmitajax',
				dataType : "json",
				async : false,
				// contentType : "application/json",
				data : params,
				success : function(msg) {
					quizcorrect = msg.quizcorrect;
					quizwrong = msg.quizwrong;
					if (quizcorrect == "" || quizcorrect == undefined || quizcorrect == null) {
						$("#quizmessage2").hide();
						$("#quizmessage").show();
					} else if (quizwrong == "" || quizwrong == undefined || quizwrong == null) {
						$("#quizmessage").hide();
						$("#quizmessage2").show();
					}
					alert('Submitted! ' + msg.finish);
				}
			});

		});
	});
</script>
</head>
<body data-spy="scroll" data-target="#myScrollspy">
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
			<div class="col-md-12 column">
				<div class="jumbotron">
					<h1>Bootstrap Affix</h1>
				</div>
				<div class="row">
					<div class="col-xs-3" id="myScrollspy">
						<ul class="nav nav-tabs nav-stacked" data-spy="affix"
							data-offset-top="125">
							<li class="active"><a href="quiz#section-1">1</a></li>
							<li><a href="quiz#section-2">2</a></li>
							<li><a href="quiz#section-3">3</a></li>
							<li><a href="quiz#section-4">4</a></li>
							<li><a href="quiz#section-5">5</a></li>
							<li><a href="quiz#section-6">Submit And Get Answers</a></li>
						</ul>
					</div>
					<!-- <form id="quizid" method="post" role="form"
				action="${pageContext.request.contextPath}/quizsubmit"> -->
					<form id="quizid" method="post" role="form">
						<div class="col-xs-9">
							<h2 id="section-1">1</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
								metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum
								id metus ac nisl bibendum scelerisque non non purus. Suspendisse
								varius nibh non aliquet sagittis. In tincidunt orci sit amet
								elementum vestibulum. Vivamus fermentum in arcu in aliquam.
								Quisque aliquam porta odio in fringilla. Vivamus nisl leo,
								blandit at bibendum eu, tristique eget risus. Integer aliquet
								quam ut elit suscipit, id interdum neque porttitor. Integer
								faucibus ligula.</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="option1" checked> A
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="option2">B
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="option3" checked> C
								</label>
							</div>
							<hr>
							<h2 id="section-2">2</h2>
							<p>Nullam hendrerit justo non leo aliquet imperdiet. Etiam in
								sagittis lectus. Suspendisse ultrices placerat accumsan. Mauris
								quis dapibus orci. In dapibus velit blandit pharetra tincidunt.
								Quisque non sapien nec lacus condimentum facilisis ut iaculis
								enim. Sed viverra interdum bibendum. Donec ac sollicitudin
								dolor. Sed fringilla vitae lacus at rutrum. Phasellus congue
								vestibulum ligula sed consequat.</p>

							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="option1" checked> A
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="option2">B
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="option3" checked> C
								</label>
							</div>
							<hr>
							<h2 id="section-3">3</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
								metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum
								id metus ac nisl bibendum scelerisque non non purus. Suspendisse
								varius nibh non aliquet sagittis. In tincidunt orci sit amet
								elementum vestibulum. Vivamus fermentum in arcu in aliquam.
								Quisque aliquam porta odio in fringilla. Vivamus nisl leo,
								blandit at bibendum eu, tristique eget risus. Integer aliquet
								quam ut elit suscipit, id interdum neque porttitor. Integer
								faucibus ligula.</p>

							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="option1" checked> A
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="option2">B
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="option3" checked> C
								</label>
							</div>
							<hr>
							<h2 id="section-4">4</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
								metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum
								id metus ac nisl bibendum scelerisque non non purus. Suspendisse
								varius nibh non aliquet sagittis. In tincidunt orci sit amet
								elementum vestibulum. Vivamus fermentum in arcu in aliquam.
								Quisque aliquam porta odio in fringilla. Vivamus nisl leo,
								blandit at bibendum eu, tristique eget risus. Integer aliquet
								quam ut elit suscipit, id interdum neque porttitor. Integer
								faucibus ligula.</p>

							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="option1">A
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="option2">b
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="option3" checked> c
								</label>
							</div>
							<hr>
							<h2 id="section-5">5</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam eu sem tempor, varius quam at, luctus dui. Mauris magna
								metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum
								id metus ac nisl bibendum scelerisque non non purus. Suspendisse
								varius nibh non aliquet sagittis. In tincidunt orci sit amet
								elementum vestibulum. Vivamus fermentum in arcu in aliquam.
								Quisque aliquam porta odio in fringilla. Vivamus nisl leo,
								blandit at bibendum eu, tristique eget risus. Integer aliquet
								quam ut elit suscipit, id interdum neque porttitor. Integer
								faucibus ligula.</p>

							<div class="radio">
								<label> <input type="radio" name="optionsRadios5"
									value="option1" checked> A
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios5"
									value="option2">B
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios5"
									value="option3" checked> C
								</label>
							</div>
							<hr>
							<h2 id="section-6">Submit And Get Answers</h2>
							<div class="form-group">
								<div class="alert alert-dismissable alert-success"
									id="quizmessage">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<strong>You have wrong answers. Correct answers are A,
										B, C, B, A. </strong>
								</div>
								<div class="alert alert-dismissable alert-success"
									id="quizmessage2">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<strong>All correct.</strong>
								</div>
							</div>
							<div class="form-group">
								<label class="sr-only" for="name">Name</label> <input
									type="text" class="form-control" id="quizName" name="quizName"
									placeholder="Please enter your name">
							</div>
							<!--  	<button type="submit" id="quizsubmit"
						class="btn btn-default btn-info">Submit</button>-->
							<div class="form-group">
								<button type="submit" id="quizsubmit2"
									class="btn btn-default btn-info">Submit</button>
							</div>
						</div>
					</form>
				</div>
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
