<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Login Practice</title>
</head>
<body>
	<jsp:useBean id="user" class="test.com.dao.Loginbean" />
	<jsp:setProperty name="user" property="*"/>
	
	<h1>
	<%
		if (user.checkUser()) out.println("일치합니다");
		else out.println("불일치합니다");
	%>
	</h1>
</body>
</html>