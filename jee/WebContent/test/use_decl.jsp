<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public int multiply(int a, int b){
	return a * b;
}
%>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>선언부를 사용한 두 정수의 곱</title>
</head>
<body>
<% int a = 3, b = 9; %>
<%= a %> * <%= b %> = <%=multiply(a,b) %>
</body>
</html>