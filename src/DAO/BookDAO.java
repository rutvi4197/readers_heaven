package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import util.DBConnection;
import java.util.*;
import bean.bookBean;


public class BookDAO {
	
	 private final Connection con;
		
		public BookDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		public List<bookBean> getNewArrival() {
			
			 List<bookBean> bookList =new ArrayList<bookBean>();
		      Statement stmt;
		      bookBean b;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from book where status=0 order by book_id desc limit 7 ");
		         
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
		              bookList.add(b);
		             
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		   }
		
		public List<bookBean> getFeaturedBooks() {
			
			 List<bookBean> bookList =new ArrayList<bookBean>();
		      Statement stmt;
		      bookBean b;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select distinct * from book group by(category_id)  ");
		         
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
		              bookList.add(b);
		             
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		   }

		
		public bookBean getBookDetail(int id) {
			 Statement stmt;
		      bookBean b=null;
		      try {
		        
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from book where book_id="+id);
		         
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
		            
		             
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return b;
		}
		
		public List<bookBean> getCategoryBooks(int id,int book_id) {
			 List<bookBean> bookList =new ArrayList<bookBean>();
			 Statement stmt;
		      bookBean b=null;
		      try {
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from book where book_id!="+book_id+" and category_id="+id);
		         
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
		            
		             bookList.add(b);
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		}
		
		
		public List<bookBean> getCategoryAllBooks(int id) {
			 List<bookBean> bookList =new ArrayList<bookBean>();
			 Statement stmt;
		      bookBean b=null;
		      try {
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery("select * from book as b,category as c where b.category_id="+id+" and b.category_id=c.category_id");
		         
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
		              b.setCategory_name(rs.getString("category_name"));
		             bookList.add(b);
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		}
		
		
		public List<bookBean> searchResult(String text) {
			 List<bookBean> bookList =new ArrayList<bookBean>();
			 Statement stmt;
		      bookBean b=null;
		      try {
		    	  String query="select * from book where book_title like '%"+text+"%' or description like '%"+text+"%'";
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
		         
		             bookList.add(b);
		          }    
		    	  
		      }  catch(SQLException e) {
		          System.out.println("dao"+e);
		      }
		      return bookList;
		}
		

}
