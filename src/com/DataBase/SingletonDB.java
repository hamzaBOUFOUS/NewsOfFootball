package com.DataBase;

import java.sql.*;

public class SingletonDB {

	private static Connection connection;
	static{
		try {
			 Class.forName("com.mysql.jdbc.Driver");
	            connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/projetfootnews","root","");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() {
		return connection;
	}
}
