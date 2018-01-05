<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<link rel="stylesheet" href="/ui/sign.css"/>
<script>
function checkValue(){
	var userId = $("#userId").val().trim();
	var userPwd = $("#userPwd").val().trim();
	if(userId.length<3){
		alert("유저아이디 확인해!!");
		$("#userId").focus();
		return;
	}
	if(userPwd.length<3){
		alert("비밀번호 확인해!!");
		$("#userPwd").focus();
		return;
	}
	var param = {uiId:userId,uiPwd:userPwd};
	
	param = "param="+encodeURIComponent(JSON.stringify(param));
	 $.ajax({
		url : "<%=rootPath%>/user/login",
		data : param,
		type : "get",
		success: function(res){
			alert(res +"                        sdsdsdsdsd");
			var obj = JSON.parse(res);
			alert(obj.msg);
			if(obj.login=="ok"){
				location.href="<%=rootPath%>/";
			}
		}
	
	}) 
}
</script>
<body>
	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />
	<div class="container">
		<div class="starter-template">
		
			<form class="form-signin">
				<h2 id="hText2" class="form-signin-heading">로그인</h2>
				<img src="/img/bono.png">
				<label for="inputEmail" class="sr-only">ID</label> 
				<input type="text" id="userId" name="userId" class="form-control" placeholder="ID" autofocus>
				
				<label for="inputPassword" class="sr-only">Password</label> 
				<input type="password" id="userPwd" name="userPwd" class="form-control"	placeholder="Password">
				
				<input class="btn btn-lg btn-primary btn-block" type="button" id="loginBtn" value="Login" onclick="checkValue()">
				
				<a href="/view/user/signin">회원가입</a>
			</form>
		</div>
	</div>
</body>
</html>