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
<title>userlist</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/bootstrap.min.css">
<script src="${contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<!--  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<!--  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>-->
</head>

<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form action="user/deleteuser">
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
					The system remembers your username and password for 60 minutes,if
					you choose 'Remember you' in home page.
				</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row clearfix">
			<form action="user/returnhome">
				<div class="col-md-4 column">
					<button type="submit" class="btn btn-default btn-info">Return</button>
					<label>Remember user for 60 minutes</label>
				</div>
			</form>
			<form action="user/adduserbutton">
				<div class="col-md-4 column">
					<button type="submit" class="btn btn-default btn-success">Add</button>
					<label>${addsuccess}</label>
				</div>
			</form>

			<div class="col-md-4 column">
				<ul class="pagination">
					<!-- <li><a
							href="<%=java.net.URLEncoder.encode("user/getalluser?page=${pageinfo.firstPage}", "utf-8")%>">First</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("user/getalluser?page=${pageinfo.prePage}", "utf-8")%>">Prev</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("user/getalluser?page=${pageinfo.nextPage}", "utf-8")%>">Next</a></li>
						<li><a
							href="<%=java.net.URLEncoder.encode("user/getalluser?page=${pageinfo.lastPage}", "utf-8")%>">Last</a></li>
							 -->

					<li><a href="user/getalluser?page=${pageinfo.firstPage}">First</a></li>
					<li><a href="user/getalluser?page=${pageinfo.prePage}">Prev</a></li>
					<li><a href="user/getalluser?page=${pageinfo.nextPage}">Next</a></li>
					<li><a href="user/getalluser?page=${pageinfo.lastPage}">Last</a></li>

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
