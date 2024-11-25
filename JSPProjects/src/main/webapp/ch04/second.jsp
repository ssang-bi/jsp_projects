<%@ page contentType="text/html; charset=utf-8" %>
<html>
    <head>
        <title>Action Tag</title>
    </head>
    <body>
       <h3>이 파일을 second.jsp입니다.</h3> 
       Today is : <%= request.getParameter("date") %>
    </body>
</html>