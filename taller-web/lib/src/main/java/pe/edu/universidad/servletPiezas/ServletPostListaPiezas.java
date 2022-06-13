package pe.edu.universidad.servletPiezas;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dto.DtoPiezas;
import pe.edu.universidad.ejb.EJBPiezas;

/**
 * Servlet implementation class ServletPostEstudiante
 */
@WebServlet("/ServletPostListaPiezas")
public class ServletPostListaPiezas extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private EJBPiezas ejb;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPostListaPiezas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String id_tecnico = request.getParameter("id_tecnico");

		List<DtoPiezas> lst =ejb.listaPiezas();
		request.getSession().setAttribute("lstServiciosTecnico", lst);
		request.getRequestDispatcher("hojaTrabajo.jsp").forward(request, response);
	}

}
