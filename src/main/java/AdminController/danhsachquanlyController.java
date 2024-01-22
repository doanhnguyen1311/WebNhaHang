package AdminController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdminBean;
import bo.AdminBo;

/**
 * Servlet implementation class danhsachquanlyController
 */
@WebServlet("/danhsachquanly")
public class danhsachquanlyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public danhsachquanlyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("admin")!=null) {
		try {
			ArrayList<AdminBean> ds = null;
			AdminBo bo = new AdminBo();
			if(ds==null) {
				ds = bo.getquanly();
			}
			request.setAttribute("ds", ds);
			request.getRequestDispatcher("danhsachquanly.jsp").forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		}
		else {
			response.sendRedirect("dangnhapadmin");
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
