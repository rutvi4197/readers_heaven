package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.categoryBean;
import DAO.categoryDAO;
import java.util.*;

/**
 * Servlet implementation class categoryServlet
 */
public class categoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<categoryBean> listOfCategory = null;
		String str=request.getParameter("action");
			try {
			listOfCategory = new categoryDAO().getAllCategory();
			request.setAttribute("listOfCategory", listOfCategory);
			request.getRequestDispatcher(str).forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("in catch");
			e.printStackTrace();
			}
	}

}
