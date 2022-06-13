package pe.edu.universidad.servletPiezas;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoPiezas;


@WebServlet("/ServletPostPiezasEliminar")
public class ServletPostPiezasEliminar extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
    
    public ServletPostPiezasEliminar() {
        super();
    }
// Eliminar Piezas seleccionada
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id_piezas");
		
		DaoPiezas dao = new DaoPiezas();
		dao.eliminarPiezas(id);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("piezas.jsp");
		rd.forward(request, response);
	}
	
	
}
