<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />

<body >
	<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />

	<div class="container">
		<div class="starter-template">

			<form class="form-signin">
				<table class="table">
					<tr>
					<h1>회 원 가 입</h1>
						<th>이름</th>
						<td><input type="text" id="uiName" name="uiName"
							class="form-control" placeholder="이름" autofocus></td>
					</tr>
					<tr>
						<th>나이</th>
						<td><input type="text" id="uiAge" name="uiAge"
							class="form-control" placeholder="나이"></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" id="uiId" name="uiId"
							class="form-control" placeholder="아이디"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" id="uiPwd" name="uiPwd"
							class="form-control" placeholder="비밀번호"></td>
					</tr>
					<tr>
						<th>반</th>
						<td>
							<select name="ciNo" id="ciNo" class="form-control">
							</select>
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" id="address" name="address"
							class="form-control" placeholder="주소"></td>
					</tr>
					<tr>
						<td colspan="2"> 
							<input class="btn btn-lg btn-primary btn-block" data-role="button"
								id="singnBtn"  value="완 료" onclick="signin()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script>
function signin(){
	//"uiName,uiAge,uiId,uiPwd,ciNo,address"
	var uiName = $("#uiName").val().trim();
	var uiAge = $("#uiAge").val().trim();
	var uiId = $("#uiId").val().trim();
	var uiPwd = $("#uiPwd").val().trim();
	var ciNo = $("#ciNo").val();
	var address = $("#address").val().trim();
	var param= {uiName:uiName, uiAge:uiAge, uiId:uiId, uiPwd:uiPwd,ciNo:ciNo,address:address};
	param = "param=" + JSON.stringify(param);
	$.ajax({
		url : '/user/signin',
		type : 'post',
		data : param,
		success:function(res){
			var obj = JSON.parse(res);
			alert(obj.msg);
			if(obj.result=="ok"){
				location.href="/view/user/login";
			}
		},
		error:function(xhr,status,error){
			
		}		
	})
}
$(document).ready(function(){
	$.ajax({
		url : '/class/list',
		type : 'get',
		success:function(res){
			var list = JSON.parse(res);
			var str = "";
			for(var ci of list){
				str += "<option value='" + ci.ciNo + "'>" + ci.ciName +"</option>";
			}
			//document.getElementById("ciNo").insertAdjacentHTML("beforeend",str);
			$("#ciNo").html(str);
		},
		error:function(xhr,status,error){
			
		}
	});
	
});
</script>
</html>