package AdminController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.AdminBo;

/**
 * Servlet implementation class huybanAdmin
 */
@WebServlet("/huybanAdmin")
public class huybanAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public huybanAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("quanly")!=null || session.getAttribute("admin")!=null) {
			try {
				String matam = request.getParameter("madatban");
				String tam = request.getParameter("makh");
				long makh = 0, madatban=0;
				if(tam!=null) {
					makh = Long.parseLong(tam);
				}
				if(matam!=null) {
					madatban = Long.parseLong(matam);
				}
				AdminBo bo = new AdminBo();
				bo.adminxoaban(makh, madatban);
				bo.adminxoamon(makh);
				response.sendRedirect("lichsukhachdatban");
				} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else {
			response.sendRedirect("dangnhapnhanvien");
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
