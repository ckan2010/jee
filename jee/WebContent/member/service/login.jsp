<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctx = application.getContextPath();
%>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입로그인</title>
	<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
<style type="text/css">
	span.meta{width: 200px;background-color: yellow;float:left;text-align: left;}
</style>	
</head>
<body>
	<div class="box">
	<h1>로그인</h1>
	<form action="<%=ctx %>member/result/login.jsp" method="post">
		<span class="meta">ID</span><input type="text" name="id" /><br />
		<span class="meta">비밀번호</span><input type="password" name="pw" /><br />
		<br /><br /><br />
		<input type="submit" value="로그인"/>
		<input type="reset" value="취소" />
	</form>
	</div>
</body>
</html>