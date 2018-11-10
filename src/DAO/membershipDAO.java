package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.bookBean;
import bean.membership_cardBean;
import bean.membership_month_mapping;
import util.DBConnection;

public class membershipDAO {

	private final Connection con;
	
	public membershipDAO()  throws ClassNotFoundException, SQLException {
        con = DBConnection.getInstance().getConnection();   
    }
	
	public List<membership_cardBean> getMembershipDetail(){
		 List<membership_cardBean> membershipList =new ArrayList<membership_cardBean>();
	      Statement stmt;
	      membership_cardBean mc;
	      try {
	        
	    	  stmt = con.createStatement();        
	          ResultSet rs = stmt.executeQuery("select * from membership_card");
	         
	          while ( rs.next() ) 
	          {
	        	 mc=new membership_cardBean();
	        	 mc.setMcard_id(rs.getInt("mcard_id"));
	        	 mc.setTitle(rs.getString("title"));
	        	 membershipList.add(mc);
	          }    
	    	  
	      }  catch(SQLException e) {
	          System.out.println("dao"+e);
	      }
	      return membershipList;
	   
	}
	
	public List<membership_month_mapping> getMembershipMonthDetail(){
		 List<membership_month_mapping> monthList =new ArrayList<membership_month_mapping>();
	      Statement stmt;
	      membership_month_mapping mc;
	      try {
	        
	    	  stmt = con.createStatement();        
	          ResultSet rs = stmt.executeQuery("select * from membership_month_mapping");
	         
	          while ( rs.next() ) 
	          {
	        	 mc=new membership_month_mapping();
	        	 mc.setMonth_id(rs.getInt("month_id"));
	        	 mc.setMcard_id(rs.getInt("Mcard_id"));
	        	 mc.setPrice(rs.getInt("price"));
	        	 mc.setMonth_number(rs.getInt("month_number"));
	        	 monthList.add(mc);
	        	
	          }    
	    	  
	      }  catch(SQLException e) {
	          System.out.println("dao"+e.getMessage());
	      }
	      return monthList;
	   
	}
	
}
