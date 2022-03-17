package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql = "select * from login where uname=? and pword=?";
	String url = "jdbc:mysql://localhost:3306/loginapp";
	String username = "root";
	String password = "Saurav@mysql1";
	
	public boolean check(String uname, String pword) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pword);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}
}
