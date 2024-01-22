package AdminController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.datmonbean;
import bo.AdminBo;

/**
 * Servlet implementation class trangxacnhandatbanController
 */
@WebServlet("/trangxacnhandatban")
public class trangxacnhandatbanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangxacnhandatbanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("quanly")!=null || session.getAttribute("admin")!=null) {
			try {
				String matam = request.getParameter("madatban");
				long madatban = 0;
				if(matam!=null) {
					madatban = Long.parseLong(matam);
				}
				String tam = request.getParameter("makh");
				long makh = 0;
				if(tam!=null) {
					makh = Long.parseLong(tam);
				}
				ArrayList<datmonbean> ds = null;
				AdminBo bo = new AdminBo();
				if(ds==null) {
					ds = bo.getdatbanMonAn(madatban, makh);
				}
				request.setAttribute("ds", ds);
				request.getRequestDispatcher("xacnhandatban.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("dangnhapnhanvien");
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
