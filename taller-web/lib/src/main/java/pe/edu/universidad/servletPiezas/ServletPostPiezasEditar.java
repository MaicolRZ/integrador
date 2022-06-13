package pe.edu.universidad.servletPiezas;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoPiezas;

@WebServlet("/ServletPostPiezasEditar")
public class ServletPostPiezasEditar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletPostPiezasEditar() {
        super();
    }
// crear nuevo repuesto pieza
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_pieza = request.getParameter("id_pieza");
		String nombre = request.getParameter("nombre");
		String id_categoria=request.getParameter("id_categoria");
		int precio=Integer.parseInt(request.getParameter("precio"));
		int stock=Integer.parseInt(request.getParameter("stock"));
		
		

		DaoPiezas dao = new DaoPiezas();
		dao.editarPiezas(id_pieza, nombre, id_categoria, precio,stock);
	
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("piezas.jsp");
		rd.forward(request, response);
		
	}
	

}
