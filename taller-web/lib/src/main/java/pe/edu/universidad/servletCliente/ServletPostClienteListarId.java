package pe.edu.universidad.servletCliente;

import java.io.IOException;
import java.util.List;


import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;

import pe.edu.universidad.entidades.Cliente;


@WebServlet("/ServletPostClienteListarId")
public class ServletPostClienteListarId extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    public ServletPostClienteListarId() {
        super();
    }
// crear nuevo usuario cliente
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cadena = request.getParameter("cadenaBusqueda");
		DaoCliente dao = new DaoCliente();
		//List<Cliente> lst = dao.consultarUsuarioPorNombre("%" + cadena + "%");
		//request.setAttribute("lstResultadosCliente", lst);
		request.getRequestDispatcher("servletCliente/servletPostClienteEditar.jsp").forward(request, response);
		
	}

}
