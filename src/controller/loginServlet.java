package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.loginDAO;
import DAO.walletDAO;
import bean.userBean;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();	
		try {
		userBean user=new loginDAO().checkLogin(email, password);
		if(user!=null)
		{
			
			session.setAttribute("user_id", user.getUser_id());
			session.setAttribute("walletAmount", new walletDAO().getWalletPrice(user.getUser_id()));
			response.sendRedirect("index.jsp");
		}
		else
		{
			session.setAttribute("loginError", "Email or Password is incorrect");
			response.sendRedirect("login.jsp");
		}
		
		}
		catch(Exception e)
		{
			System.out.println("Login Servlet "+e);
		}
	}

}
