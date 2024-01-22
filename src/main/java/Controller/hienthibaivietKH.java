package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;

import bean.baivietbean;
import bo.AdminBo;
import bo.KhachHangBo;

/**
 * Servlet implementation class hienthibaivietKH
 */
@WebServlet("/hienthibaivietKH")
public class hienthibaivietKH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hienthibaivietKH() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
    	try {
			String tam = request.getParameter("mabaiviet");
			if(tam!=null) {
			long mabaiviet=0;
			if(tam!=null) {
				mabaiviet = Long.parseLong(tam);
			}
			KhachHangBo bo = new KhachHangBo();
			baivietbean ds = null;
			if(ds==null) {
				ds = bo.docbaiviet(mabaiviet);
			}
			request.setAttribute("ds", ds);
			}
			else {
				response.sendRedirect("trangchuController");
			}
			
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
