<%@ page language="java" import="java.util.*" isELIgnored="false"
	pageEncoding="UTF-8"%>
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

<!-- Bootstrap core CSS-->
<link href="${contextPath}/js/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Page level plugin CSS-->
<link
	href="${contextPath}/js/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/fileinput.min.css">
<!-- Custom fonts for this template-->
<link
	href="${contextPath}/js/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="${contextPath}/js/css/sb-admin.css" rel="stylesheet">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/fileinput.min.js"></script>
<script type="text/javascript">
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
			allowedFileExtensions : [ "jpg,png" ]
		});
	});
</script>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<a class="navbar-brand" href="#">X-Ray Scatter Machine Teaching</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Dashboard"><a class="nav-link"
					href="${contextPath}/user/toquizstatistics"> <i
						class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Quiz
							statistics</span>
				</a></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Charts"><a class="nav-link nav-link-collapse collapsed"
					data-toggle="collapse" href="#collapseNotifications"
					data-parent="#exampleAccordion"> <i class="fa fa-fw fa-wrench"></i>
						<span class="nav-link-text">Notifications</span>
				</a>
					<ul class="sidenav-second-level collapse"
						id="collapseNotifications">
						<li><a href="${contextPath}/user/tonotifications">View
								notifications</a></li>
						<li><a href="${contextPath}/user/toaddnotification">Add
								notification</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseSamples" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-sitemap"></i> <span class="nav-link-text">Samples</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseSamples">
						<li><a href="${contextPath}/user/toaddsample">Add sample
								then attach outputs</a></li>
						<li><a href="${contextPath}/user/tosamples">Show existing
								samples</a></li>
					</ul></li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right"
					title="Components"><a
					class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseLecturenotes" data-parent="#exampleAccordion"> <i
						class="fa fa-fw fa-file"></i> <span class="nav-link-text">Lecture
							notes</span>
				</a>
					<ul class="sidenav-second-level collapse" id="collapseLecturenotes">
						<li><a href="${contextPath}/user/toaddlecturenotes">Add
								compressed file as lecture notes</a></li>
						<li><a href="${contextPath}/user/tofiles">Show existing
								files</a></li>
					</ul></li>
			</ul>
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item"><a class="nav-link text-center"
					id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
				</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" data-toggle="modal"
					data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Return
				</a></li>
			</ul>
		</div>
	</nav>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="${contextPath}/user/todashboard">Dashboard</a></li>
				<li class="breadcrumb-item active">Add outputs</li>
			</ol>
			<!-- Example DataTables Card-->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> Add outputs
				</div>
				<div class="card-body">
					<div class="row clearfix">
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
			</div>
		</div>


		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
			<div class="container">
				<div class="text-center">
					<small>Copyright © MAXI TEAM3 2017</small>
				</div>
			</div>
		</footer>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Return" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="${contextPath}/user/returnhome">Return</a>
					</div>
				</div>
			</div>
		</div>


		<script
			src="${contextPath}/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script
			src="${contextPath}/js/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="${contextPath}/js/js/sb-admin.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="${contextPath}/js/vendor/datatables/jquery.dataTables.js"></script>
		<script
			src="${contextPath}/js/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for this page-->
		<script src="${contextPath}/js/sb-admin-datatables.min.js"></script>
	</div>
</body>

</html>

