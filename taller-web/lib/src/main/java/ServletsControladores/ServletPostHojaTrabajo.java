package ServletsControladores;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dto.DtoHojaServicio;
import pe.edu.universidad.ejb.*;

/**
 * Servlet implementation class ServletPostEstudiante
 */
@WebServlet("/ServletPostHojaTrabajo")
public class ServletPostHojaTrabajo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private EJBHojaServicio ejb;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPostHojaTrabajo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_tecnico = request.getParameter("id_tecnico");

		List<DtoHojaServicio> lst =ejb.consultarTecnicoPorId(id_tecnico);
		request.getSession().setAttribute("lstServiciosTecnico", lst);
		request.getRequestDispatcher("hojaTrabajo.jsp").forward(request, response);
	}

}
