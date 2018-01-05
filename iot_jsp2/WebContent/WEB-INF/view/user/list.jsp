<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="<%=rootPath%>/ui/css/list.css" />
<body>
	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />
<br>
	<div class="container">
	    <div class="row">
	    
	        <div class="col-md-10 col-md-offset-1">
	
	            <div class="panel panel-default panel-table">
	              <div class="panel-heading">
	                <div class="row">
	                  <div class="col col-xs-6">
	                    <h3 class="panel-title">User List</h3>
	                  </div>
	                  <div class="col col-xs-6 text-right">
	                  	<input type="text" class="input">
	                    <button type="button" class="btn btn-sm btn-primary btn-create">검색</button>
	                  </div>
	                </div>
	              </div>
	              <div class="panel-body">
	                <table class="table table-striped table-bordered table-list">
	                  	<thead>
		                    <tr>
		                        <th class="text-center">번호</th>
		                        <th class="text-center">이름</th>
		                        <th class="text-center">나이</th>
		                        <th class="text-center">ID</th>
		                        <th class="text-center">가입일자</th>
		                        <th class="text-center">주소</th>
		                        <th class="text-center"><em class="glyphicon glyphicon-asterisk"></em></th>
		                    </tr>  
	                  	</thead>
	                  	<tbody id="result_tb">
						</tbody>
	                </table>
	              </div>
	            </div>
			</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$.ajax({
		url : '/user/list',
		type : 'get',
		success:function(res){
			var list = JSON.parse(res);
			var str ="";
			for(var uc of list){
				str += "<tr>";
				str += "<td class='text-center'>" + uc.uiNo + "</td>";
				str += "<td class='text-center'>" + uc.uiName + "</td>";
				str += "<td class='text-center'>" + uc.uiAge + "</td>";
				str += "<td class='text-center'>" + uc.uiId + "</td>";
				str += "<td class='text-center'>" + uc.uiRegdate + "</td>";
				str += "<td class='text-center'>" + uc.address + "</td>";
				str += '<td align="center">';
				str += '<a class="btn btn-default"><em class="glyphicon glyphicon-refresh"></em></a>';
				str += '<a class="btn btn-danger"><em class="glyphicon glyphicon-trash"></em></a>';
				str += '</td>';
			}
			$("#result_tb").html(str);
		},
		error:function(xhr,status,error){
			
		}
	});
	
});
</script>
</html>