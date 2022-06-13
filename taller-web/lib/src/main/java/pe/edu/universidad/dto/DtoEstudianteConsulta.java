package pe.edu.universidad.dto;

import java.io.Serializable;

public class DtoEstudianteConsulta implements Serializable {

	private int id;
	
	private String nombreCompleto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreCompleto() {
		return nombreCompleto;
	}

	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}
	
	
}
