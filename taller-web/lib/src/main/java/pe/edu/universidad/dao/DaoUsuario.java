package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import pe.edu.universidad.entidades.Usuario;

public class DaoUsuario extends DaoGenerico {
	Usuario tec=new Usuario();

	public List<Usuario> consultarUsuarios() {
		List<Usuario> lst = new ArrayList<Usuario>();
		String sql = "select dni, nombre, apell_pat, apell_mat, direccion, experiencia, especialidad, genero from persona where id_tipopersona='TP_02'";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Usuario u = new Usuario();
				u.setId(rs.getString(1));
				u.setNombre(rs.getString(2));
				u.setApell_pat(rs.getString(3));
				u.setApell_mat(rs.getString(4));
				u.setDireccion(rs.getString(5));
				u.setExp(rs.getInt(6));
				u.setEspecialidad(rs.getString(7));
				u.setGenero(rs.getString(8));
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	
	public void insertarUsuario(String id, String nombre,String apell_pat,String apell_mat,String direccion,String TP,int años,String  especialidad, String genero) {
		
		String sql = "insert into persona(dni, nombre, apell_pat, apell_mat ,direccion, id_tipopersona, experiencia, especialidad, genero) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id); 
			stm.setString(2, nombre);
			stm.setString(3, apell_pat);
			stm.setString(4, apell_mat);
			stm.setString(5, direccion);
			stm.setString(6, TP);
			stm.setInt(7, años);
			stm.setString(8, especialidad);
			stm.setString(9, genero);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Usuario lista(int id) {
		
		 String sql="select  nombre, apell_pat, apell_mat, direccion, experiencia, especialidad, genero from persona where dni='"+id+"'";
		 ResultSet rs;
         try {
        Connection cnx = getConnection();
        PreparedStatement ps=cnx.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){       	 
            	 tec.setNombre(rs.getString(1));
                 tec.setApell_pat(rs.getString(2));
                 tec.setApell_mat(rs.getString(3));
                 tec.setDireccion(rs.getString(4));
                 tec.setExp(rs.getInt(5));
                 tec.setEspecialidad(rs.getString(6));
                 tec.setGenero(rs.getString(7));
            }
		
	 } catch (Exception e) {
     }
     
	return tec;
	}

//Busqueda con Foreach

	public List<Usuario> consultarUsuarioPorNombre(String cadena) {
		List<Usuario> lst = new ArrayList<Usuario>();
		Usuario c = null;
		String sql = "select dni, nombre, apell_pat, apell_mat from persona where nombre like ? and id_tipopersona='TP_01'";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, cadena);
			rs = stm.executeQuery();
			while (rs.next()) {
				c = new Usuario();
				c.setId(rs.getString(1));
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

	
	//Eliminar
	
	public void eliminarUsuario(String id) {
		
		String sql1="delete from visita_electrodomestico where dni= ?";
		String sql = "delete from persona where dni= ?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			PreparedStatement stm1 = cnx.prepareStatement(sql1);
			stm1.setString(1, id);
			stm1.execute();
			stm.setString(1, id);
			stm.execute();
			cnx.commit();
			cnx.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	//Editar
	public void editarUsuario(String id, String nombre,String apell_pat,String apell_mat,String direccion,int años,String  especialidad,String genero) {
		String sql = "update persona set nombre=?, apell_pat=?, apell_mat=?, direccion=?, experiencia=?, especialidad=?, genero=? where dni=?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			
			stm.setString(1, nombre);
			stm.setString(2, apell_pat);
			stm.setString(3, apell_mat);
			stm.setString(4, direccion);
			stm.setInt(5, años);
			stm.setString(6, especialidad);
			stm.setString(7, genero);
			stm.setString(8, id);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
}
