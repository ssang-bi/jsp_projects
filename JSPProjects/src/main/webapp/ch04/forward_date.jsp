<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<p> 오늘의 날짜 및 시간
	<p> <%= (new java.util.Date()).toLocaleString() %>
</body>
</html>