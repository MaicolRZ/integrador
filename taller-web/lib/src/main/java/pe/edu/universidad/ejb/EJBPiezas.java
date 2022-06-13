package pe.edu.universidad.ejb;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import pe.edu.universidad.dao.DaoPiezas;
import pe.edu.universidad.dto.DtoPiezas;

/**
 * Session Bean implementation class EJBMatriculas
 */
@Stateless
@LocalBean
public class EJBPiezas {

    /**
     * Default constructor. 
     */
    public EJBPiezas() {
        // TODO Auto-generated constructor stub
    }
    
    
    /**
     * Default constructor. 
     */
	
	public List<DtoPiezas> listaPiezas() {
    	List<DtoPiezas> lst = null;
    	DaoPiezas dao = new DaoPiezas();
    	lst = dao.ListarPiezas();
    	return lst;
    }
	/** 
     * Default constructor. 
     */

}
