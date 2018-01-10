<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>


</head>

<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />


<iframe width="100%" height="450"
	src="/vod/Fireworks.mp4?&autoplay=1&loop=1" muted="0" preload="auto"
	gesture="media" allow="encrypted-media"></iframe>


<body>

	<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />

	<h3 id="hText2" class="form-signin-heading" style="color: white">Login
		in</h3>

	<label for="userId" class="sr-only">ID</label>
	<input type="text" id="userId" name="userId" class="form-control"
		style="text-position: marain-top-left; width: 200px; height: 40px; float: left; margin-right: 10px"
		placeholder="ID" autofocus>
		
	
	<label for="userPwd" class="sr-only">Password</label>
	
	<input type="password" id="userPwd" name="userPwd" class="form-control"
		style="text-align: left; width: 200px; height: 40px; float: left; margin-right: 10px"
		placeholder="Password">
		
	<input type="checkbox" id="saveId" >아이디저장
	
	<input class="btn btn-lg btn-primary btn-block" type="button"
		id="loginBtn"
		style="width: 200px; height: 40px; float: left; margin-right: 10px"
		value="Login" onclick="checkValue()">
	<br><a href="/view/user/signin" style="color: white">회원가입</a>
	


</body>
<script>
alert("World Fireworks Festival");
function checkValue(){
	var objs = $(".container");
	var userId = $("#userId").val().trim();
	var userPwd = $("#userPwd").val().trim();
	var saveId = $('#saveId').prop("checked");
	if(userId.length<2){
		alert("아이디 2글자 이상 가능합니다.");
		$("#userId").focus();
		return;
	}
	if(userPwd.length<2){
		alert(" 비밀번호 2글자 이상 가능합니다. ");
		$("#userPwd").focus();
		return;
	}
	var param = {uiId:userId, uiPwd:userPwd, saveId:saveId};
	
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
	
function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

$(document).ready(function(){
   var userId = getCookie("userId");
   var saveId = getCookie("saveId");
   if(userId){
      $("#userId").val(userId);
      $("#saveId").prop("checked",true);
   }
});
</script>
</html>