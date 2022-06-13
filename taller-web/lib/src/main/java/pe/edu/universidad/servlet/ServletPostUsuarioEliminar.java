package pe.edu.universidad.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoUsuario;

@WebServlet("/ServletPostUsuarioEliminar")
public class ServletPostUsuarioEliminar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletPostUsuarioEliminar() {
        super();
    }
// crear nuevo usuario tecnico
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");


		DaoUsuario dao = new DaoUsuario();
		dao.eliminarUsuario(id);
		
		RequestDispatcher rd;
		
		rd=request.getRequestDispatcher("tecnico.jsp");
		rd.forward(request, response);
		
	}
	

}
