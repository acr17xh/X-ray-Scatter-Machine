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
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Teacher User</title>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!--  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<!--  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>-->

<script type="text/javascript">
	$(function() {
		$("#delfail").hide();
		$("#delsuc").hide();
		$("#deletequizbydate").click(function(e) {
			e.preventDefault();
			var params = $("#deletequizbydateform").serialize();
			$.ajax({
				type : "POST",
				url : '${contextpath}user/deletequizstatistics2',
				dataType : "json",
				async : false,
				// contentType : "application/json",
				data : params,
				success : function(msg) {
					var delfail = msg.delfail;
					var delsuc = msg.delsuc;
					if (delfail == "" || delfail == undefined || delfail == null) {
						$("#delfail").hide();
						$("#delsuc").show();
					} else if (delsuc == "" || delsuc == undefined || delsuc == null) {
						$("#delsuc").hide();
						$("#delfail").show();
					}
				}
			});

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
				<h2>Welcome,${sessionScope.username}!</h2>
			</div>
			<form action="user/returnhome">
				<div class="col-md-6 column">
					<button type="submit" class="btn btn-default btn-info">Return
						to home page</button>
					<p></p>
				</div>
			</form>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a
					href="${contextPath}/user/getallnotifs#viewnotifications">View
						notifications</a></li>
				<li><a href="${contextPath}/user/getallnotifs#addnotification">Add
						notification</a></li>
				<li><a
					href="${contextPath}/user/getallnotifs#uploadlecturenotes">Upload
						lecture notes in RAR format</a></li>
				<li><a href="${contextPath}/user/getallnotifs#addsamplecase">
						Add sample case</a></li>
				<li><a href="${contextPath}/user/getallnotifs#quizstatistics">Quiz
						statistics</a></li>

			</ul>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info"
					id="viewnotifications">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>View notifications</h4>
					To delete notification, please choose at least one checkbox. <strong>Meanwhile</strong>
					The system remembers your username and password for 60 minutes,if
					you choose 'Remember you' in home page.
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form action="user/deletenotif">
					<table class="table table-hover table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Date</th>
								<th>Notification</th>
								<th>Check to delete</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${notifs}" var="notif">
								<tr>
									<td>${notif.notificationid}</td>
									<td>${notif.notificationdate}</td>
									<td>${notif.notification}</td>
									<td><input type="checkbox" name="deleteboxes"
										value="${notif.notificationid}" /></td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
					<button type="submit" class="btn btn-default btn-danger">Delete</button>
					<label>${delsuccess}</label>
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-6 column"></div>
			<div class="col-md-6 column">
				<ul class="pagination">
					<li><a href="user/getallnotifs?page=${pageinfo.firstPage}#viewnotifications">First</a></li>
					<li><a href="user/getallnotifs?page=${pageinfo.prePage}#viewnotifications">Previous</a></li>
					<li><a href="user/getallnotifs?page=${pageinfo.nextPage}#viewnotifications">Next</a></li>
					<li><a href="user/getallnotifs?page=${pageinfo.lastPage}#viewnotifications">Last</a></li>

				</ul>
			</div>
		</div>

	</div>
	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info" id="addnotification">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>Add Notification</h4>
					<strong>Please </strong>use Google Chrome to choose date in HTML5
					datetimepicker. If not, please enter date like "2017-11-11".
					Notification should be less than 140 characters.
				</div>
				<form class="form-horizontal" role="form" action="user/addnotif">
					<div class="form-group">
						<label for="inputdate" class="col-sm-2 control-label">Date</label>
						<div class="col-sm-10">
							<input type="date" name="notificationdate" />
							<div>${dateerror}</div>
							<div>${notificationdateError}</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputnotification3" class="col-sm-2 control-label">Notification</label>
						<div class="col-sm-10">
							<input class="form-control" id="inputnotification" type="text"
								name="notification" style="height:100px;width:500px" />
							<div>${notificationError}</div>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default btn-success">Add</button>
							<label>${addsuccess}</label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info"
					id="uploadlecturenotes">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>Upload lecture notes in RAR format</h4>
					<strong>Please </strong>upload lecture notes in a WINRAR file,
					limited within 1 GB.
				</div>
				<form class="form-inline" action="user/uploadnotes"
					enctype="multipart/form-data" method="post">
					<div class="form-group">
						<table>
							<tr>
								<td>Please choose file</td>
							</tr>
							<tr>
								<td><input type="file" name="file"></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>

						</table>
					</div>
					<div class="form-group">
						<input type="submit" value="Submit"
							class="btn btn-default btn-success form-control"> <label>${newfilename}
							${uploadsuccess}</label>
					</div>
				</form>
				<form class="form-inline" action="user/displayfiles" method="post">
					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-primary form-control">Show
							existing files</button>
						<label>${delsuccess2}</label>
					</div>
				</form>
			</div>
		</div>
	</div>

	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info" id="addsamplecase">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>Add sample case</h4>
					<p>Add title, one picture and some descriotion for one sample
						case. Please upload jpg images.</p>
				</div>

				<form class="form-horizontal" action="user/addsample"
					enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label for="inputsampletitle" class="col-sm-2 control-label">Title</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" name="sampletitle"
								style="height:30px;width:300px" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputsampledes" class="col-sm-2 control-label">Description</label>
						<div class="col-sm-10">
							<input class="form-control" id="inputsampledes" type="text"
								name="sampledes" style="height:100px;width:500px" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<table>
								<tr>
									<td>Please choose sample image, in .jpg format</td>
								</tr>
								<tr>
									<td><input type="file" name="samplefile"></td>
								</tr>
								<tr>
									<td><br></td>
								</tr>

							</table>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10">
							<input type="submit" value="Add sample"
								class="btn btn-default btn-success"><label>${uploadsamplesuccess}</label>
						</div>
					</div>
				</form>
				<form class="form-inline" action="user/displaysamples" method="post">
					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-primary form-control">Show
							existing samples</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info" id="quizstatistics">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<h4>Quiz statistics</h4>
					Students who have completed the quiz, and the dates. If not using
					Google Chrome, please enter date like "2017-11-12".
				</div>
				<!-- <form role="form" class="form-inline"
					action="user/deletequizstatistics" method="post"
					id="deletequizbydate"> -->
				<form role="form" class="form-inline" method="post"
					id="deletequizbydateform">
					<div class="form-group">
						<label for="deletequizstatisticsdate" class="control-label">Delete
							before chosen date</label> <input class="form-control" type="date"
							name="deletequizdate" />
					</div>
					<div class="form-group">
						<button type="submit"
							class="btn btn-default btn-danger form-control"
							id="deletequizbydate">Delete</button>
						<label id=delsuc>Successfully delete! Please refresh to
							view new data.</label><label id=delfail>Statistics already
							deleted. Please refresh to view new data.</label>
					</div>
					<p></p>
				</form>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>Date</th>
							<th>Name</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${quizstatistics}" var="quizstatistics">
							<tr>
								<td>${quizstatistics.quizDate}</td>
								<td>${quizstatistics.quizName}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<hr>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a
							href="${contextPath}/user/getallnotifs#viewnotifications">View
								notifications</a></li>
						<li><a
							href="${contextPath}/user/getallnotifs#addnotification">Add
								notification</a></li>
						<li><a
							href="${contextPath}/user/getallnotifs#uploadlecturenotes">Upload
								lecture notes in RAR format</a></li>
						<li><a href="${contextPath}/user/getallnotifs#addsamplecase">
								Add sample case</a></li>
						<li><a href="${contextPath}/user/getallnotifs#quizstatistics">Quiz
								statistics</a></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2017</p>
		</div>
	</footer>
</body>
</html>

