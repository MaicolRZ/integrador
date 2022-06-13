package pe.edu.universidad.servletCliente;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoCliente;

@WebServlet("/ServletPostClienteEditar")
public class ServletPostClienteEditar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletPostClienteEditar() {
        super();
    }
// crear nuevo usuario cliente
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dni = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String apell_pat=request.getParameter("apell_pat");
		String apell_mat=request.getParameter("apell_mat");
		String telefono=request.getParameter("telefono");
		String direccion=request.getParameter("direccion");
		String genero=request.getParameter("genero");
		
		DaoCliente dao = new DaoCliente();
		
		dao.editarCliente(dni, nombre, apell_pat, apell_mat, telefono, direccion, genero);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("cliente.jsp");
		rd.forward(request, response);
		
	}
	

}
