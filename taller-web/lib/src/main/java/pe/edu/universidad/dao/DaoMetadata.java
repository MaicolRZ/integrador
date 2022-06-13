package pe.edu.universidad.dao;

//import java.sql.Connection;
//import java.sql.DatabaseMetaData;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;



public class DaoMetadata extends DaoGenerico { 
/*
	public List<Tabla> consultarTablas() {
		List<Tabla> lst = new ArrayList<Tabla>();
		Connection cnx = getConnection();
		PreparedStatement stm = null;
		try {
			DatabaseMetaData meta = cnx.getMetaData();
			ResultSet rsm = meta.getTables(null, null, null, new String[] { "TABLE" });
			while (rsm.next()) {
				String tableName = rsm.getString("TABLE_NAME");
				String sql = "select count(*) from " + tableName;
				stm = cnx.prepareStatement(sql);
				ResultSet rs = stm.executeQuery();
				rs.next();
				Tabla u = new Tabla();
				u.setNombre(tableName);
				u.setCantidadRegistros(rs.getInt(1));
				lst.add(u);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				stm.close();
				cnx.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		return lst;
	}
*/

	
}
