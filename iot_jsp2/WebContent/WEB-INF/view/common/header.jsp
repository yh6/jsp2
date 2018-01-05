<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/common.jsp"%>
<%
	String loginMenu = "Login";
	String loginUrl = rootPath + "/view/user/login";
	if (user != null) {
		loginMenu = "Logout";
		loginUrl = rootPath + "/user/logout";
	}
%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Project name</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%=rootPath%>/">Home</a></li>
				<li><a href="<%=loginUrl%>"><%=loginMenu%></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="./">Default <span
						class="sr-only">(current)</span></a></li>
				<li><a href="../navbar-static-top/">Static top</a></li>
				<li><a href="../navbar-fixed-top/">Fixed top</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	<!--/.container-fluid -->
</nav>