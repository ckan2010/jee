<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctx = application.getContextPath();
%>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>내정보보기</title>
	<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
</head>
<body>
	<div class="box">
	<!-- embed src="image.html" -->
	<iframe src="image.jsp" style="border:none;"></iframe>
		<h1>내정보보기</h1>
		<img src="<%=ctx %>/img/twi.gif" alt="W3Schools.com" width="104" height="142"><br>
		<a href="<%=ctx %>/member/member_controller.jsp">
			<img src="<%=ctx %>/img/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="<%=ctx %>/index.jsp">
			<img src="<%=ctx %>/img/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>