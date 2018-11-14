package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.membershipDAO;
import DAO.userAddressDAO;
import bean.user_addressBean;

/**
 * Servlet implementation class userAddressServlet
 */
public class userAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<user_addressBean> addresss=null;
		HttpSession session=request.getSession();
		Integer id=(Integer)session.getAttribute("user_id");
		if(id==null) {
			response.sendRedirect("./login.jsp");
		}
		try {
			addresss=new userAddressDAO().getAddress(id);
			request.setAttribute("addresss", addresss);
			request.getRequestDispatcher("checkout.jsp").forward(request,response);
			
			
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
