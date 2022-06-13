package pe.edu.universidad.servletVisitas;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;

@WebServlet("/ServletPostAsignarTecnico")
public class ServletPostAsignarTecnico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletPostAsignarTecnico() {
        super();
    }
// crear nuevo repuesto pieza
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_elec = request.getParameter("id_elec");
		String tecnico_id = request.getParameter("tecnico_id");
		String estado ="Asignado";
		
		

		DaoCliente dao = new DaoCliente();
		dao.EditarAsignarTecnico(id_elec,tecnico_id,estado);
	
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("atencion_domicilio.jsp");
		rd.forward(request, response);
		
	}
	

}
