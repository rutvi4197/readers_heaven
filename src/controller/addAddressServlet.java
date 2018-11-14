package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.walletDAO;

/**
 * Servlet implementation class addAddressServlet
 */
public class addAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String total=request.getParameter("total");
		String add1=request.getParameter("address1");
		String add2=request.getParameter("address2");
		String city=request.getParameter("city");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
		String contact=request.getParameter("contactNo");
		String type=request.getParameter("type");
		HttpSession session=request.getSession();
		int user_id=(Integer)session.getAttribute("user_id");
		try {
			if (new loginDAO().addUserAddress(user_id, add1, add2, city, pincode, 0.0, 0.0, contact, type)) {
				response.sendRedirect("./checkout.jsp?total="+total);
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
