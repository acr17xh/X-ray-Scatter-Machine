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
	href="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/css/demo.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
	integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
	crossorigin="anonymous"></script>
<script src="${contextPath}/js/jquery.hotspot.js"></script>
<style>
#step1box {
	border-radius: 25px;
	border: 2px solid #C0C0C0;
	padding: 20px;
}

#step2box {
	border-radius: 25px;
	border: 2px solid #C0C0C0;
	padding: 20px;
}

#step3box {
	border-radius: 25px;
	border: 2px solid #C0C0C0;
	padding: 20px;
}
</style>
<script
	src="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {

		$("img[id^=cameralength]").hide();
		$("p[id^=cl]").hide();
		$("#cameralength1").show();
		$("#l1").click(
				function(e) {
					e.preventDefault();
					$("img[id^=cameralength]").hide();
					$("#cameralength1").show();
					$("#cameralengthselect option:selected").removeAttr(
							"selected");
					$("#cameralengthselect option[value='1.09']").attr(
							"selected", "selected");

					$("p[id^=cl]").hide();
					$("#cl1").show();
				});
		$("#l2").click(
				function(e) {
					e.preventDefault();
					$("img[id^=cameralength]").hide();
					$("#cameralength2").show();
					$("#cameralengthselect option:selected").removeAttr(
							"selected");
					$("#cameralengthselect option[value='2.43']").attr(
							"selected", "selected");

					$("p[id^=cl]").hide();
					$("#cl2").show();
				});
		$("#l3").click(
				function(e) {
					e.preventDefault();
					$("img[id^=cameralength]").hide();
					$("#cameralength3").show();
					$("#cameralengthselect option:selected").removeAttr(
							"selected");
					$("#cameralengthselect option[value='3.71']").attr(
							"selected", "selected");

					$("p[id^=cl]").hide();
					$("#cl3").show();
				});
		$("#l4").click(
				function(e) {
					e.preventDefault();
					$("img[id^=cameralength]").hide();
					$("#cameralength4").show();
					$("#cameralengthselect option:selected").removeAttr(
							"selected");
					$("#cameralengthselect option[value='5.03']").attr(
							"selected", "selected");

					$("p[id^=cl]").hide();
					$("#cl4").show();
				});
		$("#l5").click(
				function(e) {
					e.preventDefault();
					$("img[id^=cameralength]").hide();
					$("#cameralength5").show();
					$("#cameralengthselect option:selected").removeAttr(
							"selected");
					$("#cameralengthselect option[value='6.33']").attr(
							"selected", "selected");

					$("p[id^=cl]").hide();
					$("#cl5").show();
				});

		$("img[id^=stage]").draggable(
				{
					scroll : true,
					snap : ".needdrag",
					stop : function() {
						var tempvalue = $(this).attr("name");
						$("#stageselect option[value='" + tempvalue + "']")
								.attr("selected", "selected");
						$("#step1form").submit();

					}
				})

	});
