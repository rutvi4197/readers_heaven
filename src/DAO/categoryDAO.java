package DAO;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.categoryBean;
import util.DBConnection;


public class categoryDAO {
	
	 private final Connection con;
		
		public categoryDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		  public List<categoryBean> getAllCategory(){
		      List<categoryBean> categoryList =new ArrayList<categoryBean>();
		      Statement stmt;
		      categoryBean b;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from category");
		         
		          while ( rs.next() ) 
		          {
		              b = new categoryBean();
		              b.setCategory_id(rs.getInt("category_id"));
		              b.setCategory_name(rs.getString("category_name"));
		              b.setStatus(rs.getBoolean("status"));
		              categoryList.add( b );
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return categoryList;
		   }

}
