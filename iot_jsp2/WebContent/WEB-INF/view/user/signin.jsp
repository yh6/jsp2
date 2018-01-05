<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>

$(document).ready(function(){
	$.ajax({
		url: "/class/list",
		type:"get",
		success: function(res){
			var objs = JSON.parse(res);
			var selectobj = document.getElementById("ciNo");
			for(var objValue of objs){
				//insertAdjacentHTML("beforeend",str); 이건 해당 부분만 랜더링해서  innerHTML보다 좋음 이유는 innerHTML은 처음부터 전체를 다시 랜더링하기때문
				selectobj.innerHTML += "<option value='"+objValue.cino+"'>"+objValue.ciname+"</option>";
			}
		},
		error:function(xhr,status,error){
			
		}
	
	})
	
	
});
</script>

<body>


	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />


	<div class="container">
		<table class="table">
			<tr>
				<th>이름</th>
				<td><input type="text" id="uiName" name="uiName"
					class="form-contorl" placeholder="이름" autofocus></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="text" id="uiAge" name="uiAge"
					class="form-contorl" placeholder="나이"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" id="uiId" name="uiId"
					class="form-contorl" placeholder="아이디"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="uiPwd" name="uiPwd"
					class="form-contorl" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<th>반</th>
				<td><select name="ciNo" id="ciNo">
				</select></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" id="address" name="address"
					class="form-contorl" placeholder="주소"></td>
			</tr>
			<tr>
				<td colspan="2"><input class="btn btn-lg btn-primary btn-block"
					type="button" id="signBtn" value="Signin" onclick="signin()">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>