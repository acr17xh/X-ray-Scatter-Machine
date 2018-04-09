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
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script
	src="${contextPath}/js/bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
#step4box {
	border-radius: 25px;
	border: 2px solid #C0C0C0;
	padding: 20px;
}

#step5box {
	border-radius: 25px;
	border: 2px solid #C0C0C0;
	padding: 20px;
}
</style>
<script type="text/javascript">
	$(function() {
		$("img[id^=cameralength]").hide();
		$("#cameralength1").show();
		$("#l1").click(function(e) {
			e.preventDefault();
			$("img[id^=cameralength]").hide();
			$("#cameralength1").show();
		});
		$("#l2").click(function(e) {
			e.preventDefault();
			$("img[id^=cameralength]").hide();
			$("#cameralength2").show();
		});
		$("#l3").click(function(e) {
			e.preventDefault();
			$("img[id^=cameralength]").hide();
			$("#cameralength3").show();
		});
		$("#l4").click(function(e) {
			e.preventDefault();
			$("img[id^=cameralength]").hide();
			$("#cameralength4").show();
		});
		$("#l5").click(function(e) {
			e.preventDefault();
			$("img[id^=cameralength]").hide();
			$("#cameralength5").show();
		});

		$("img[id^=vi]").hide();
		$("#vi1").show();

		$("#acquiredata").click(function(e) {
			$("#vi3").hide();
			$("#vi2").hide();

		});
		$("#2dto1d").click(function(e) {
			e.preventDefault();
			$("#vi3").hide();
			$("#vi2").show();
		});
		$("#fitdata").click(function(e) {
			e.preventDefault();
			$("#vi2").hide();
			$("#vi3").show();
		});

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

	<div class="container">
		<div class="row clearfix">
			<div class="container">
				<div class="row clearfix">
					<div class="col-md-1 column"></div>
					<div class="col-md-10 column">
						<div class="col-md-4 column">
							<form action="${contextPath}/tovirtualinstrument">
								<button type="submit" class="btn btn-default btn-block">Return
									to virtual instrument</button>
							</form>
						</div>
						<div class="col-md-1 column"></div>
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
									class="img-responsive center-block  img-rounded" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 column"></div>
				<hr>
			</div>

			<div class="container">
				<div class="row clearfix">
					<div class="col-md-6 column" id="step4box">
						<div class="row clearfix">
							<div class="col-md-4 column">
								<ul>
									<li><h6>Sample name:</h6> ${tsample.sampleTil}</li>
									<li><h6>Sample id:</h6> ${tsample.sampleId}</li>
									<li><h6>Date:</h6> ${tsample.sampleDate}</li>
									<li><h6>Stage:</h6> ${tsample.sampleStage}</li>
									<li><h6>Camera length:</h6> ${tsample.sampleCamlen}</li>
									<li><h6>Wavelength:</h6> 1.34 A</li>
								</ul>
								<form
									action="${contextPath}/step2submit?sampleId=${tsample.sampleId}#acquiredataform"
									method="post" id="acquiredataform">
									<div class="row clearfix">
										<div class="col-md-10 column">
											<c:if test="${timelist!=null}">
												<span class="glyphicon glyphicon-question-sign"
													aria-hidden="true"></span>
												<a id="step4desbutton" href="#step4des" role="button"
													class="btn" data-toggle="modal">STEP4</a>
												<div class="modal fade" id="step4des" role="dialog"
													aria-labelledby="myModalLabel" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">×</button>
																<h4 class="modal-title" id="myModalLabel">Step4</h4>
															</div>
															<div class="modal-body">
																<p class="text-success">STEP4: Choose an available
																	exposure time then acquire data.</p>
															</div>
														</div>
													</div>
												</div>

												<select class="form-control" id="exposuretimeselect"
													name="exposuretimeselect">
													<c:forEach items="${timelist}" var="exposuretime">
														<option value="${exposuretime}">${exposuretime}</option>
													</c:forEach>
												</select>
											</c:if>
											<c:if test="${timelist==null}">
												<label>No available images.</label>
											</c:if>
										</div>
										<div class="col-md-2 column">
											<button type="submit" id="acquiredata"
												class="btn btn-default btn-primary btn-info">Acquire
												Data</button>
										</div>
									</div>
								</form>
							</div>
							<div class="col-md-8 column">
								<c:if test="${outputslist!=null}">
									<img alt="600x600"
										src="${contextPath}/virtualinstrumentoutputimage?outputid=${outputslist.get(0).getOutputId()}"
										class="img-responsive center-block" id="vi1" />
								</c:if>
							</div>
						</div>
					</div>
					<div class="col-md-6 column" id="step5box">
						<div class="row clearfix">
							<div class="col-md-4 column">
								<ul>
									<li><h6>Description:</h6> ${tsample.sampleDes}</li>
								</ul>
								<span class="glyphicon glyphicon-question-sign"
									aria-hidden="true"></span> <a id="step5desbutton"
									href="#step5des" role="button" class="btn" data-toggle="modal">STEP5</a>
								<div class="modal fade" id="step5des" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">×</button>
												<h4 class="modal-title" id="myModalLabel">Step3</h4>
											</div>
											<div class="modal-body">
												<p class="text-success">STEP5: Click '2D to 1D' or 'Fit
													Data' to see graphs.</p>
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-6 column">
										<button type="button" class="btn btn-default btn-success"
											id="2dto1d">2D to 1D</button>
									</div>
									<div class="col-md-6 column">
										<button type="button" class="btn btn-default btn-warning"
											id="fitdata">Fit Data</button>
									</div>
								</div>
							</div>
							<div class="col-md-8 column">
								<c:if test="${outputslist!=null}">
									<img alt="600x600"
										src="${contextPath}/virtualinstrumentoutputimage?outputid=${outputslist.get(1).getOutputId()}"
										class="img-responsive center-block" id="vi2" />
									<img alt="600x600"
										src="${contextPath}/virtualinstrumentoutputimage?outputid=${outputslist.get(2).getOutputId()}"
										class="img-responsive center-block" id="vi3" />
								</c:if>
							</div>
						</div>
					</div>
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
				</footer>
			</div>
		</div>
	</div>
</body>
</html>
