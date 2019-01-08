package me.sysdev.dao;

import java.sql.*; 
import java.util.ArrayList;  
import java.util.List; 
import javax.swing.JOptionPane;

import me.sysdev.tables.user;
import me.sysdev.connect.DBCon;


public class userdao {
	
	//Connection Status
	static Connection con = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	
	//Saving Users
	public static int save(user u) {
		int status = 0;
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("INSERT into userdb(username,password,cpassword,email,status) values(?,?,?,?,?)");
	    	ps.setString(1, u.getUsername());
	    	ps.setString(2, u.getPassword());
	    	ps.setString(3, u.getCpassword());
	    	ps.setString(4, u.getEmail());
	    	ps.setString(5, u.getStatus());
	    	status=ps.executeUpdate();
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return status;
	}
	
	//Delete Users
	public static int delete(user u) {
		int status = 0;
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("DELETE from userdb where id=?");
			ps.setInt(1, u.getId());
			status=ps.executeUpdate();
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return status;
	}
	
	//Validate Users
	public static int validate(user u) {
		int status = 0;
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("SELECT * from userdb where id=?");
			ps.setInt(1, u.getId());
			rs=ps.executeQuery();
			while(rs.next()) {
				u.setId(rs.getInt("id"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				u.setStatus(rs.getString("status"));
			}
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return status;
	}
	
	//Validate Users v2.0
	public static String login(user u) {
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("SELECT * from userdb where username=? and password=? and status=?");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getStatus());
			rs=ps.executeQuery();
			
			if(rs.next()) {
				return "true";
			}
			else {
				return "false";
			}
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return "error";
	}
	
	//Validate Users v3.0
	public static String login2(user u) {
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("SELECT * from userdb where id=?");
			ps.setInt(1, u.getId());
			rs=ps.executeQuery();
			
			if(rs.next()) {
				u.setId(rs.getInt("id"));
				u.setEmail(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setStatus(rs.getString("status"));
				return "true";
			}
			else {
				return "false";
			}
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return "error";
	}
	
	//Updating Users
	public static int update(user u) {
		int status = 0;
		try {
			con=DBCon.getConnection();
			ps=con.prepareStatement("update userdb set username=?,password=?,cpassword=?,email=?,status=? where id=?");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getCpassword());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getStatus());
	        ps.setInt(6,u.getId());  
	        status=ps.executeUpdate();
		}
		catch(Exception zxy) {
			JOptionPane.showMessageDialog(null, zxy);
		}
		return status;
	}
	
	//Listing Users
	public static List<user> getAllRecords() {  
	    List<user> list = new ArrayList<user>();
	    try {  
	    	con=DBCon.getConnection();   
	        ps=con.prepareStatement("SELECT * FROM userdb");  
	        rs=ps.executeQuery();
	        
	        while(rs.next()){  
	            user u=new user(); 
	            u.setId(rs.getInt("id"));  
	            u.setUsername(rs.getString("username"));  
	            u.setPassword(rs.getString("password"));  
	            u.setCpassword(rs.getString("cpassword"));
	            u.setEmail(rs.getString("email"));  
	            u.setStatus(rs.getString("status"));
	            list.add(u);  
	        	}
	    }	
	    catch(Exception e){
	    	JOptionPane.showMessageDialog(null, e);
	    	}
	    
	    return list;  
	}
	
	//Records By Id
	public static user getRecordById(int id) {  
	    user u=null;  
	    try {  
	    	con=DBCon.getConnection();
	        ps=con.prepareStatement("select * from userdb where id=?");  
	        ps.setInt(1,id);  
	        rs=ps.executeQuery();  
	        while(rs.next()){
	            u=new user();  
	            u.setId(rs.getInt("id"));  
	            u.setUsername(rs.getString("username"));  
	            u.setPassword(rs.getString("password"));  
	            u.setCpassword(rs.getString("cpassword"));
	            u.setEmail(rs.getString("email"));  
	            u.setStatus(rs.getString("status"));
	        }  
	    }
	    catch(Exception e) {
	    	JOptionPane.showMessageDialog(null, e);
	    }  
	    return u;  
	}  

}
