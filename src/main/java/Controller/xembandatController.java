package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.datmonbean;
import bean.khachhangbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class xembandatController
 */
@WebServlet("/xembandatController")
public class xembandatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xembandatController() {
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
			KhachHangBo bo = new KhachHangBo();
			ArrayList<datmonbean> ds = null;
			if(ds==null) {
				ds=bo.xembandat(kh.getMakh());
			}
			long tong=0;
			for(datmonbean s:ds) {
				tong = tong + s.getGia()*s.getSoluong();
				request.setAttribute("ds", ds);
			}
			ArrayList<datmonbean> kiemtra = null;
			if(kiemtra==null) {
				kiemtra=bo.kiemtrabandadat(kh.getMakh());
			}
			for(datmonbean s:kiemtra) {
				tong = tong + s.getGia()*s.getSoluong();
			}
			request.setAttribute("ktr", kiemtra);
			session.removeAttribute("tong");
			request.setAttribute("tong", tong);
			request.getRequestDispatcher("thongtindatban.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("dangnhapController")
;		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
