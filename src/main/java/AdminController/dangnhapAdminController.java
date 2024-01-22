package AdminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdminBean;
import bo.AdminBo;

/**
 * Servlet implementation class dangnhapAdminController
 */
@WebServlet("/dangnhapadmin")
public class dangnhapAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			String un = request.getParameter("un");
			String pass = request.getParameter("pass");
			AdminBo bo = new AdminBo();
			String kq="";
			if(un!=null && pass!=null) {
			if(bo.DangNhapAdmin(un, pass)!=null) {
				session.setAttribute("admin", bo.DangNhapAdmin(un, pass));
				session.removeAttribute("quanly");
				session.removeAttribute("nhanvien");
				session.removeAttribute("ten");
				session.removeAttribute("quyenhan");
				kq = "<p style=\"color:green;font-weight:700;\">Đăng nhập thành công!</p>";
			}
			else {
				kq = "<p style=\"color:red;font-weight:700;\">Tài khoản không hợp lệ!</p>";
			}
			}
			request.setAttribute("kqadmin", kq);
			request.getRequestDispatcher("dangnhapadmin.jsp").forward(request, response);
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
