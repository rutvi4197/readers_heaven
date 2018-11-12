package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.bookBean;
import bean.rentBean;
import util.DBConnection;


public class cartDAO {

	
	 private final Connection con;
		
		public cartDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		public List<bookBean> getRentRecord(int user_id){
			 List<bookBean> bookList =new ArrayList<bookBean>();
		      Statement stmt;
		      bookBean b;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from rent as r,book as b where b.book_id=r.library_book_mapping_id and  statusOfRent=0 and user_id= "+user_id);
		         
		          while ( rs.next() ) 
		          {
		        	  b = new bookBean();
		              b.setBook_id(rs.getInt("book_id"));
		              b.setBook_title(rs.getString("book_title"));
		              b.setAuthor(rs.getString("author"));
		              b.setEdition(rs.getInt("edition"));
		              b.setPublisher(rs.getString("publisher"));
		              b.setIsbn(rs.getString("isbn"));
		              b.setPages(rs.getInt("pages"));
		              b.setMrp(rs.getInt("mrp"));
		              b.setPhoto(rs.getString("photo"));
		              b.setCategory_id(rs.getInt("category_id"));
		              b.setDescription(rs.getString("description"));
		              b.setPublish_year(rs.getInt("publish_year"));
		              b.setBook_language(rs.getString("book_language"));
		              b.setRent_id(rs.getInt("rent_id"));
		              bookList.add(b);
		        	  
		       
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		   
		}
		
		public Boolean deleteCart(int id) {
			String sql = "DELETE FROM rent WHERE rent_id = " + id + "; ";
	        int n=0;
	        try {
	            Statement stmt = con.createStatement();
	            n = stmt.executeUpdate( sql );
	        }
	        catch(SQLException e) {
	            System.out.println(e.getMessage());
	        }
	        return n>0;
		}
		
		public Boolean addToCart(int book_id,Integer user_id,String issue_date,String  returnDate,int qun,int status)  {
			// TODO Auto-generated method stub
			int n=0;
			try {
				String query="insert into rent values(null,"+book_id+","+user_id+",'"+issue_date+"','"+returnDate+"',"+qun+","+status+");";
				Statement stmt = con.createStatement();
				n = stmt.executeUpdate( query );
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return n>0;
		}
		
		public Boolean checkout(Integer user_id,String issueDate,String returnDate) {
			String sql = "update rent set statusOfRent=1,issue_date='"+issueDate+"',return_date='"+returnDate+"'where user_id="+user_id+" and statusOfRent=0";
	        int n=0;
	        try {
	            Statement stmt = con.createStatement();
	            n = stmt.executeUpdate( sql );
	        }
	        catch(SQLException e) {
	            System.out.println(e.getMessage());
	        }
	        return n>0;
		}
		
		public List<bookBean> getOrderDetail(int user_id){
			 List<bookBean> bookList =new ArrayList<bookBean>();
		      Statement stmt;
		      bookBean b;
		      try {
		        
		    	  String query="select * from book as b,rent as r where r.library_book_mapping_id=b.book_id and r.statusOfRent=1 and r.user_id="+user_id;
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery(query);
		         
		          while ( rs.next() ) 
		          {
		        	  b = new bookBean();
		              b.setBook_id(rs.getInt("book_id"));
		              b.setBook_title(rs.getString("book_title"));
		              b.setAuthor(rs.getString("author"));
		              b.setEdition(rs.getInt("edition"));
		              b.setPublisher(rs.getString("publisher"));
		              b.setIsbn(rs.getString("isbn"));
		              b.setPages(rs.getInt("pages"));
		              b.setMrp(rs.getInt("mrp"));
		              b.setPhoto(rs.getString("photo"));
		              b.setCategory_id(rs.getInt("category_id"));
		              b.setDescription(rs.getString("description"));
		              b.setPublish_year(rs.getInt("publish_year"));
		              b.setBook_language(rs.getString("book_language"));
		              b.setRent_id(rs.getInt("rent_id"));
		              b.setIssue_date(rs.getString("issue_date"));
		              b.setReturn_date(rs.getString("return_date"));
		              bookList.add(b);
		        	  
		       
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		   
		}
}
