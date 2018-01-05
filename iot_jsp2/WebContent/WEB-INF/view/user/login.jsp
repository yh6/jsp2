<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />
<style>
 	baby{blackground-image:url(https://www.google.co.kr/search?biw=1920&bih=974&tbm=isch&sa=1&ei=ZERPWpKFJMXl0gTyqLGgDg&q=%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4&oq=%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4&gs_l=psy-ab.3..0l10.1557896.1558922.0.1559062.11.10.0.1.1.0.164.1115.1j8.9.0....0...1c.1j4.64.psy-ab..9.2.153....0.BWyhzBz61dE#imgrc=-bC_gmPEewFf9M:)
 	}
</style>

<body >

	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />

	<div class="result_div"></div>
	<div class="container">
		<div class="starter-template">
		
			<form class="form-signin">
			
			<img src = "/img/b.png">
			
				<h2 id="hText2" class="form-signin-heading">로그인</h2>
				
				<label for="userId" class="sr-only">ID</label> 
				<input type="text" id="userId" name="userId" class="form-control"
					placeholder="ID" autofocus>
					
				<label for="userPwd" class="sr-only">Password</label> 
				<input type="password" id="userPwd" name="userPwd" class="form-control"
					placeholder="Password">
					
				<input class="btn btn-lg btn-primary btn-block" type="button"
					id="loginBtn" value="Login" onclick="checkValue()">
					
				<a href="/view/user/signin">회원가입</a>
			</form>
		</div>
	</div>
</body>
<script>

function checkValue(){
	var objs = $(".container");
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
	var param = {uiId:userId, uiPwd:userPwd};
	
	param = "param=" + encodeURIComponent(JSON.stringify(param));
	$.ajax({
		url : '<%=rootPath%>/user/login',
		data : param,
		type :'get',
		success:function(res){
			var obj = JSON.parse(res);
			alert(obj.msg);
			if(obj.login=="ok"){
				location.href="<%=rootPath%>/";
			}
		}
	})
}
</script>
</html>