package pe.edu.universidad.dto;

import java.io.Serializable;

public class DtoCursoConsulta implements Serializable {

	private int id;
	
	private String nombre;
	
	private int cantidadHoras;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCantidadHoras() {
		return cantidadHoras;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setCantidadHoras(int cantidadHoras) {
		this.cantidadHoras = cantidadHoras;
	}
	
	
}
