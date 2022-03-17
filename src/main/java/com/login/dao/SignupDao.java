package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class SignupDao {
	String sql1 = "INSERT INTO saurav_111915117_details(Employee_ID_Number, First_Name, Last_Name, pass, Date_of_Birth, Contact_Number) VALUES(?,?,?,?,?,?)";
	String sql2 = "INSERT INTO saurav_111915117_salary(Employee_ID_Number, Job_Role, Monthly_Salary, Yearly_Bonus) VALUES(?,?,?,?)";
	String url = "jdbc:mysql://localhost:3306/saurav_111915117";
	String username = "root";
	String password = "Saurav@mysql1";
	
	public void insert(String id_num, String fname, String lname, String pword, String dob, String cont, String job, String sal, String bonus) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			
			//1st table
			PreparedStatement st1 = con.prepareStatement(sql1);
			
			st1.setString(1,id_num);
			st1.setString(2,fname);
			st1.setString(3,lname);
			st1.setString(4,pword);
			st1.setString(5,dob);
			st1.setString(6,cont);
			
			
			//2nd table
			PreparedStatement st2 = con.prepareStatement(sql2);

			st2.setString(1,id_num);
			st2.setString(2,job);
			st2.setString(3,sal);
			st2.setString(4,bonus);
			
			
			st1.executeUpdate();
			st2.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
	}
}
