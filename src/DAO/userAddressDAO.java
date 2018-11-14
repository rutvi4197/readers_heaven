package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.userBean;
import bean.user_addressBean;
import util.DBConnection;

public class userAddressDAO {
	
	 private final Connection con;
		
		public userAddressDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
	public List<user_addressBean> getAddress(int id) {
			List<user_addressBean> add=new ArrayList<user_addressBean>();
			Statement stmt;
			user_addressBean user=null;
			int n=0;
			 try {
			        String query="select * from user_address where user_id= "+id;
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery(query);
		          while(rs.next()){
		        	user=new user_addressBean();
		        	user.setUser_address_id(rs.getInt("user_address_id"));
		        	user.setUser_id(rs.getInt("user_id"));
		        	user.setUser_address(rs.getString("user_address_1")+" "+rs.getString("user_address_2"));
		        	user.setCity(rs.getString("city"));
		        	user.setPincode(rs.getInt("pincode"));
		        	user.setContact_no(rs.getString("contact_no"));
		        	user.setAddress_type(rs.getString("address_type"));
		        	add.add(user);
		          }  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
			return add;
		}

}
