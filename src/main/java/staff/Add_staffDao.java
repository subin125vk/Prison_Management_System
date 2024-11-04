package staff;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import db.Database;

public class Add_staffDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName(Database.driver);  
	        con=DriverManager.getConnection(Database.connectionUrl,Database.username,Database.password);
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(Add_staff j){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into staff(id,fullname,age,department,staff_id,phonenumber,address,gender) values(?,?,?,?,?,?,?,?)");  
	        ps.setInt(1, j.getId());
	        ps.setString(2,j.getFullname());  
	        ps.setInt(3,j.getAge());
	        ps.setString(4, j.getDepartment());
	        ps.setString(5,j.getStaff_id());  
	        ps.setString(6, j.getPhonenumber());
	        ps.setString(7, j.getAddress());
	        ps.setString(8,j.getGender() );

	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
public static int update(Add_staff u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update staff set fullname=?,age=?,department=?,staff_id=?,phonenumber=?,address=?,gender=? where id=?");  
        ps.setString(1,u.getFullname());  
        ps.setInt(2,u.getAge());  
        ps.setString(3,u.getDepartment());  
        ps.setString(4,u.getStaff_id());  
        ps.setString(5,u.getPhonenumber());  
        ps.setString(6,u.getAddress()); 
	 ps.setString(7,u.getGender());

        ps.setInt(8,u.getId());  

		/*
		 */
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int delete(Add_staff u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from staff where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<Add_staff> getAllRecords(){  
    List<Add_staff> list=new ArrayList<Add_staff>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from staff");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            Add_staff u=new Add_staff();  
            u.setId(rs.getInt("id"));  
            u.setFullname(rs.getString("fullname"));  
            u.setAge(rs.getInt("age"));  
            u.setDepartment(rs.getString("department"));  
            u.setStaff_id(rs.getString("staff_id"));  
            u.setPhonenumber(rs.getString("phonenumber"));  
            u.setAddress(rs.getString("address"));
            u.setGender(rs.getString("gender"));

            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static Add_staff getRecordById(int id){  
    Add_staff u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from staff where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new Add_staff();  
            u.setId(rs.getInt("id"));  
            u.setFullname(rs.getString("fullname"));  
            u.setAge(rs.getInt("age"));  
            u.setDepartment(rs.getString("department"));  
            u.setStaff_id(rs.getString("staff_id"));  
            u.setPhonenumber(rs.getString("phonenumber"));  
            u.setAddress(rs.getString("address"));
            u.setGender(rs.getString("gender"));  
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  

