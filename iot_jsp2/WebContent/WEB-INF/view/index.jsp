<%
if(user==null){
	//response.sendRedirect("/view/user/login");
}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IOT_TEST</title>
</head>
<body>
	
	
	<jsp:include page="/WEB-INF/view/common/header.jsp" flush="false" />
    <div class="container">
		
      <div class="starter-template">
        <h1><%=user.getUiName()%>님 환영합니다.</h1>
        <p class="lead">Use this document as a way to quickly start any new project.<br> All you get is this text and a mostly barebones HTML document.</p>
      </div>
    </div><!-- /.container -->
</body>
</html>
<%
}
%>