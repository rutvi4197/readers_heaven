package DAO;

import java.math.BigInteger;
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
		    	  stmt = con.createStatement();        
		          ResultSet rs = stmt.executeQuery(query);
		          while(rs.next()) {
		        	n++;
		        	user=new userBean();
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
		
		public int addUser(String name,String email,String password,int membership_id,int status,String createdOn,String modified_on,int wallet_id) {
			int n=0;
			int id=0;
			try {
				String query="insert into user values(null,'"+name+"','"+email+"','"+password+"',"+membership_id+","+status+",'"+createdOn+"','"+
						modified_on+"',"+wallet_id+",null,null);";
			
				Statement stmt = con.createStatement();
				n = stmt.executeUpdate( query );
				
				String select="select user_id from user order by user_id desc limit 1";
				ResultSet rs = stmt.executeQuery( select );
				while(rs.next())
				id=rs.getInt("user_id");
				
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return id;
			
			
		}
		
		public Boolean addUserAddress(int user_id,String add1,String add2,String city,int pincode,double lot,double lat,String contact,String type) {
			int n=0;
			
			try {
				String query="insert into user_address values(null,"+user_id+",'"+add1+"','"+add2+"','"+city+"',"+pincode+","+lot+","+lat+",'"+contact+"','"+type+"');";
			
				Statement stmt = con.createStatement();
				n = stmt.executeUpdate( query );
				
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return n>0;
		}
		
		
		public Boolean updateMembership(int user_id,int mid,String issueDate,String returnDate) {
			int n=0;
			
			try {
				String query="update user set membership_id="+mid+",wallet_id="+user_id+",membership_issue_date='"+issueDate
						+ "',membership_return_date='"+returnDate+"' where user_id="+user_id+";";
			
				Statement stmt = con.createStatement();
				n = stmt.executeUpdate( query );
				new walletDAO().addWalletDetail(user_id, mid);
				
			}
			catch(ClassNotFoundException c) {
				System.out.println(c.getMessage());
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return n>0;
		}
		
		public String getReturnDate(int user_id) {
				String returnDate="";
			
			try {
				String query="select membership_return_date from user where user_id="+user_id;
			
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery( query );
				while(rs.next()) {
					returnDate=rs.getString("membership_return_date");
				}
				
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return returnDate;
		}

		
}
