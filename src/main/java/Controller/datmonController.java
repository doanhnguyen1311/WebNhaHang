package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class thongtindatbanController
 */
@WebServlet("/datmonController")
public class datmonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datmonController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("datban")!=null) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String makhtam = request.getParameter("makh");
			long makh = 0;
			if(makhtam!=null) {
				makh = Long.parseLong(makhtam);
			}
			String hoten = request.getParameter("hoten");
			String madatbantam = request.getParameter("madatban");
			long madatban=0;
			if(madatbantam!=null) {
				madatban = Long.parseLong(madatbantam);
			}
			String ngaydat = request.getParameter("ngaydat");
			String giodat = request.getParameter("giodat");
			String th = request.getParameter("th");
			KhachHangBo bo = new KhachHangBo();
			ArrayList<giohangbean> gh = (ArrayList<giohangbean>)session.getAttribute("ghds");
			if(th!=null) {
				for(giohangbean s:gh) {
				bo.DatMon(madatban, s.getMamon(), s.getTenmon(), s.getSoluongmua(), s.getGia(), s.getAnh(), hoten, ngaydat, giodat, makh, (long)0);
				bo.LichSuMuaHang(madatban, s.getMamon(), s.getTenmon(), s.getSoluongmua(), s.getGia(), s.getAnh(), hoten, ngaydat, giodat, makh, (long)0);
				}
			}
			response.sendRedirect("thongtindatban");
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		else {
			response.sendRedirect("datbanController");
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
