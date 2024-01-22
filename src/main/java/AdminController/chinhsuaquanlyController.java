package AdminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.AdminBo;

/**
 * Servlet implementation class chinhsuaquanlyController
 */
@WebServlet("/chinhsuaquanly")
public class chinhsuaquanlyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chinhsuaquanlyController() {
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
			String xoa = request.getParameter("xoa");
			long xoanv=0;
			String quyen="quanly";
			if(xoa!=null) {
				xoanv = Long.parseLong(xoa);
			}
			long manv = 0;
			String manvtam = request.getParameter("manv");
			if(manvtam!=null) {
				manv=Long.parseLong(manvtam);
			}
			AdminBo bo = new AdminBo();
			if(manvtam!=null) {
				bo.HaChucNhanVien(manv);
			}
			if(xoa!=null) {
				bo.xoanhanvien(xoanv, quyen);
			}
			response.sendRedirect("danhsachquanly");
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
