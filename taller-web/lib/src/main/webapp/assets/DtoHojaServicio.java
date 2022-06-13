package pe.edu.universidad.dto;

import java.io.Serializable;

public class DtoHojaServicio implements Serializable{
	String id_elec;
	String dniTecnico;
	String dniPersona;
	String nombresCompleto;
	String electrodomestico;
	String marca;
	String modelo;
	String descripcion;
	
	
	
	public String getId_elec() { 
		return id_elec;
	}
	public void setId_elec(String id_elec) {
		this.id_elec = id_elec;
	}
	public String getDniTecnico() {
		return dniTecnico;
	}
	public void setDniTecnico(String dniTecnico) {
		this.dniTecnico = dniTecnico;
	}
	
	
	
	public String getDniPersona() {
		return dniPersona;
	}
	public void setDniPersona(String dniPersona) {
		this.dniPersona = dniPersona;
	}
	public String getNombresCompleto() {
		return nombresCompleto;
	}
	public void setNombresCompleto(String nombresCompleto) {
		this.nombresCompleto = nombresCompleto;
	}
	public String getElectrodomestico() {
		return electrodomestico;
	}
	public void setElectrodomestico(String electrodomestico) {
		this.electrodomestico = electrodomestico;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	

	
	
}
