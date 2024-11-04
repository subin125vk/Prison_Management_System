package visitor;
	import org.hibernate.Session;  
	import org.hibernate.SessionFactory;  
	import org.hibernate.Transaction;  
	import org.hibernate.boot.Metadata;  
	import org.hibernate.boot.MetadataSources;  
	import org.hibernate.boot.registry.StandardServiceRegistry;  
	import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import db.Database;
import prisoner.Add_prisoner;

import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.util.ArrayList;
	import java.util.List;

	public class Add_visitorDao {
		public static int register(Add_visitor u){    
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
		public static int update(Add_visitor u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update visitor set fullname=?,prisonervisited=?,visitorid=?,phonenumber=?,timeofvisit=?,address=?,gender=? where id=?");  
		        ps.setString(1,u.getFullname());  
		        ps.setString(2,u.getPrisonervisited()); 
		        ps.setInt(3, u.getVisitorid());
		        ps.setString(4,u.getPhonenumber());  
		        ps.setString(5,u.getTimeofvisit());  
		        ps.setString(6,u.getAddress());  
			 ps.setString(7,u.getGender());
		        ps.setInt(8,u.getId());  

				/*
				 */
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		public static int delete(Add_visitor u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from visitor where id=?");  
		        ps.setInt(1,u.getId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
		public static List<Add_visitor> getAllRecords(){  
		    List<Add_visitor> list=new ArrayList<Add_visitor>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from visitor");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		        	Add_visitor u=new Add_visitor();  
		            u.setId(rs.getInt("id"));  
		            u.setFullname(rs.getString("fullname"));  
		            u.setPrisonervisited(rs.getString("prisonervisited"));  
		            u.setVisitorid(rs.getInt("visitorid"));
		            u.setPhonenumber(rs.getString("phonenumber"));  
		            u.setTimeofvisit(rs.getString("timeofvisit"));
		            u.setAddress(rs.getString("address"));
		            u.setGender(rs.getString("gender"));

		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
		public static Add_visitor getRecordById(int id){  
		    Add_visitor u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from visitor where id=?");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Add_visitor();  
		            u.setId(rs.getInt("id"));  
		            u.setFullname(rs.getString("fullname"));  
		            u.setPrisonervisited(rs.getString("prisonervisited"));  
		            u.setVisitorid(rs.getInt("visitorid"));  
		            u.setPhonenumber(rs.getString("phonenumber")); 
		            u.setTimeofvisit(rs.getString("timeofvisit"));
		            u.setAddress(rs.getString("address"));
		            u.setGender(rs.getString("gender"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		}  


	
