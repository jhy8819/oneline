<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<%
		String uid = request.getParameter("uid");
		String umail = request.getParameter("umail");
		String pwd1 = request.getParameter("pwd1");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");

%>
<body>
	�̸� : <%=uid %><br>
	�̸��� : <%= umail %><br>
	��й�ȣ :<%= pwd1 %><br>
	������� : <%=birth %><br>
	���� : <%=gender %>
	
</body>
</html>