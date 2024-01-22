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
 * Servlet implementation class ThemBaiVietController
 */
@WebServlet("/ThemBaiViet")
public class ThemBaiVietController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemBaiVietController() {
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
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String tieude = request.getParameter("tieude");
			String noidung = request.getParameter("noidung");
			AdminBo bo = new AdminBo();
			if(tieude!=null && noidung!=null) {
				bo.ThemBaiViet(tieude, noidung);
			}
			response.sendRedirect("quanlybaiviet");
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
