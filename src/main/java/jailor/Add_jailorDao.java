package jailor;

import java.sql.Connection;
import db.Database;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.boot.Metadata;  
import org.hibernate.boot.MetadataSources;  
import org.hibernate.boot.registry.StandardServiceRegistry;  
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import jailor.*;
public class Add_jailorDao {

	public static int register(Add_jailor u){    
 int i=0;    
  
 StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
 Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
  
SessionFactory factory = meta.getSessionFactoryBuilder().build();  
Session session = factory.openSession();  
Transaction t = session.beginTransaction();   
  
i=(Integer)session.save(u);    
  
t.commit();    
session.close();    
    
return i;    
   
 }  
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName(Database.driver);  
	        con=DriverManager.getConnection(Database.connectionUrl,Database.username,Database.password);
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int update(Add_jailor u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update jailor set fullname=?,jailor_id=?,dob=?,age=?,phonenumber=?,email=?,txtpassword=?,gender=? where id=?");  
	        ps.setString(1,u.getFullname());  
	        ps.setString(2,u.getJailor_id()); 
	        ps.setString(3, u.getDob());
	        ps.setInt(4, u.getAge());
	        ps.setString(5,u.getPhonenumber());  
	        ps.setString(6,u.getEmail());  
			        ps.setString(7,u.getTxtpassword());  
	        ps.setString(8,u.getGender());  
	        ps.setInt(9,u.getId());  

			/*
			 */
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Add_jailor u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from jailor where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Add_jailor> getAllRecords(){  
	    List<Add_jailor> list=new ArrayList<Add_jailor>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from jailor");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Add_jailor u=new Add_jailor();  
	            u.setId(rs.getInt("id"));  
	            u.setFullname(rs.getString("fullname"));  
	            u.setJailor_id(rs.getString("jailor_id")); 
	            u.setDob(rs.getString("dob"));
	            u.setAge(rs.getInt("age"));
	            u.setPhonenumber(rs.getString("phonenumber"));
	            u.setEmail(rs.getString("email"));
				            u.setTxtpassword(rs.getString("txtpassword"));
	            u.setGender(rs.getString("gender"));

	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Add_jailor getRecordById(int id){  
	    Add_jailor u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from jailor where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Add_jailor();  
	            u.setId(rs.getInt("id"));  
	            u.setFullname(rs.getString("fullname"));  
	            u.setJailor_id(rs.getString("jailor_id")); 
	            u.setDob(rs.getString("dob"));
	            u.setAge(rs.getInt("age"));
	            u.setPhonenumber(rs.getString("phonenumber"));
	            u.setEmail(rs.getString("email"));
				            u.setTxtpassword(rs.getString("txtpassword"));
	            u.setGender(rs.getString("gender"));
   
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	}  




   

