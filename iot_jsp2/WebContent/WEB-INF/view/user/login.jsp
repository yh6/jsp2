<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>



</head>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />




<body>

	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />
	
<video width="1000" height="400" controls loop autoplay muted:muted>
  <source src="/vod/Fireworks.mp4" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
</video>

	<div class="result_div"></div>
	<div class="container">
		<div class="starter-template">

			<div class="pop_area pop_video">
				<div class="pop_wrap" style="top: 100px">
					<div class="video_wrapper">

						<form class="form-signin">



							<h2 id="hText2" class="form-signin-heading" >로그인</h2>

							<label for="userId" class="sr-only">ID</label> <input type="text"
								id="userId" name="userId" class="form-control" placeholder="ID" autofocus> 
								<label for="userPwd" class="sr-only">Password</label>
								
							<input type="password" id="userPwd" name="userPwd"
								class="form-control" placeholder="Password"> 
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
	if(userId.length<2){
		alert("유저아이디 확인해!!");
		$("#userId").focus();
		return;
	}
	if(userPwd.length<2){
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
				location.href="<%=rootPath%>
	/";
				}
			}
		})
	}
</script>
</html>