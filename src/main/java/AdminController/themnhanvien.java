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
 * Servlet implementation class themnhanvien
 */
@WebServlet("/themnhanvien")
public class themnhanvien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themnhanvien() {
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
				AdminBo bo = new AdminBo();
				String un = request.getParameter("un");
				String pass = request.getParameter("pass");
				String tennv = request.getParameter("tennv");
				String quyen = request.getParameter("quyenhan");
				String luongtam = request.getParameter("luong");
				int luong = 0;
				System.out.println(quyen);
				String kq = "";
				String th  =request.getParameter("th");
				if(luongtam!=null) {
					luong = Integer.parseInt(luongtam);
				}
				if(un!=null&&pass!=null&&tennv!=null&&quyen!=null&&luongtam!=null) {
				if(bo.KiemTraDangKyAdmin(un)==null && th!=null) {
				if(session.getAttribute("admin")!=null && quyen.equals("qlzadbjahsgdprdfesadassxxaeewcffgfvfessfsfs")) {
					
						bo.DangKyNhanVien(tennv, un, pass, "quanly", luong);
						kq="Thêm thành công!";
				}
				else {
					if(quyen.equals("nhanvien")) {
						bo.DangKyNhanVien(tennv, un, pass, "nhanvien", luong);
						kq="Thêm thành công!";
					}
					else {
						kq="Thông tin không chính xác!";	
					}
					}
				}
				
				else {
					kq="Tên tài khoản đã tồn tại";
				}
				}
				if(quyen==null && th!=null) {
					kq = "Vui lòng chọn quyền hạn!";
				}
				request.setAttribute("kq", kq);
				request.getRequestDispatcher("themnhanvien.jsp").forward(request, response);
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
