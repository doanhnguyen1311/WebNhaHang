package AdminController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loaibean;
import bo.AdminBo;

/**
 * Servlet implementation class themmonanController
 */
@WebServlet("/themmonanController")
public class themmonanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themmonanController() {
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
			String th = request.getParameter("th");
			String mamon=request.getParameter("mamon");
			String tenmon = request.getParameter("tenmon");
			String maloai = request.getParameter("maloai");
			String giatam = request.getParameter("gia");
			int gia = 0;
			String kq="";
			System.out.println(mamon+" "+tenmon+" "+maloai+" "+giatam);
			if(giatam!=null) {
				gia = Integer.parseInt(giatam);
			}
			if(maloai==null && th!=null) {
				kq = "Bạn chưa chọn mã loại";
			}
			if(mamon!=null && tenmon!=null && maloai!=null && giatam!=null) {
				if(bo.kiemtramonan(mamon)==null) {
					kq="Thêm Thành Công!";
					bo.themmon(mamon, tenmon, gia, maloai);
				}
				else {
					kq="Mã món đã tồn tại!";
				}
			}
			ArrayList<loaibean> dsloai = null;
			if(dsloai==null) {
				dsloai = bo.getloai();
			}
			request.setAttribute("kq", kq);
			request.setAttribute("dsloai", dsloai);
			request.getRequestDispatcher("themmonan.jsp").forward(request, response);
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
