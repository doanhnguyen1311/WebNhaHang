package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.datbanbean;
import bean.khachhangbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class datbanController
 */
@WebServlet("/datbanController")
public class datbanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datbanController() {
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
			KhachHangBo kh = new KhachHangBo();
			String sdt = request.getParameter("sdt");
			int sodt=0;
			if(sdt!=null) {
				sodt=Integer.parseInt(sdt);
			}
			String ngay = request.getParameter("ngay");
			String gio = request.getParameter("gio");
			String sl = request.getParameter("soluong");
			String makhtam = request.getParameter("makh");
			System.out.println(makhtam);
			long makh=0;
			if(makhtam!=null) {
				makh = Long.parseLong(makhtam);
			}
			int soluong=0;
			if(sl!=null) {
				soluong = Integer.parseInt(sl);
			}
			khachhangbean khachhang = (khachhangbean)session.getAttribute("dangnhap");
			datbanbean db = null;
			String kq="";
			if(sdt!=null&&ngay!=null&&gio!=null&&sl!=null) {
			boolean datban = kh.DatBan(khachhang.getHoten(), sodt, ngay, gio, soluong,makh);
			if(datban) {
				db = kh.getdatban(makh, ngay, gio);
				kh.XoaBanDat(khachhang.getMakh());
				session.setAttribute("datban", db);
				kq = "Đặt bàn thành công! ---------> <a class=\"btn btn-success\" href=\"menuController\">Chọn món</a>";
				}
			}
			else {
				kq="<p style=\"color: red; font-size:12px;\">Vui lòng nhập thông tin đặt bàn</p>";
			}
			request.setAttribute("kq", kq);
			request.getRequestDispatcher("datban.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}else {
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
