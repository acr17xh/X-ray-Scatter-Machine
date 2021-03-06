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
<link rel="stylesheet" type="text/css"
	href="${contextPath}/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!--  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<!--  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>-->
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
							<li><a href="${contextPath}/lecturenotes">Lecture Notes</a></li>
							<li><a href="${contextPath}/tovirtuallab">VitualLab</a></li>
							<li><a href="${contextPath}/displaynotifs">Notification</a></li>
							<li><a href="${contextPath}/quiz">Quiz</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form action="${contextPath}/user/deleteuser">
					<table class="table table-hover table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Password</th>
								<th>Email</th>
								<th>Check to delete</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach items="${users}" var="user">
								<tr>
									<td>${user.userid}</td>
									<td>${user.username}</td>
									<td>${user.userpassword}</td>
									<td>${user.useremail}</td>
									<td><input type="checkbox" name="deleteboxes"
										value="${user.userid}" /></td>
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
			<div class="col-md-12 column">
				<p class="text-info">
					To delete user, please choose at least one checkbox. <strong>Meanwhile</strong>
					The system will remember you for 60 minutes,if you choose 'Remember
					you' in home page.
				</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row clearfix">
			<form action="${contextPath}/user/returnhome">
				<div class="col-md-4 column">
					<button type="submit" class="btn btn-default btn-info">Return</button>
				</div>
			</form>
			<form action="${contextPath}/user/adduserbutton">
				<div class="col-md-4 column">
					<button type="submit" class="btn btn-default btn-success">Add</button>
					<label>${addsuccess}</label>
				</div>
			</form>

			<div class="col-md-4 column">
				<ul class="pagination">
					<!-- <li><a
							href="<%=java.net.URLEncoder.encode("${contextPath}/user/getalluser?page=${pageinfo.firstPage}", "utf-8")%>">First</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("${contextPath}/user/getalluser?page=${pageinfo.prePage}", "utf-8")%>">Prev</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("${contextPath}/user/getalluser?page=${pageinfo.nextPage}", "utf-8")%>">Next</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("${contextPath}/user/getalluser?page=${pageinfo.lastPage}", "utf-8")%>">Last</a></li>
							 -->

					<li><a
						href="${contextPath}/user/getalluser?page=${pageinfo.firstPage}">First</a></li>
					<li><a
						href="${contextPath}/user/getalluser?page=${pageinfo.prePage}">Prev</a></li>
					<li><a
						href="${contextPath}/user/getalluser?page=${pageinfo.nextPage}">Next</a></li>
					<li><a
						href="${contextPath}/user/getalluser?page=${pageinfo.lastPage}">Last</a></li>

				</ul>
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
