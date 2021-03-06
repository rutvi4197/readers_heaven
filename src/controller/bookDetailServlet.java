package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookDAO;
import bean.bookBean;
import bean.reviewBean;
import DAO.reviewDAO;

/**
 * Servlet implementation class bookDetailServlet
 */
public class bookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int book_id=Integer.parseInt(request.getParameter("id"));
		try {
			bookBean book = new BookDAO().getBookDetail(book_id);
			
			List<bookBean> catBook=new BookDAO().getCategoryBooks(book.getCategory_id(),book.getBook_id());
			List<reviewBean> reviews=new reviewDAO().getReview(book_id);
					
				request.setAttribute("bookDetail", book);
				request.setAttribute("catBook", catBook);
				request.setAttribute("reviews", reviews);
				request.getRequestDispatcher("viewBook.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("in catch");
				e.printStackTrace();
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		}

}
