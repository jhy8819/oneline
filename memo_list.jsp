<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>한줄메모장</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimezone=UTC"; 
	String user = "root"; 
	String passwd = "kdw810118"; 
	Connection con = null;
	String sql = "select * from oneline";
	PreparedStatement pstmt = null;
	
	
	Class.forName("com.mysql.jdbc.Driver");
	
	
	con = DriverManager.getConnection(url, user, passwd);
	
	
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		int no = rs.getInt(1);
		String memo = rs.getString("memo");
		String wdate = rs.getString(3);
		
		out.print("No."+no + ":" + memo + ":(" + wdate+")<br>");
	
	}
	rs.close();
	pstmt.close();
	con.close(); 
	out.println("DB조회 성공"); 

%>
</body>
</html>