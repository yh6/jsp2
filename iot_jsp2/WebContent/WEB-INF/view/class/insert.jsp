<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/sign.css" />

</head>
<body>
<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />

	<div class="container">
		<div class="starter-template">

			<form class="form-signin">
				<table class="table">
					<tr>
					<h1>반 추가</h1>
					<br>
						<th>참가국</th>
						<td><input type="text" id="ciName" name="ciName"
							class="form-control" placeholder="참가국" autofocus></td>
					</tr>
					<tr>
						<th>주제</th>
						<td><input type="text" id="ciDesc" name="ciDesc"
							class="form-control" placeholder="주제"></td>
					</tr>
		
					<tr>
						<td colspan="2"> 
							<input class="btn btn-lg btn-primary btn-block" data-role="button"
								id="singnBtn"  value="추 가 완 료" onclick="insert()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script>
function insert(){

	var ciName = $("#ciName").val().trim();
	var ciDesc = $("#ciDesc").val().trim();
	if(ciName.length<2){
		alert("아이디 2글자 이상 가능합니다.");
		$("#ciName").focus();
		return;
	}
		if(ciDesc.length<2){
			alert(" 비밀번호 2글자 이상 가능합니다. ");
			$("#ciDesc").focus();
			return;
		}

	var param= {ciName:ciName, ciDesc:ciDesc};
	param = "param=" + JSON.stringify(param);
	$.ajax({
		url : '/class/insert',
		type : 'post',
		data : param,
		success:function(res){
			var obj = JSON.parse(res);
			alert(res);
			if(obj.result=="ok"){
				location.href="/view/class/list";
			}
		},
		error:function(xhr,status,error){
			
		}		
	})
}

</script>
</html>