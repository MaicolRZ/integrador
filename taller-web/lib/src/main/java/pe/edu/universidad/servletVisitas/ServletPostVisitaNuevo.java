package pe.edu.universidad.servletVisitas;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;

@WebServlet("/ServletPostVisitaNuevo")


public class ServletPostVisitaNuevo extends HttpServlet{
private static final long serialVersionUID = 1L;

public ServletPostVisitaNuevo() { 
 super();}
//crear nuevo usuario cliente
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_elec = request.getParameter("id_elec");
		String dni = request.getParameter("dni");
		String tipo_electrodomestico=request.getParameter("tipo_electrodomestico");
		String marca=request.getParameter("marca");
		String modelo=request.getParameter("modelo");
		String numero_serie=request.getParameter("numero_serie");
		String descripcion=request.getParameter("descripcion");
		String dia=request.getParameter("dia");
		String hora=request.getParameter("hora");
		String estado="En Espera";

		

		DaoCliente dao = new DaoCliente();
		dao.insertarVisita(id_elec,dni,tipo_electrodomestico,marca,modelo,numero_serie,descripcion,dia,hora, estado);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("atencion_domiclio.jsp");
		rd.forward(request, response);
		
	}
}
