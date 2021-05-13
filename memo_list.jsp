<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>한줄메모장</title>
<link rel="stylesheet" href="memostyle.css">
</head>


<%
	
	
    request.setCharacterEncoding("UTF-8");

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
%>
<body>

<h3>한줄 메모장</h3>

<form method="post" action="memo_write.jsp">
<input type="text" name="memo" class="memo"></input>
<hr>
<input type="submit" value="등록" class="btn"></input>

<p>
(4/7 15:13) 오늘은 금요일이다. 우하하^^ <input type="submit" class="btn1" value="x">
</p>
<p>
(4/7 11:03) 수업이 언제 끝나나 ... ㅠㅠ  <input type="submit" class="btn1" value="x">
</p>
</form>

<% 
	while(rs.next()) {
		int no = rs.getInt(1);
		String memo = rs.getString("memo");
		String wdate = rs.getString(3);
		
		out.println("<p>("+wdate+") "+ memo + 
				"<input type=\"button\" value=\"X\" onClick=\"location.href='memo_delete.jsp?no="+no+"'\"><br>");
				out.println("</input></p>");
		
	
	}
	rs.close();
	pstmt.close();
	con.close(); 
	out.println("DB조회 성공"); 

%>
</body>
</html>