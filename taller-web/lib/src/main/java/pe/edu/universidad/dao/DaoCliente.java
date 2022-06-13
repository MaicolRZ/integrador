package pe.edu.universidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.edu.universidad.dto.DtoHojaServicio;
import pe.edu.universidad.entidades.Cliente;
import pe.edu.universidad.entidades.Visita_Tecnica;


public class DaoCliente extends DaoGenerico {
	Cliente usu=new Cliente();
	
	public List<Cliente> consultarCliente() {
		List<Cliente> lst = new ArrayList<Cliente>();
		String sql = "select dni, nombre, apell_pat, apell_mat, telefono, direccion, genero from persona where id_tipopersona='TP_01'";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Cliente u = new Cliente();
				u.setDni(rs.getString(1));
				u.setNombre(rs.getString(2));
				u.setApell_pat(rs.getString(3));
				u.setApell_mat(rs.getString(4));
				u.setTelefono(rs.getString(5));
				u.setDireccion(rs.getString(6));
				u.setGenero(rs.getString(7));
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	//Insertar Cliente Funcionando
	public void insertarCliente(String id, String nombre,String apell_pat,String apell_mat,String telefono,String direccion,String id_tipopersona, String genero) {
		String sql = "insert into persona(dni, nombre, apell_mat, apell_pat, telefono, direccion,id_tipopersona, genero) values (?, ?, ?, ?, ?, ?, ?, ?)";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id);
			stm.setString(2, nombre);
			stm.setString(3, apell_pat);
			stm.setString(4, apell_mat);
			stm.setString(5, telefono);
			stm.setString(6, direccion);
			stm.setString(7, id_tipopersona);
			stm.setString(8, genero);
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
		 String sql="select nombre, apell_pat, apell_mat, telefono, direccion, genero from persona where id="+id;
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
	public Cliente lista(int id) {
		
		 String sql="select nombre, apell_pat, apell_mat, telefono, direccion, genero from persona where dni='"+id+"'";
		 ResultSet rs;
        try {
       Connection cnx = getConnection();
       PreparedStatement ps=cnx.prepareStatement(sql);
           rs=ps.executeQuery();
           
           while(rs.next()){       	 
           	 usu.setNombre(rs.getString(1));
                usu.setApell_pat(rs.getString(2));
                usu.setApell_mat(rs.getString(3));
                usu.setTelefono(rs.getString(4));
                usu.setDireccion(rs.getString(5));
                usu.setGenero(rs.getString(6));
           }
		
	 } catch (Exception e) {
    }
    
	return usu;
	}


	
	//Listar por nombre del cliente
	public List<Cliente> consultarUsuarioPorNombre(String cadena) {
		List<Cliente> lst = new ArrayList<Cliente>();
		Cliente c = null;
		String sql = "select dni, nombre, apell_pat, apell_mat, telefono, direccion from persona where nombre like ? and id_tipopersona='TP_01'";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, cadena);
			rs = stm.executeQuery();
			while (rs.next()) {
				c = new Cliente();
				c.setDni(rs.getString(1));
				c.setNombre(rs.getString(2));
				c.setApell_pat(rs.getString(3));
				c.setApell_mat(rs.getString(4));
				c.setTelefono(rs.getString(5));
				c.setDireccion(rs.getString(6));

				lst.add(c);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	
	
	//Eliminar Funcionando
	
	public void eliminarUsuario(String id) {
		String sql1="delete from visita_electrodomestico where dni= ?";
		String sql = "delete from persona where dni= ?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm1 = cnx.prepareStatement(sql1);
			stm1.setString(1, id);
			stm1.execute();
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	//Editar Funcionando
	public void editarCliente(String dni, String nombre,String apell_pat,String apell_mat,String telefono, String direccion, String genero) {
		String sql = "update persona set nombre=?, apell_pat=?, apell_mat=?, telefono=?, direccion=?, genero=? where dni=?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			
			stm.setString(1, nombre);
			stm.setString(2, apell_pat);
			stm.setString(3, apell_mat);
			stm.setString(4, telefono);
			stm.setString(5, direccion);
			stm.setString(6, genero);
			stm.setString(7, dni);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	//Listar Cliente y Electrodomestico
	public List<Visita_Tecnica> Visita_Tecnica() {
		List<Visita_Tecnica> lst = new ArrayList<Visita_Tecnica>();
		String sql = "select id_elec, persona.dni,nombre, apell_pat, apell_mat, direccion, telefono, tipo_electrodomestico, marca, modelo,numero_serie, descripcion,dia,hora,estado from persona inner join visita_electrodomestico on persona.dni=visita_electrodomestico.dni";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Visita_Tecnica u = new Visita_Tecnica();
				u.setId(rs.getString(1));
				u.setDni(rs.getString(2));
				u.setNombre(rs.getString(3));
				u.setApell_pat(rs.getString(4));
				u.setApell_mat(rs.getString(5));
				u.setDireccion(rs.getString(6));
				u.setTelefono(rs.getString(7));
				u.setTipo_electrodomestico(rs.getString(8));
				u.setMarca(rs.getString(9));
				u.setModelo(rs.getString(10));
				u.setNumero_serie(rs.getString(11));
				u.setDescripcion(rs.getString(12));
				u.setDia(rs.getString(13));
				u.setHora(rs.getString(14));
				u.setEstado(rs.getString(15));
				
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	//Generar Cod
	public List<Visita_Tecnica> Cod_VisitaTecnica() {
		List<Visita_Tecnica> lst = new ArrayList<Visita_Tecnica>();
		String sql = "select count(*) from visita_electrodomestico";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Visita_Tecnica u = new Visita_Tecnica();
				u.setCod_Visita(rs.getString(1));
				
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return lst;
	}
	
	public String Codigo_Visita() {
		List<Visita_Tecnica> lst = new ArrayList<Visita_Tecnica>();
		String codigo="El_";
		String sql = "select count(*) from visita_electrodomestico";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			rs = stm.executeQuery();
			while (rs.next()) {
				Visita_Tecnica u = new Visita_Tecnica();
				u.setCod_Visita(rs.getString(1));
				lst.add(u);
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return codigo;
	}
	//InsertarCliente Visita Electrodomestico
	
	public void insertarVisita(String id_elec,String dni,String tipo_electrodomestico,String marca,String modelo,String numero_serie,String descripcion,String dia,String hora,String estado) {
		String sql = "insert into visita_electrodomestico(id_elec,dni,tipo_electrodomestico,marca,modelo,numero_serie,descripcion,dia,hora,estado) values (?, ?, ?, ?, ?, ?, ?, ?,?,?)";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id_elec);
			stm.setString(2, dni);
			stm.setString(3, tipo_electrodomestico);
			stm.setString(4, marca);
			stm.setString(5, modelo);
			stm.setString(6, numero_serie);
			stm.setString(7, descripcion);
			stm.setString(8, dia);
			stm.setString(9, hora);
			stm.setString(10, estado);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	//Editar Asignar Tecnico
	
	public void EditarAsignarTecnico(String id_elec,String tecnico_id,String estado) {
		String sql = "update visita_electrodomestico set tecnico_id=?, estado=? where id_elec=?";
		Connection cnx = getConnection();
		try {
			cnx.setAutoCommit(false);
			PreparedStatement stm = cnx.prepareStatement(sql);
			
			stm.setString(1, tecnico_id);
			stm.setString(2, estado);
			stm.setString(3, id_elec);
			stm.execute();
			cnx.commit();
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

		
	}
	/*
	public DtoHojaServicio ConsultarPorId_Tecnico(String idtecnico) {
		DtoHojaServicio dto = null;
		String sql = "select id_elec, persona.dni,nombre || ' ' || apell_pat || ' ' || apell_mat, tipo_electrodomestico, marca, modelo,numero_serie, descripcion,tecnico_id from persona inner join visita_electrodomestico on persona.dni=visita_electrodomestico.dni where tecnico_id='"+idtecnico+"'";
				
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, idtecnico);
			rs = stm.executeQuery();
			if (rs.next()) {
				dto = new DtoHojaServicio();
				dto.setId_elec(rs.getString(1));
				dto.setDniPersona(rs.getString(2));
				dto.setNombresCompleto(rs.getString(3)); 
				dto.setElectrodomestico(rs.getString(4)); 
				dto.setMarca(rs.getString(5)); 
				dto.setModelo(rs.getString(6)); 
				dto.setDescripcion(rs.getString(7));
				dto.setDniTecnico(rs.getString(8));
			
			}
			cnx.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return dto;
	}
	*/
	
	
	// Listar foreach con DTO y EJB//
	public List<DtoHojaServicio> consultarTecnicoPorId(String id_tecnico) {
		List<DtoHojaServicio> lst = new ArrayList<DtoHojaServicio>();
		DtoHojaServicio c = null;
		String sql = "select id_elec, persona.dni,nombre || ' ' || apell_pat || ' ' || apell_mat, tipo_electrodomestico, marca, modelo,numero_serie, descripcion,tecnico_id from persona inner join visita_electrodomestico on persona.dni=visita_electrodomestico.dni where tecnico_id=?";
		Connection cnx = getConnection();
		ResultSet rs;
		try {
			PreparedStatement stm = cnx.prepareStatement(sql);
			stm.setString(1, id_tecnico);
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
	
}

