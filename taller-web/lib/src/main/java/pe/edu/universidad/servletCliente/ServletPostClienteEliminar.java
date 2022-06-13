package pe.edu.universidad.servletCliente;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;


@WebServlet("/ServletPostClienteEliminar")
public class ServletPostClienteEliminar extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
    
    public ServletPostClienteEliminar() {
        super();
    }
// crear nuevo usuario tecnico
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		DaoCliente dao = new DaoCliente();
		dao.eliminarUsuario(id);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("cliente.jsp");
		rd.forward(request, response);
	}
	
	
}
