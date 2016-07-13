<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>클라이언트 및 서버 정보</title>
</head>
<body>
	요청 URI : <%=request.getRequestURI() %><br>
	컨텍스트 경로 : <%=request.getContextPath() %>
</body>
</html>