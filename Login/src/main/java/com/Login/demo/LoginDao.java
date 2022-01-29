package com.Login.demo;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao {

	String sql = "select * from Login where name=? and password = ?";
	String url = "jdbc:sqlite:D:\\project1\\workspaceproject1.1\\Login\\Login.db";
	String query = "INSERT INTO Login (name,password) VALUES( ?,?)";

	public boolean check(String username,String password) {

		try {
			Class.forName("org.sqlite.JDBC");
			Connection con = DriverManager.getConnection(url);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			System.out.println("ERROR MESSAGE "+e.getMessage());
			//			out.println("ERROR MESSAGE"+e.getMessage());
		}

		return false;
	}

}
