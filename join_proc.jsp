<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보</title>
</head>
<%
		String uid = request.getParameter("uid");
		String umail = request.getParameter("umail");
		String pwd1 = request.getParameter("pwd1");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");

%>
<body>
	이름 : <%=uid %><br>
	이메일 : <%= umail %><br>
	비밀번호 :<%= pwd1 %><br>
	생년월일 : <%=birth %><br>
	성별 : <%=gender %>
	
</body>
</html>