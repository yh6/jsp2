<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginMenu = "Login";
String loginUrl = rootPath + "/view/user/login";
if(user!=null){
	loginMenu = "Logout";
	loginUrl = rootPath + "/user/logout";
}
%>
<script src="<%=rootPath%>/ui/js/jquery-3.2.1.js"></script>
<script src="<%=rootPath%>/ui/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=rootPath%>/ui/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="<%=rootPath%>/ui/css/common.css">

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<%=rootPath%>/">Home</a></li>
            <li><a href="<%=loginUrl%>"><%=loginMenu%></a></li>
            <li><a href="<%=rootPath%>/view/user/list">예약자</a></li>
          </ul>
        </div>
      </div>
    </nav>	    