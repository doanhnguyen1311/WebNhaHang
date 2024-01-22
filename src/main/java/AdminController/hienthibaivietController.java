package AdminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.baivietbean;
import bo.AdminBo;

/**
 * Servlet implementation class hienthibaivietController
 */
@WebServlet("/hienthibaiviet")
public class hienthibaivietController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hienthibaivietController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String tam = request.getParameter("mabaiviet");
			if(tam!=null) {
			long mabaiviet=0;
			if(tam!=null) {
				mabaiviet = Long.parseLong(tam);
			}
			AdminBo bo = new AdminBo();
			baivietbean ds = null;
			if(ds==null) {
				ds = bo.docbaiviet(mabaiviet);
			}
			request.setAttribute("ds", ds);
			}
			else {
				response.sendRedirect("trangchuController");
			}
			session.setAttribute("mbv", tam);
			request.getRequestDispatcher("hienthibaiviet.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
