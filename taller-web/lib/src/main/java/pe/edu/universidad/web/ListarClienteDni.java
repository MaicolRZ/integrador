package pe.edu.universidad.web;

import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import pe.edu.universidad.dao.DaoCliente;

import pe.edu.universidad.entidades.Cliente;


	@WebListener
	public class ListarClienteDni implements ServletContextListener {

		@Override
		public void contextInitialized(ServletContextEvent sce) {
	
			ServletContextListener.super.contextInitialized(sce);
			System.out.println("OJO: contextInitialized");

			
			DaoCliente bus = new DaoCliente();
			//List<Cliente> tabl = bus.consultarCliente(); 
			//Cliente p=(Cliente)bus.lista(29531201);
			
			//sce.getServletContext().setAttribute("tablCliente", tabl);
		}
		
		
		@Override
		public void contextDestroyed(ServletContextEvent sce) {
			ServletContextListener.super.contextDestroyed(sce);
			System.out.println("OJO: contextDestroyed");
		}
}

