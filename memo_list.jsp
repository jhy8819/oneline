<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*" %>
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ٸ޸���</title>
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

<h3>���� �޸���</h3>

<form method="post" action="memo_write.jsp">
<input type="text" name="memo" class="memo"></input>
<hr>
<input type="submit" value="���" class="btn"></input>

<p>
(4/7 15:13) ������ �ݿ����̴�. ������^^ <input type="submit" class="btn1" value="x">
</p>
<p>
(4/7 11:03) ������ ���� ������ ... �Ф�  <input type="submit" class="btn1" value="x">
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
	out.println("DB��ȸ ����"); 

%>
</body>
</html>