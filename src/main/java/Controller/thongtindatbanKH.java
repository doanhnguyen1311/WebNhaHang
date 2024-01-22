package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.datbanbean;
import bean.khachhangbean;
import bo.AdminBo;
import bo.KhachHangBo;

/**
 * Servlet implementation class thongtindatbanKH
 */
@WebServlet("/thongtindatbanKH")
public class thongtindatbanKH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongtindatbanKH() {
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
			ArrayList<datbanbean> ds = null;
			khachhangbean kh = (khachhangbean)session.getAttribute("dangnhap");
			KhachHangBo bo = new KhachHangBo();
			if(ds==null) {
				ds = bo.danhsachdatban(kh.getMakh());
			}
			request.setAttribute("ds", ds);
			request.getRequestDispatcher("lichsumuahangadmin.jsp").forward(request, response);
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
