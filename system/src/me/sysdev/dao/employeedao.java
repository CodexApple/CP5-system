package me.sysdev.dao;

import java.sql.*;
import java.util.ArrayList;  
import java.util.List;
import javax.swing.*;

import me.sysdev.tables.employee;
import me.sysdev.connect.DBCon;

public class employeedao  {	
	static Connection con = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	static Blob image = null;
	static byte[] imgData = null;
	
	public static int save(employee ee){ 
	    int status=0;  
	    try{
	    	con=DBCon.getConnection();	
	        ps=con.prepareStatement("insert into employeedb(lname,fname,mname,gender,birplace,birdate,age,address,telephone,cellphone,country,city,position)"
	        		+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	    	ps.setString(1,ee.getLname());  
	        ps.setString(2,ee.getFname());
	        ps.setString(3,ee.getMname());
	        ps.setString(4,ee.getGender());
	        ps.setString(5,ee.getBirplace());
	        ps.setString(6,ee.getBirdate());
	        ps.setString(7,ee.getAge());
	        ps.setString(8,ee.getAddress());
	        ps.setString(9,ee.getTelephone());	        
	        ps.setString(10,ee.getCellphone());
	        ps.setString(11,ee.getCountry());
	        ps.setString(12,ee.getCity());
	        ps.setString(13,ee.getPosition());        
	        status=ps.executeUpdate(); 
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}
	    return status;  
	}
	
	public static int update(employee ee){  
	    int status=0;  
	    try{  
	    	con=DBCon.getConnection();	    	
	        ps=con.prepareStatement("update employeedb set lname=?,fname=?,mname=?,gender=?,birplace=?,birdate=?,"
	        		+ "age=?,address=?,telephone=?,cellphone=?,country=?,city=?,position=? where id=?"); 	
	    	ps.setString(1,ee.getLname());  
	        ps.setString(2,ee.getFname());
	        ps.setString(3,ee.getMname());
	        ps.setString(4,ee.getGender());
	        ps.setString(5,ee.getBirplace());
	        ps.setString(6,ee.getBirdate());
	        ps.setString(7,ee.getAge());
	        ps.setString(8,ee.getAddress());
	        ps.setString(9,ee.getTelephone());	        
	        ps.setString(10,ee.getCellphone());
	        ps.setString(11,ee.getCountry());
	        ps.setString(12,ee.getCity());
	        ps.setString(13,ee.getPosition());
	        ps.setInt(14,ee.getId());
	        status=ps.executeUpdate();        
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return status;  
	}
	
	public static int delete(employee ee){  
	    int status=0;  
	    try{  
	    	con=DBCon.getConnection();   
	        ps=con.prepareStatement("delete from employeedb where id=?");  
	        ps.setInt(1,ee.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	  
	    return status;  
	}
	
	public static int delete_photo(employee ee){  
	    int status=0;  
	    try{  
	    	con=DBCon.getConnection();   
	        ps=con.prepareStatement("delete from employeedb where photo=?");  
	        ps.setBytes(1,ee.getPhoto());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	  
	    return status;  
	}
	
	public static List<employee> getAllRecords(){  
	    List<employee> list=new ArrayList<employee>();  
	    
	    try{  
	    	con=DBCon.getConnection();   
	        ps=con.prepareStatement("select * from employeedb");  
	        rs=ps.executeQuery();  
	        while(rs.next()){  
	        	employee ee=new employee();	        		        	
	        	ee.setId(rs.getInt("id"));
	            ee.setLname(rs.getString("lname"));  
	            ee.setFname(rs.getString("fname"));  
	            ee.setMname(rs.getString("mname"));  
	            ee.setGender(rs.getString("gender"));  
	           	ee.setBirplace(rs.getString("birplace"));  
	            ee.setBirdate(rs.getString("birdate"));  
	            ee.setAge(rs.getString("age"));  
	            ee.setTelephone(rs.getString("telephone"));
	            ee.setAddress(rs.getString("address"));
				ee.setCellphone(rs.getString("cellphone"));  
				ee.setCity(rs.getString("city"));
				ee.setCountry(rs.getString("country"));
	            ee.setPosition(rs.getString("position"));  
	            list.add(ee);  
	        }  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;  
	}
	
	public static employee getRecordById(int id){  
	    employee ee=null;  
	    try{  
	    	con=DBCon.getConnection();  
	        ps=con.prepareStatement("select * from employeedb where id=?");  
	        ps.setInt(1,id);  
	        rs=ps.executeQuery();  
	        while(rs.next()){  
	            ee=new employee();  
	            ee.setId(rs.getInt("id")); 
	            ee.setLname(rs.getString("lname"));  
	            ee.setFname(rs.getString("fname"));  
	            ee.setMname(rs.getString("mname"));  
	            ee.setGender(rs.getString("gender"));  
	           	ee.setBirplace(rs.getString("birplace"));  
	            ee.setBirdate(rs.getString("birdate"));  
	            ee.setAge(rs.getString("age"));  
	            ee.setTelephone(rs.getString("telephone"));
	            ee.setAddress(rs.getString("address"));
				ee.setCellphone(rs.getString("cellphone"));  
				ee.setCity(rs.getString("city"));
				ee.setCountry(rs.getString("country"));
	            ee.setPosition(rs.getString("position"));  
	        }  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return ee;  
	}
}

