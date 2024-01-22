package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;

import bean.datbanbean;
import bean.datmonbean;
import bean.khachhangbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class thongtindatbanController
 */
@WebServlet("/thongtindatban")
public class thongtindatbanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongtindatbanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("dangnhap")!=null) {
			try {
			khachhangbean kh = (khachhangbean)session.getAttribute("dangnhap");
			datbanbean db = null;
			if(session.getAttribute("datban")!=null) {
				 db = (datbanbean)session.getAttribute("datban");
			}
			KhachHangBo bo = new KhachHangBo();
			ArrayList<datmonbean> ds = null;
			if(ds==null) {
				ds = bo.getdatbanMonAn(db.getMadatban(), db.getNgay(), db.getGio(), kh.getMakh());
			}
			request.setAttribute("ds", ds);
			session.removeAttribute("ghds");
			session.removeAttribute("datban");
			request.getRequestDispatcher("thongtindatban.jsp").forward(request, response);
			}
			catch (Exception e) {
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
