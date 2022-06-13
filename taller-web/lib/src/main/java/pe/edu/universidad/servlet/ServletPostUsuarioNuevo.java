package pe.edu.universidad.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.edu.universidad.dao.DaoUsuario;

@WebServlet("/ServletPostUsuarioNuevo")
public class ServletPostUsuarioNuevo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletPostUsuarioNuevo() {
        super();
    }
// crear nuevo usuario tecnico
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String apell_pat=request.getParameter("apell_pat");
		String apell_mat=request.getParameter("apell_mat");
		String direccion=request.getParameter("direccion");
		String TP="TP_02";
		String años=request.getParameter("años");
		String especialidad=request.getParameter("especialidad");

		String genero=request.getParameter("genero");
		
		

		DaoUsuario dao = new DaoUsuario();
		dao.insertarUsuario(id, nombre, apell_pat, apell_mat,direccion,TP,Integer.parseInt(años), especialidad, genero);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("tecnico.jsp");
		rd.forward(request, response);
		
	}
	

}
