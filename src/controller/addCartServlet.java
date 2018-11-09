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

/**
 * Servlet implementation class addCartServlet
 */
public class addCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		Date d=new Date();
		SimpleDateFormat date=new SimpleDateFormat("dd/MM/yyyy");
		String strDate=date.format(d);
		HttpSession session=request.getSession();
		Integer user_id=(Integer)session.getAttribute("user_id");
		System.out.println(strDate);
		if(user_id==null) {
			response.sendRedirect("./login.jsp");
		}
		String issueDate=date.toString();
		try {
			if(new cartDAO().addToCart(id,user_id,strDate,"",1,0)) {
				response.sendRedirect("./bookDetailServlet?id="+id);
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
