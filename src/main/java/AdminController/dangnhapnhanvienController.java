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
 * Servlet implementation class dangnhapnhanvienController
 */
@WebServlet("/dangnhapnhanvien")
public class dangnhapnhanvienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapnhanvienController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("dangnhap")==null){
			try {
			String un = request.getParameter("username");
			String pass = request.getParameter("password");
			System.out.println(un +" "+ pass);
			AdminBo bo = new AdminBo();
			String kq="";
			AdminBean admin = bo.DangNhapAdmin(un, pass);
			AdminBean quanly = bo.DangNhapQuanLy(un, pass);
			AdminBean nhanvien = bo.DangNhapNhanVien(un, pass);
			if(un!=null && pass!=null) {
				if(admin!=null) {
					kq="<p style=\"color: orange;font-weight:700;\">Bạn không có quyền tham gia tài khoản admin!<a href=\"dangnhapadmin\">Vui lòng vào đây!</a></p>";
				}
				else if(quanly!=null) {
					kq="<p style=\"color:green;font-weight:700;\">Đăng nhập thành công!</p>";
					session.removeAttribute("nhanvien");
					session.removeAttribute("admin");
					session.setAttribute("ten", quanly.getTennv());
					if(quanly.getQuyen()!=null) {
						session.setAttribute("quyen", "Quản Lý");
					}
					session.setAttribute("quanly", bo.DangNhapQuanLy(un, pass));
					response.sendRedirect("trangchuController");
				}
				else if(nhanvien!=null) {
					kq = "<p style=\"color:green;font-weight:700;\">Đăng nhập thành công!</p>";
					session.setAttribute("ten", nhanvien.getTennv());
					session.removeAttribute("quanly");
					session.removeAttribute("admin");
					if(nhanvien.getQuyen()!=null) {
						session.setAttribute("quyen", "Nhân Viên");
					}
					session.setAttribute("nhanvien", bo.DangNhapNhanVien(un, pass));
				}
				else if(admin==null && quanly==null && nhanvien==null){
					kq = "<p style=\"color:red;font-weight:700;\">Tài khoản không hợp lệ!</p>";
				}
			}
			request.setAttribute("kq", kq);
			request.getRequestDispatcher("dangnhapnhanvien.jsp").forward(request, response);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("trangchuController");
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
