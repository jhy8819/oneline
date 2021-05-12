<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String memo = request.getParameter("memo");
	
	String url = "jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimezone=UTC"; 
	String user = "root"; 
	String passwd = "kdw810118"; 
	Connection con = null;
	String sql = "insert into oneline(memo) values(?)";
	PreparedStatement pstmt = null;
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	
	con = DriverManager.getConnection(url, user, passwd);
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, memo);
	
	pstmt.close();
	con.close(); 
	out.println("데이터 추가 성공"); 

%>
</body>
</html>