<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctx = application.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
<title>학교 소개</title>

</head>
<body>
	<div class="box">
	<h1>학교 소개</h1>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/X91IYXQ1X3w?autoplay=1" frameborder="0" allowfullscreen>
	</iframe><br>
		<a href="<%=ctx %>/index.jsp">
			<img src="<%=ctx %>/img/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>