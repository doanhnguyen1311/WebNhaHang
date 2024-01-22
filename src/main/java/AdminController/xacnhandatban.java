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
 * Servlet implementation class xacnhandatban
 */
@WebServlet("/xacnhandatban")
public class xacnhandatban extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhandatban() {
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
				String tam = request.getParameter("makh");
				long makh = 0;
				if(tam!=null) {
					makh = Long.parseLong(tam);
				}
				AdminBo bo = new AdminBo();
				bo.xacnhanban(makh);
				bo.xacnhanlichsu(makh);
				bo.xacnhanmon(makh);
				response.sendRedirect("thongtinkhachdatban");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else
		{
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
