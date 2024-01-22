package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class xoaController
 */
@WebServlet("/xoa")
public class xoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     *      */
    public xoaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("dangnhap")!=null) {
		if(session.getAttribute("gh")!=null) {
		try {
			String them = request.getParameter("+");
			giohangbo bo = (giohangbo)session.getAttribute("gh");
			String mamon = request.getParameter("mamon");
			String tenmon = request.getParameter("tenmon");
			String anh = request.getParameter("anh");
			String tam = request.getParameter("gia");
			int gia = 0;
			
			if(tam!=null) {
				gia = Integer.parseInt(tam);
			}
			if(mamon!=null) {
				bo.Xoa(mamon);
			}
			if(them!=null) {
				bo.Them(mamon, tenmon, (int)1, anh, gia);
			}
			response.sendRedirect("hienthigiohang");
		} catch (Exception e) {
			e.printStackTrace();
		}
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
