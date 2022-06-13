package pe.edu.universidad.entidades;

public class Usuario {

	private String id;
	
	private String nombre;
	private String apell_pat;
	private String apell_mat;
	private String direccion;
	private int exp;
	private String especialidad;

	private String genero;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApell_pat() {
		return apell_pat;
	}

	public void setApell_pat(String apell_pat) {
		this.apell_pat = apell_pat;
	}

	public String getApell_mat() {
		return apell_mat;
	}

	public void setApell_mat(String apell_mat) {
		this.apell_mat = apell_mat;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int años_exp) {
		this.exp = años_exp;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}



	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}
	
	
}
