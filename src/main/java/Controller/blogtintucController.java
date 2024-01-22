package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.baivietbean;
import bo.KhachHangBo;

/**
 * Servlet implementation class blogtintucController
 */
@WebServlet("/blogtintuc")
public class blogtintucController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public blogtintucController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			KhachHangBo bo = new KhachHangBo();
			ArrayList<baivietbean> ds = null;
			if(ds==null) {
				ds = bo.getbaiviet();
			}
			ArrayList<baivietbean> dsmoi = null;
			if(dsmoi==null) {
				dsmoi = bo.getbaivietmoi();
			}
			request.setAttribute("dsmoi", dsmoi);
			request.setAttribute("ds", ds);
			request.getRequestDispatcher("blogtintuc.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
