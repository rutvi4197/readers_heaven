package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.membershipDAO;
import bean.membership_cardBean;
import bean.membership_month_mapping;

/**
 * Servlet implementation class membershipServlet
 */
public class membershipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public membershipServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<membership_cardBean> membership=null;
		List<membership_month_mapping> month=null;
		try {
			membership=new membershipDAO().getMembershipDetail();
			month=new membershipDAO().getMembershipMonthDetail();
			request.setAttribute("membership", membership);
			request.setAttribute("month", month);
			request.getRequestDispatcher("membership.jsp").forward(request,response);
			
			
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