</script>
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
							<li class="active"><a href="${contextPath}/lecturenotes">Lecture
									Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>

	<!-- Section for stages, list and big instrument image -->
	<form id="step1form" method="post" role="form"
		action="${contextPath}/step1submit#availablesamples">
		<div class="container">
			<div class="row clearfix">
				<div class="row clearfix">
					<div class="col-md-1 column"></div>
					<div class="col-md-10 column">
						<div class="col-md-3 column"></div>
						<div class="col-md-1 column">
							<button type="button" class="btn btn-default btn-primary" id="l1">1.09</button>
						</div>
						<div class="col-md-1 column">
							<button type="button" class="btn btn-default btn-warning" id="l2">2.43</button>
						</div>
						<div class="col-md-1 column">
							<button type="button" class="btn btn-default btn-info" id="l3">3.71</button>
						</div>
						<div class="col-md-1 column">
							<button type="button" class="btn btn-default btn-success" id="l4">5.03</button>
						</div>
						<div class="col-md-1 column">
							<button type="button" class="btn btn-default btn-danger" id="l5">6.33</button>
						</div>
						<div class="col-md-1 column"></div>
						<div class="col-md-3 column"></div>
					</div>
				</div>
			</div>
			<hr>
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-12 column">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<div class="needdrag">
									<img alt="1200x300" style="width: 1400px; height: 300px"
										src="${contextPath}/imgs/xuess length 1.jpg"
										name="xuess length" id="cameralength1"
										class="img-responsive center-block img-rounded" /> <img
										alt="1200x300" style="width: 1400px; height: 300px"
										src="${contextPath}/imgs/xuess length 2.jpg"
										name="xuess length" id="cameralength2"
										class="img-responsive center-block img-rounded" /> <img
										alt="1200x300" style="width: 1400px; height: 300px"
										src="${contextPath}/imgs/xuess length 3.jpg"
										name="xuess length" id="cameralength3"
										class="img-responsive center-block  img-rounded" /> <img
										alt="1200x300" style="width: 1400px; height: 300px"
										src="${contextPath}/imgs/xuess length 4.jpg"
										name="xuess length" id="cameralength4"
										class="img-responsive center-block  img-rounded" /> <img
										alt="1200x300" style="width: 1400px; height: 300px"
										src="${contextPath}/imgs/xuess length 5.jpg"
										name="xuess length" id="cameralength5"
										class="img-responsive center-block  img-rounded" /> <span
										class="glyphicon glyphicon-question-sign" aria-hidden="true"></span><a
										id="step1desbutton" href="#step1des" role="button" class="btn"
										data-toggle="modal">STEP1</a>
									<div class="modal fade" id="step1des" role="dialog"
										aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">×</button>
													<h4 class="modal-title" id="myModalLabel">Step1</h4>
												</div>
												<div class="modal-body">
													<p class="text-info">STEP1: There will be 5 of these
														photos with different camera lengths. Please choose one of
														them, then choose a stage.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12 column">
								<p id="cl1">Description for cameralength 1</p>
								<p id="cl2">Description for cameralength 2</p>
								<p id="cl3">Description for cameralength 3 image 3~5 are the
									same because we got only 2 images</p>
								<p id="cl4">Description for cameralength 4</p>
								<p id="cl5">Description for cameralength 5</p>
							</div>
						</div>
					</div>
				</div>

				<div class="row clearfix">
					<div class="col-md-4 column"></div>
					<div class="col-md-4 column">
						<div class="form-group">
							<label>Choose a camera length:</label> <select
								class="form-control" id="cameralengthselect"
								name="cameralengthselect">
								<option value="1.09">1.09</option>
								<option value="2.43">2.43</option>
								<option value="3.71">3.71</option>
								<option value="5.03">5.03</option>
								<option value="6.33">6.33</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-md-4 column"></div>
				<hr>
			</div>

			<div class="row clearfix">
				<div class="col-md-5 column" id="step2box">
					<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
					<a id="step2desbutton" href="#step2des" role="button" class="btn"
						data-toggle="modal">STEP2</a>
					<div class="modal fade" id="step2des" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">Step2</h4>
								</div>
								<div class="modal-body">
									<p class="text-warning">STEP2: Please choose a stage for
										samples. Not all samples are compatible with each stage, so
										the options change. You can just drag a stage image then drop
										it on the instrument image to submit!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="sel1">Select list:</label> <select
							class="form-control" id="stageselect" name="stageselect">
							<option value="Thin film Stage">Thin film Stage</option>
							<option value="GIXS Stage">GIXS Stage</option>
							<option value="Flow through cell">Flow through cell</option>
							<option value="Capillary Lader">Capillary Ladder</option>
						</select>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<img alt="400x400" src="${contextPath}/imgs/Capillary Ladder.jpg"
								class="img-responsive center-block" id="stage1"
								name="Capillary Lader" />
							<p>
								<em>Capillary Ladder</em>
							</p>
						</div>

					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<img alt="400x400"
								src="${contextPath}/imgs/Flow through cell.jpg"
								class="img-responsive center-block" id="stage2"
								name="Flow through cell" />
							<p>
								<em>Flow through cell</em>
							</p>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<img alt="400x400" src="${contextPath}/imgs/GIXSSTAGE.jpg"
								class="img-responsive center-block" id="stage3"
								name="GIXS Stage" />
							<p>
								<em>GIXS Stage</em>
							</p>
						</div>
					</div>
					<div class="row clearfix">
						<div class="col-md-12 column">
							<img alt="400x400" src="${contextPath}/imgs/Thin film Stage.jpg"
								class="img-responsive center-block" id="stage4"
								name="Thin film Stage" />
							<p>
								<em>Thin film Stage</em>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-2 column">
					<hr style="width: 5px; height: 400px;"></hr>
				</div>
				<div class="col-md-5 column" id="step3box">
					<div class="row clearfix">
						<div class="col-md-4 column">
							<span class="glyphicon glyphicon-question-sign"
								aria-hidden="true"></span> <a id="step3desbutton"
								href="#step3des" role="button" class="btn" data-toggle="modal">STEP3</a>
							<div class="modal fade" id="step3des" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">×</button>
											<h4 class="modal-title" id="myModalLabel">Step3</h4>
										</div>
										<div class="modal-body">
											<p class="text-success">STEP3(optional): Instead of
												drag-and-drop, submit with your chosen camera length and
												stage, then see the available samples. Click the link on
												their title to move to further steps.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 column">
							<button type="submit" id="step1submit"
								class="btn btn-default btn-primary btn-info">Submit</button>
						</div>
						<div class="col-md-4 column"></div>

					</div>
					<ol id="availablesamples">
						<c:forEach items="${sampleslist}" var="sample">
							<li><a
								href="${contextPath}/step1tostep2?sampleId=${sample.sampleId}">${sample.sampleTil}
									, with camera length: ${sample.sampleCamlen}</a></li>
						</c:forEach>
					</ol>
				</div>

			</div>
		</div>
		</div>
	</form>
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
