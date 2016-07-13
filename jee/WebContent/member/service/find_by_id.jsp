<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctx = application.getContextPath();
%>    
<html>
<head>
<meta charset="UTF-8">
<title>검색(ID)</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
<style>

</style>
</head>
<body>
	<div class="box">
	<div style="width: 300px;margin: 0 auto;text-align: center;">
	<h1 >검색(ID)</h1>
		<img src="<%=ctx %>/img/w3schools.jpg" alt="W3Schools.com" width="104" height="142"><br>
		<a href="<%=ctx %>/member/member_controller.jsp">
			<img src="<%=ctx %>/img/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="<%=ctx %>/index.jsp">
			<img src="<%=ctx %>/img/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
		</div>
	</div>
</body>
</html>