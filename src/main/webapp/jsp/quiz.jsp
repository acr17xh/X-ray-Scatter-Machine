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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>X Ray Scatter Teaching Sheffield</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	var quizwrong;
	var quizcorrect;
	$(function() {
		$("#quizmessage").hide();
		$("#quizmessage2").hide();
		$("div[id^='q']").hide();
		$("input[name^='optionsRadios']").each(function() {
			var classname = $(this).attr("id") + "c";
			$("#"+classname).css('color', 'red')
			$("#"+classname).hide();
		});

		$("input[name^='optionsRadios']").click(function() {
			var classname2 = $(this).attr("id") + "c";
			$("#"+classname2).toggle();

		});

		$("#quizsubmit2").click(
				function(e) {
					e.preventDefault();
					$("input[name^='optionsRadios']").each(function() {
						var classname = $(this).attr("id") + "c";
						$("#"+classname).show();
					});
					var params = $("#quizid").serialize(); // 序列化表单
					// alert(params);
					$.ajax({
						type : "POST",
						url : '${contextPath}/quizsubmitajax',
						dataType : "json",
						async : false,
						// contentType : "application/json",
						data : params,
						success : function(msg) {
							quizcorrect = msg.quizcorrect;
							quizwrong = msg.quizwrong;
							if (quizcorrect == "" || quizcorrect == undefined
									|| quizcorrect == null) {
								$("#quizmessage2").hide();
								$("#quizmessage").show();
							} else if (quizwrong == ""
									|| quizwrong == undefined
									|| quizwrong == null) {
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
						<a class="navbar-brand" href="${contextPath}/home">Home</a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="${contextPath}/lecturenotes">Lecture
									Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li class="active"><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="text-center">
					<img src="${contextPath}/imgs/xuess%20length%201.jpg"
						 style="width:1200px;height: 300px">
					<h1 style="position: absolute;top: 100px;left: 400px;color: white">Welcome to Quiz module</h1>
					<h3 style="position: absolute;top: 160px;left: 430px;color: white">Try your best to get a good mark</h3>
				</div>
				<div class="row">
					<div class="col-xs-3" id="myScrollspy">
						<ul class="nav nav-tabs nav-stacked" data-spy="affix"
							data-offset-top="125">
							<li><a href="quiz#section-1">Question 1</a></li>
							<li><a href="${contextPath}/quiz#section-2">Question 2</a></li>
							<li><a href="${contextPath}/quiz#section-3">Question 3</a></li>
							<li><a href="${contextPath}/quiz#section-4">Question 4</a></li>
							<li><a href="${contextPath}/quiz#section-5">Question 5</a></li>
							<li><a href="${contextPath}/quiz#section-6">Question 6</a></li>
							<li><a href="${contextPath}/quiz#section-7">Question 7</a></li>
							<li><a href="${contextPath}/quiz#section-8">Question 8</a></li>
							<li><a href="${contextPath}/quiz#section-9">Question 9</a></li>
							<li><a href="${contextPath}/quiz#section-10">Question 10</a></li>
							<li><a href="${contextPath}/quiz#section-11">Question 11</a></li>
							<li><a href="${contextPath}/quiz#section-12">Submit And
									Get Answers</a></li>
						</ul>
					</div>

					<form id="quizid" method="post" role="form">
						<div class="col-xs-9">
							<h2 id="section-1">Question 1:</h2>
							<p>1) In SAXS is the X-ray beam collimated, divergent, or
								focused?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="A" checked id="q1a"> A.- collimated
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="B" id="q1b">B. -divergent
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios1"
									value="C" checked id="q1c"> C.- focused
								</label>
							</div>
							<a href="${contextPath}/lecturenotes#q1">Find answer in Lecturenote</a>
							<hr>


							<h2 id="section-2">Question 2:</h2>
							<p>2) What is the wavelength of X-rays used in SAXS
								experiments?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="A" checked id="q2a"> A.- Copper alpha (1.54Å)
								</label>
								<div id="q2ac">#Comment: Copper alpha radiation is
									commonly used, but any wavelength in the X-ray region can be
									used</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="B" id="q2b">B. - Any as long as it is
									monochromatic
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2"
									value="C" checked id="q2c"> C.- Any as long as it is
									polychromatic
								</label>
							</div>
							<a href="${contextPath}/lecturenotes#q1">Find answer in Lecturenote</a>
							<hr>

							<h2 id="section-3">Question 3:</h2>
							<p>13) For study of large objects i.e. colloid particles what
								camera length should be used?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="A" checked id="q3a"> A.- A short camera length
									(~1m)
								</label>
								<div id="q3ac">#Comment: A longer camera length would be
									better</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="B" id="q3b">B. - A long camera length (~5m)
								</label>
								<div id="q3bc"></div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3"
									value="C" checked id="q3c"> C.- It doesn’t matter
								</label>
								<div id="q3cc">#Comment: The scattering pattern must show
									some features to enable an accurate determination of size etc.</div>
							</div>
							<hr>

							<h2 id="section-4">Question 4:</h2>
							<p>4) For study of small nanoparticles (~10nm) what camera
								length should be used?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="A" checked id="q4a"> A.- A short camera length
									(~0.3m)
								</label>
								<div id="q4ac">#Comment: A longer camera length would be
									better</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="B" id="q4b">B. - An intermediate length (~1-3m)
								</label>
								<div id="q4bc">#Comment: Yes, generally an intermediate
									camera length would be best, but it depends on the size of the
									colloid particles, and the wavelength of radiation used.</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="C" checked id="q4c"> C.- A long camera length
									(~5m)
								</label>
								<div id="q4cc">#Comment: The scattering pattern may be
									featureless making parameters found by the fit unreliable</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios4"
									value="D" checked id="q4d"> D.- It doesn’t matter
								</label>
								<div id="q4dc">#Comment: The scattering pattern must show
									some features to enable an accurate determination of size etc.</div>
							</div>
							<hr>

							<h2 id="section-5">Question 5:</h2>
							<p>5) What exposure times result in the best model fits?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios5"
									value="A" checked id="q5a"> A.- Short times
								</label>
								<div id="q5ac">#Comment: No, there will be lots of noise
									in the data due to a low count of X-rays hitting the detector</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios5"
									value="B" id="q5b">B. - Long times
								</label>
								<div id="q5bc">#Comment: Yes, but there is a limit to how
									long you may want to wait</div>
							</div>
							<hr>

							<h2 id="section-6">Question 6:</h2>
							<p>6) What exposure times result in the best experiments?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios6"
									value="A" checked id="q6a"> A.- Short times
								</label>
								<div id="q6ac">#Comment: No, there will be lots of noise
									in the data due to a low count of X-rays hitting the detector</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios6"
									value="B" id="q6b">B. - Intermediate times
								</label>
								<div id="q6bc">#Comment: It is a balance of long exposures
									giving the best scattering patterns, and the need to run as
									many samples as possible</div>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios6"
									value="C" checked id="q6c"> C.- Long times
								</label>
								<div id="q6cc">#Comment: Yes, but there is a limit to how
									long you may want to wait</div>
							</div>
							<hr>

							<h2 id="section-7">Question 7:</h2>
							<p>7) What is the purpose of the X-ray flight tubes?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios7"
									value="A" checked id="q7a"> A.- To contain the X-rays,
									preventing users from being irradiated!
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios7"
									value="B" id="q7b">B. - To allow the flight path to be
									placed under vacuum preventing X-ray scattering by the
									atmosphere
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios7"
									value="C" checked id="q7c"> C.- To direct the X-rays
									into the sample chamber and to the detector
								</label>
								<div id="q7cc">#Comment: The path of the X-ray beam it
									controlled by a mirror in the source and the slits</div>
							</div>
							<a href="${contextPath}/lecturenotes#q7">Find answer in Lecturenote</a>
							<hr>

							<h2 id="section-8">Question 8:</h2>
							<p>8) Why is the sample contained inside a sealed box?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios8"
									value="A" checked id="q8a"> A.- To prevent x-rays from
									escaping and irradiating users!
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios8"
									value="B" id="q8b">B. - So that the sample can be
									placed under vacuum minimising atmospheric scattering
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios8"
									value="C" checked id="q8c"> C.- To contain volatile or
									toxic samples
								</label>
								<div id="q8cc">#Comment: Not really, but it is a useful
									secondary purpose</div>
							</div>
							<a href="${contextPath}/lecturenotes#q8">Find answer in Lecturenote</a>
							<hr>

							<h2 id="section-9">Question 9:</h2>
							<p>9) Why aren’t there any slits after the sample
								compartment?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios9"
									value="A" checked id="q9a"> A.- Because there is no
									need
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios9"
									value="B" id="q9b">B. - Because they would block the
									path of the X-ray beam
								</label>
							</div>
							<a href="${contextPath}/lecturenotes#q9">Find answer in Lecturenote</a>
							<hr>

							<h2 id="section-10">Question 10:</h2>
							<p>10) Why is the flight tube after the sample compartment
								bigger than the tube before?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios10"
									value="A" checked id="q10a"> A.- To allow the scattered
									X-rays to hit all parts the detector without blocking the path
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios10"
									value="B" id="q10b">B. - Because there is no need to
									have any slits after the sample
								</label>
							</div>
							<a href="${contextPath}/lecturenotes#q7">Find answer in Lecturenote</a>
							<hr>


							<h2 id="section-11">Question 11:</h2>
							<p>11) Why is the scattering pattern normally reduce from
								2-dimensional to 1-dimensional for analysis?</p>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios11"
									value="A" checked id="q11a"> A.- It is easier to view
									the scattering pattern in a 2D graph
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios11"
									value="B" id="q11b">B. - It is easier to fit with a
									model
								</label>
								<div id="q11bc">#Comment: Maybe … although 2D data
									could also be fitted</div>
							</div>
							<hr>

							<h2 id="section-12">Submit And Get Answers</h2>
							<div class="form-group">
								<div class="alert alert-dismissable alert-success"
									id="quizmessage">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<strong>You have wrong answers. Correct answers are A,
										A, B, B, B, B, A or B, A or B, A or B, A, A or B. </strong>
								</div>
								<div class="alert alert-dismissable alert-success"
									id="quizmessage2">
									<button type="button" class="close" data-dismiss="alert"
										aria-hidden="true">×</button>
									<strong>All correct.</strong>
								</div>
							</div>
							<div class="form-group">
								<%--@declare id="name"--%><label class="sr-only" for="name">Name</label> <input
									type="text" class="form-control" id="quizName" name="quizName"
									placeholder="Please enter your name">
							</div>
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
