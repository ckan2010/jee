<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ctx = application.getContextPath();
%>    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>회원가입</title>
<link rel="stylesheet" href="<%=ctx %>/css/member.css" />
<style type="text/css">
	span.meta{width: 200px;background-color: yellow;float:left;text-align: left;}
	div.joinDiv{border: 1px dotted gray;width: 80%;margin: 10px 50px 10px 50px}
</style>	
</head>
<body>
    <div class="box">
		<span class="meta">이름</span> <%=request.getParameter("name") %><br />
		<span class="meta">ID</span> <%=request.getParameter("id") %><br />
		<span class="meta">비밀번호</span><%=request.getParameter("pw") %><br />
		<span class="meta">SSN</span><%=request.getParameter("ssn_id") %><br />
		<span class="meta">전공</span><%=request.getParameter("major") %><br />
		<span class="meta">수강과목</span><br />
		<% 
		String[] subjects = request.getParameterValues("subject");
		if(subjects != null){
			for(int i=0;i<subjects.length;i++){
		%>
				<%=subjects[i] %><br />
		<%
			}
		}
		%>
		회원가입을 축하드립니다. <%=request.getParameter("name") %> 님..<br /><br />
	<a href="<%=ctx %>/member/member_controller.jsp">
			<img src="<%=ctx %>/img/member.jpg" alt="회원관리 홈 으로" width="30" height="30">
		</a>
		<a href="<%=ctx %>/index.jsp">
			<img src="<%=ctx %>/img/home.jpg" alt="메인 홈 으로" width="30" height="30">
		</a>
	</div>
</body>
</html>