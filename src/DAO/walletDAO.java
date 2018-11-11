package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import util.DBConnection;

public class walletDAO {
	 private final Connection con;
		
		public walletDAO()  throws ClassNotFoundException, SQLException {
	        con = DBConnection.getInstance().getConnection();   
	    }
		
		public int getWalletPrice(int id) {
				int n=0;
			
			try {
				String query="select * from wallet where wallet_id="+id;
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery( query );
				while(rs.next()) {
					n=rs.getInt("amount");
		
				}
				
			}
			 catch(SQLException e) {
		            System.out.println(e.getMessage());
		        }
			return n;
		}
		
		public Boolean changeBalance(int user_id,int total) {
			int n=0;
		
		try {
			String query="update wallet set amount=amount-"+total+" where wallet_id="+user_id;
			Statement stmt = con.createStatement();
			n = stmt.executeUpdate(query);
			
			
		}
		 catch(SQLException e) {
	            System.out.println(e.getMessage());
	        }
		return n>0;
	}
		
		public Boolean addWalletDetail(int user_id,int mid) {
			int n=0;
		
		try {
			int price=new membershipDAO().getMembershipPrice(mid);
			String query="insert into wallet values("+user_id+","+price+");";
			Statement stmt = con.createStatement();
			n = stmt.executeUpdate( query );
			
		}
		catch(ClassNotFoundException c) {
		    System.out.println(c.getMessage());
		}
		 catch(SQLException e) {
	            System.out.println(e.getMessage());
	        }
		return n>0;
	}
}
