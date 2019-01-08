package me.sysdev.connect;

import java.sql.*;

public class DBCon {
		
		static String DRIVER = "com.mysql.cj.jdbc.Driver";  
		static String CONNECTION_URL = "jdbc:mysql://localhost:3306/logindb";  
		static String USERNAME = "root";  
		static String PASSWORD = "root";  
		
		public static Connection getConnection(){  
		    Connection con=null;  
		    try{  
		        Class.forName(DRIVER);  
		        con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
		    }catch(Exception e){System.out.println(e);}  
		    return con;  
		}
	}
