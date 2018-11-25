package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.membershipDAO;
import DAO.walletDAO;

/**
 * Servlet implementation class addMembershipServlet
 */
public class addMembershipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addMembershipServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		int month=Integer.parseInt(request.getParameter("month"));
		int monthday=month*30;
		HttpSession session=request.getSession();
		Integer user_id=(Integer)session.getAttribute("user_id");
		
		if(user_id==null) {
			response.sendRedirect("./login.jsp");
		}
		Date d = new Date();
		SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
		String strDate = date.format(d);
		
		 Calendar cal = Calendar.getInstance();
	        cal.setTimeZone(TimeZone.getTimeZone("GMT"));
	        cal.add(Calendar.DATE, monthday);
	        String returnDate= cal.get(Calendar.DATE) +"/" +
	                (cal.get(Calendar.MONTH)+1) + "/" + cal.get(Calendar.YEAR);
		
		try {
			if(new loginDAO().updateMembership(user_id, id,strDate,returnDate))
			{
				session.setAttribute("walletAmount", new walletDAO().getWalletPrice(user_id));
				response.sendRedirect("./index.jsp");
			}
		}catch(Exception e) {
			System.out.print(e.getMessage());
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
