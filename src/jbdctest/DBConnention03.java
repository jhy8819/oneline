package jbdctest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnention03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try { 
			String url = "jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimezone=UTC"; 
			String user = "root"; 
			String passwd = "kdw810118"; 
			Connection con = null;
			String sql = "insert into oneline(no,memo) values(?,?)";
			String sql2 = "select max(no) from oneline";
			PreparedStatement pstmt = null;
			int max_no = 0;
			
			Class.forName("com.mysql.jdbc.Driver");
			
			
			con = DriverManager.getConnection(url, user, passwd);
			pstmt = con.prepareStatement(sql2);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				max_no = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			
			
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,max_no +1);
			pstmt.setString(2, "안녕하세요");
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close(); 
			System.out.println("DB조회 성공"); 
			} 
			
			catch (SQLException e ) 
			{ 
				System.out.println("DB연결 실패"); 
				System.out.print("사유 : " + e.getMessage()); 
			} 
			catch (ClassNotFoundException ce)
			{
				System.out.println("클래스 없음");
			}
	}
}