package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.categoryDAO;
import DAO.cartDAO;
import bean.bookBean;
import bean.categoryBean;

/**
 * Servlet implementation class cartServlet
 */
public class cartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<categoryBean> listOfCategory = null;
		HttpSession session=request.getSession();
		Integer user_id=(Integer)session.getAttribute("user_id");
		if(user_id==null) {
			response.sendRedirect("./login.jsp");
		}
		else {
		
			try {
			listOfCategory = new categoryDAO().getAllCategory();
			List<bookBean> booklist=new cartDAO().getRentRecord(user_id);
			request.setAttribute("rentBook", booklist);
			request.setAttribute("listOfCategory", listOfCategory);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("in catch");
			e.printStackTrace();
			}
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
