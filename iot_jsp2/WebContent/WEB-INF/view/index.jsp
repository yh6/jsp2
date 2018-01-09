
<%
	if (user == null) {
		//response.sendRedirect("/view/user/login");
	} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IOT_TEST</title>

<style>
body {
	background-image:
		url("/img/index1.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
}

table {
	background-color: transparent;
}

td {
	background-color: transparent;
}
</style>

</head>

<body>


	<jsp:include page="/WEB-INF/view/common/header.jspf" flush="false" />
	<div class="container">

		<div class="starter-template">
			<div style="
			 color: white; font-family:고딕체;text-align:left;"><%=user.getUiName()%>님 예약이 완료되었습니다.</div>
			<br>
			<br>
			<br>
			<br>
			<div style="
			 font-weight: bold; font-size:2.0em;text-align:left;
			 color: white; font-family:고딕체;">2018 세계불꽃축제</div>
				<div style="
			  font-size:1.7em;text-align:left; 
			 color: white; font-family:고딕체;"> World Fireworks Festival</div>
				<div style="
			 font-weight: bold; font-size:1.9em;text-align:left; 
			 color: white; font-family:고딕체;">COMING SOON</div>
		</div>
	</div>
	<!-- /.container -->
</body>
</html>
<%
	}
%>