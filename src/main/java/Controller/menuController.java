package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import bean.loaibean;
import bean.monanbean;
import bo.loaibo;
import bo.monanbo;

/**
 * Servlet implementation class menuController
 */
@WebServlet("/menuController")
public class menuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public menuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			String maloai = request.getParameter("maloai");
			String soluong = request.getParameter("trang");
			int trang = 0;
			if(soluong==null) {
				soluong="1";
			}
			monanbean mb = null;
			trang = Integer.parseInt(soluong);
			loaibo bo = new loaibo();
			monanbo monan = new monanbo();
			ArrayList<monanbean> ds = null;
			ArrayList<loaibean> dsloai = bo.getloai();
			if(maloai==null) {
				ds=monan.getmonan(trang);
			}
			else {
				ds=monan.getmon(maloai);
			}
			mb = monan.getmon();
			session.setAttribute("monan", mb);
			session.setAttribute("dsloai", dsloai);
			session.setAttribute("ds", ds);
			request.getRequestDispatcher("menu.jsp").forward(request, response);
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
