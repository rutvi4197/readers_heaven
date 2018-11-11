package controller;

import java.io.IOException;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.walletDAO;

/**
 * Servlet implementation class registerServlet
 */
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		BigInteger contact = new BigInteger(request.getParameter("contactNo"));
		String add1 = request.getParameter("address1");
		String add2 = request.getParameter("address2");
		String city = request.getParameter("city");
		int pincode = Integer.parseInt(request.getParameter("pincode"));
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		String type = request.getParameter("type");
		Date d = new Date();
		SimpleDateFormat date = new SimpleDateFormat("dd/MM/yyyy");
		String strDate = date.format(d);

		// System.out.println(name+" + "+type+" + "+" email ");
		try {
			if (password.equals(confirmPassword)) {
				int user_id = new loginDAO().addUser(name, email, password, 0, 0, strDate, null, 0);
				if (new loginDAO().addUserAddress(user_id, add1, add2, city, pincode, 0.0, 0.0, contact, type)) {
					HttpSession session = request.getSession();
					session.setAttribute("user_id", user_id);
					session.setAttribute("walletAmount", new walletDAO().getWalletPrice(user_id));
					response.sendRedirect("./membership.jsp");
				}
			} else {
				System.out.println("Password Not Match");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
