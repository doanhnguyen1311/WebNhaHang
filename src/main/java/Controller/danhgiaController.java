package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.binhluanbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class danhgiaController
 */
@WebServlet("/danhgia")
public class danhgiaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public danhgiaController() {
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
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				KhachHangBo bo = new KhachHangBo();
				String cmt = request.getParameter("cmt");
				String hoten = request.getParameter("hoten");
				String tam = request.getParameter("makh");
				long makh=0;
				if(tam!=null) {
					makh = Long.parseLong(tam);
				}
				String th = request.getParameter("th");
				if(th!=null) {
					bo.binhluan(cmt, makh, hoten);
					response.sendRedirect("trangdanhgia");
				}
				request.getRequestDispatcher("danhgia.jsp").forward(request, response);
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
