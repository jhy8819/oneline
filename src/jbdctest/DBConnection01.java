package jbdctest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try { String url = "jdbc:mysql://localhost/?characterEncoding=UTF-8&serverTimezone=UTC"; 
		String user = "root"; 
		String passwd = "kdw810118"; 
		Connection con = null;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		
		con = DriverManager.getConnection(url, user, passwd);
		con.close(); 
		System.out.println("DB연결 성공"); 
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
