package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.reviewBean;
import util.DBConnection;

public class reviewDAO {


	 private final Connection con;
		
		public reviewDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		public boolean addReview(int book_id,String name,String summary,String review) {
			int n=0;
			Statement stmt;
			try {
				String query="insert into review values(null,"+book_id+",'"+name+"','"+summary+"','"+review+"');"; 
				 stmt = con.createStatement();
				n = stmt.executeUpdate( query );
			}
			 catch(SQLException e) {
				 System.out.println("dao"+e.getMessage());
		        }
			return n>0;
		}
		
		public List<reviewBean> getReview(int id) {
			
			 List<reviewBean> reviewList =new ArrayList<reviewBean>();
		      Statement stmt;
		      reviewBean b;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from review where book_id="+id);
		         
		          while ( rs.next() ) 
		          {
		        	  b=new reviewBean();
		        	  b.setReview_id(rs.getInt("review_id"));
		        	  b.setBook_id(rs.getInt("book_id"));
		        	  b.setName(rs.getString("name"));
		        	  b.setSummary(rs.getString("summary"));
		        	  b.setReview(rs.getString("review"));
		        	  reviewList.add(b);
		             
		             
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return reviewList;
		   }
		
}
