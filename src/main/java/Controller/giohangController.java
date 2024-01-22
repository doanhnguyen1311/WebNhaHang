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
import bean.khachhangbean;
import bo.giohangbo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohang")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("dangnhap")!=null) {
			if(session.getAttribute("datban")!=null) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String mamon = request.getParameter("mamon");
			String tenmon = request.getParameter("tenmon");
			String anh = request.getParameter("anh");
			String giatam = request.getParameter("gia");
			String them = request.getParameter("+");
			int gia = 0;
			if(giatam!=null) {
				gia = Integer.parseInt(giatam);
			}
			giohangbo gh = null;
			if(session.getAttribute("gh")==null) {
				gh = new giohangbo();
				session.setAttribute("gh", gh);
			}
			gh=(giohangbo)session.getAttribute("gh");
			if(mamon!=null&&tenmon!=null&&anh!=null&&giatam!=null) {
				gh.Them(mamon, tenmon, (int)1, anh, gia);
			}
			if(them!=null){
				gh.Them(mamon, tenmon, (int)1, anh, gia);
			}
			ArrayList<giohangbean> ds = null;
			if(session.getAttribute("gh")==null) {
				ds = new ArrayList<giohangbean>();
				session.setAttribute("ghds", ds);
			}
			ds = ((giohangbo)session.getAttribute("gh")).ds;
			long tong=0;
			tong = gh.Tong();
			session.setAttribute("tong", tong);
			session.setAttribute("ghds", ds);
			session.setAttribute("gh", gh);
			request.getRequestDispatcher("menu.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
			}
			else {
				khachhangbean kh = (khachhangbean)session.getAttribute("dangnhap");
				response.sendRedirect("datbanController?makh="+kh.getMakh());
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
