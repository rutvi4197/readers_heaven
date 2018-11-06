package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.userBean;
import util.DBConnection;

public class loginDAO {
	
	 private final Connection con;
		
		public loginDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		public userBean checkLogin(String email,String password) {
			
			Statement stmt;
			userBean user=null;
			int n=0;
			 try {
			        String query="select * from user where email= '"+email+"'and password='"+password+"' and status=0;";
			        System.out.println(query);
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery(query);
		          while(rs.next()) {
		        	n++;
		        	user=new userBean();
		        	System.out.println(rs.getString("name"));
		        	user.setUser_id(rs.getInt("user_id"));
		          }
		          if(n==1)
		          {
		        	  return user;
		          }
		          
		          else {
		        	  return null;
		          }
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
			return null;
		}

}
