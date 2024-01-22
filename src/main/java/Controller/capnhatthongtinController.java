package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.KhachHangBo;

/**
 * Servlet implementation class capnhatthongtinController
 */
@WebServlet("/capnhatthongtin")
public class capnhatthongtinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public capnhatthongtinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		if(session.getAttribute("dangnhap")!=null) {
			try {
				String ma = request.getParameter("makh");
				long makh = 0;
				if(ma!=null) {
					makh=Long.parseLong(ma);
				}
				String hoten = request.getParameter("hoten");
				String email = request.getParameter("email");
				String tam =request.getParameter("sdt");
				String th = request.getParameter("th");
				int sdt = 0;
				if(tam!=null) {
					sdt = Integer.parseInt(tam);
				}
				KhachHangBo bo = new KhachHangBo();
				if(th!=null) {
				boolean kh = bo.capnhatthongtin(makh, hoten, email, sdt);
				if(kh) {
					request.setAttribute("ok", "<p style=\"color:green;font-size:14px;\">Cập nhật thành công!</p>");
				}
				}
				request.getRequestDispatcher("capnhatthongtinkhachhang.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("dangnhapController");
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
