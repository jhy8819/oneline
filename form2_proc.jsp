<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	String gender = request.getParameter("gender");
	String[] vehicle = request.getParameterValues("vehicle");

%>
<body>
	<%=gender %><br>
	
	<% for(int i=0; i<vehicle.length; i++)
	{
		out.println(vehicle[i]);
	}
	%>
</body>
</html>