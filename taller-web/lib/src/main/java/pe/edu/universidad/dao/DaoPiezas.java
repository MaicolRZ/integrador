package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.universidad.dto.DtoHojaServicio;
import pe.edu.universidad.dto.DtoPiezas;
import pe.edu.universidad.entidades.Piezas;


public class DaoPiezas extends DaoGenerico {
	Piezas pie=new Piezas();
	
	public List<Piezas> consultarPiezas() {
		List<Piezas> lst = new ArrayList<Piezas>();
		String sql = "select id_pieza, nombre, id_categoria, precio, stock from piezas order by id_pieza asc";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Piezas u = new Piezas();
				u.setId(rs.getString(1));
				u.setPiezas(rs.getString(2));
				u.setCategoria(rs.getString(3));
				u.setPrecio(rs.getString(4));
				u.setStock(rs.getInt(5));
			
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	
	public void insertarPiezas(String id, String piezas,String categoria,int precio,int stock) {
		String sql = "insert into piezas(id_pieza, nombre, id_categoria, precio, stock) values (?, ?, ?, ?, ?)";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id);
			stm.setString(2, piezas);
			stm.setString(3, categoria);
			stm.setInt(4, precio);
			stm.setInt(5, stock);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/*
	public List<Cliente> buscar(int id) {
		List<Cliente> lista=new ArrayList<>();
		 String sql="select nombre, apell_pat, apell_mat, telefono, direccion, genero from clientes where id="+id;
		 ResultSet rs;
         try {
        Connection cnx = getConnection();
        PreparedStatement ps=cnx.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	Cliente tec=new Cliente();
            	 
            	 tec.setNombre(rs.getString(1));
                 tec.setApell_pat(rs.getString(2));
                 tec.setApell_mat(rs.getString(3));
                 tec.setDireccion(rs.getString(4));
                 tec.setDireccion(rs.getString(5));
                 tec.setGenero(rs.getString(6));
            }
		
	 } catch (Exception e) {
     }
      return lista;
	}
	*/
	public Piezas lista(String id) {
		
		 String sql="select nombre, id_categoria, precio, stock from piezas where id_pieza='"+id+"'";
		 ResultSet rs;
        try {
       Connection cnx = getConnection();
       PreparedStatement ps=cnx.prepareStatement(sql);
           rs=ps.executeQuery();
           
           while(rs.next()){       	 
           	 pie.setPiezas(rs.getString(1));
                pie.setCategoria(rs.getString(2));
                pie.setPrecio(rs.getString(3));
                pie.setStock(rs.getInt(4));
           }
		
	 } catch (Exception e) {
    }
    
	return pie;
	}

/*
	
	//Listar
	public List<Cliente> consultarUsuarioPorNombre(String cadena) {
		List<Cliente> lst = new ArrayList<Cliente>();
		Cliente c = null;
		String sql = "select nombre, apell_pat, apell_mat, telefono, direccion, genero from clientes where nombre like ?";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, cadena);
			rs = stm.executeQuery();
			while (rs.next()) {
				c = new Cliente();
				c.setDni(rs.getInt(1));
				c.setNombre(rs.getString(2));
				c.setApell_pat(rs.getString(3));
				c.setApell_mat(rs.getString(4));

				lst.add(c);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	*/
	//Eliminar
	
	public void eliminarPiezas(String id) {
		String sql = "delete from piezas where id_pieza=?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	//Editar
	public void editarPiezas(String id, String piezas,String categoria,int precio,int stock) {
		String sql = "update piezas set nombre=?, id_categoria=?, precio=?, stock=? where id_pieza=?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			
			stm.setString(1, piezas);
			stm.setString(2, categoria);
			stm.setInt(3, precio);
			stm.setInt(4, stock);
			stm.setString(5, id);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/*DTO y EJB LISTa por id
	public List<DtoHojaServicio> ListarPiezas(String id) {
		List<DtoHojaServicio> lst = new ArrayList<DtoHojaServicio>();
		DtoHojaServicio c = null;
		String sql = "select id_pieza, nombre, id_categoria, precio, stock from piezas order by id_pieza asc where id_pieza=?";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id );
			rs = stm.executeQuery();
			while (rs.next()) {
				c = new DtoHojaServicio();
				c.setId_elec(rs.getString(1));
				c.setDniPersona(rs.getString(2));
				c.setNombresCompleto(rs.getString(3));
				c.setElectrodomestico(rs.getString(4));
				c.setMarca(rs.getString(5));
				c.setModelo(rs.getString(6));
				c.setNumero_serie(rs.getString(7));
				c.setDescripcion(rs.getString(8));
				c.setDniTecnico(rs.getString(9));
				
				
				lst.add(c);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	*/
	public List<DtoPiezas> ListarPiezas() {
		List<DtoPiezas> lst = new ArrayList<DtoPiezas>();
		String sql = "select id_pieza, nombre, id_categoria, precio, stock from piezas order by id_pieza asc";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				DtoPiezas u = new DtoPiezas();
				u.setId(rs.getString(1));
				u.setPiezas(rs.getString(2));
				u.setCategoria(rs.getString(3));
				u.setPrecio(rs.getInt(4));
				u.setStock(rs.getInt(5));
			
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
}
