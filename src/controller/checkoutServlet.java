package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.cartDAO;
import DAO.loginDAO;
import DAO.walletDAO;

/**
 * Servlet implementation class checkoutServlet
 */
public class checkoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int amount=Integer.parseInt(request.getParameter("total"));
		HttpSession session=request.getSession();
		Integer user_id=(Integer)session.getAttribute("user_id");
		if(user_id==null) {
			response.sendRedirect("./login.jsp");
		}
		Date d = new Date();
		SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
		String issueDate = date.format(d);
		int wa=(Integer)session.getAttribute("walletAmount");
		try {
			String returnDate=new loginDAO().getReturnDate(user_id);
			if(new cartDAO().checkout(user_id,issueDate,returnDate)) {
				if(new walletDAO().changeBalance(user_id, amount)) {
					session.setAttribute("walletAmount", wa-amount);
					response.sendRedirect("./orderServlet");
				}
			}
			
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
