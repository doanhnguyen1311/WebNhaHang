package AdminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.InternalFrameUI;

import bo.AdminBo;

/**
 * Servlet implementation class suamonanController
 */
@WebServlet("/suamonan")
public class suamonanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suamonanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("admin")!=null || session.getAttribute("quanly")!=null) {
			try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String mamon = request.getParameter("mamon");
			String mamonan = request.getParameter("mamonan");
			String suagia = request.getParameter("suagia");
			String ten = request.getParameter("suaten");
			System.out.println(suagia);
			int gia = 0;
			if(suagia!=null) {
				gia = Integer.parseInt(suagia);
			}
			AdminBo bo = new AdminBo();
			if(mamon!=null&&suagia!=null) {
				bo.suagia(gia, mamon);
			}
			if(ten!=null && mamonan!=null) {
				bo.suatenmon(ten, mamonan);
			}
			response.sendRedirect("quanlymonan");
			}
			catch (Exception e) {
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
