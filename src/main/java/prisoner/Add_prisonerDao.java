package prisoner;

import java.sql.Connection;
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

import db.Database;
import prisoner.Add_prisoner;
public class Add_prisonerDao {

	public static int register(Add_prisoner u){    
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
	public static int update(Add_prisoner u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update prisoner set fullname=?,age=?,prisoner_id=?,casenumber=?,edate=?,rdate=?,etime=?,cdetail=?,address=?,econtact=?,gender=? where id=?");  
	        ps.setString(1,u.getFullname());  
	        ps.setInt(2,u.getAge());  
	        ps.setString(3,u.getPrisoner_id());  
	        ps.setString(4,u.getCasenumber());  
	        ps.setString(5,u.getEdate());  
	        ps.setString(6,u.getRdate());
	        ps.setString(7, u.getEtime());
		 ps.setString(8,u.getCdetail());
		 ps.setString(9,u.getAddress());
		 ps.setString(10,u.getEcontact());
		 ps.setString(11,u.getGender());
	        ps.setInt(12,u.getId());  

			/*
			 */
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(Add_prisoner u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from prisoner where id=?");  
	        ps.setInt(1,u.getId());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Add_prisoner> getAllRecords(){  
	    List<Add_prisoner> list=new ArrayList<Add_prisoner>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from prisoner");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            Add_prisoner u=new Add_prisoner();  
	            u.setId(rs.getInt("id"));  
	            u.setFullname(rs.getString("fullname"));  
	            u.setAge(rs.getInt("age"));  
	            u.setPrisoner_id(rs.getString("prisoner_id")); 
	            u.setCasenumber(rs.getString("casenumber"));  
	            u.setEdate(rs.getString("edate"));  
	            u.setRdate(rs.getString("rdate")); 
	            u.setEtime(rs.getString("etime"));
	            u.setCdetail(rs.getString("cdetail"));  
	            u.setAddress(rs.getString("address"));
	            u.setEcontact(rs.getString("econtact"));
	            u.setGender(rs.getString("gender"));

	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Add_prisoner getRecordById(int id){  
	    Add_prisoner u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from prisoner where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Add_prisoner();  
	            u.setId(rs.getInt("id"));  
	            u.setFullname(rs.getString("fullname"));  
	            u.setAge(rs.getInt("age"));  
	            u.setPrisoner_id(rs.getString("prisoner_id")); 
	            u.setCasenumber(rs.getString("casenumber"));  
	            u.setEdate(rs.getString("edate"));  
	            u.setRdate(rs.getString("rdate"));
	            u.setEtime(rs.getString("etime"));
	            u.setCdetail(rs.getString("cdetail"));  
	            u.setAddress(rs.getString("address"));
	            u.setEcontact(rs.getString("econtact"));
	            u.setGender(rs.getString("gender"));
	            
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}  
	}  
	    
	     