package pe.edu.universidad.servlet;

import java.io.IOException; 
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;
import pe.edu.universidad.dao.DaoUsuario;
import pe.edu.universidad.entidades.Cliente;
import pe.edu.universidad.entidades.Usuario;

/**
 * Servlet implementation class ServletPostCursoBusqueda
 */
@WebServlet("/ServletPostCursoBusqueda")
public class ServletPostCursoBusqueda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPostCursoBusqueda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cadena = request.getParameter("cadenaBusqueda");
		DaoCliente dao = new DaoCliente();
		List<Cliente> lst = dao.consultarUsuarioPorNombre("%" + cadena + "%");
		request.setAttribute("lstResultadosClientes", lst);
		
		
	}

}
