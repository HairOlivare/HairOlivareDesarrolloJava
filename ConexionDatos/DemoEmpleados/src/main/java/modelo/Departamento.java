package modelo;
import java.sql.Time;
import java.util.Date;
public class Departamento {

	private int Id_Departamentos;
	private int Departamento_codigo;
	private String Departamento_nombre;
	private Date Fecha_crea_D;
	private Time Hora_crea_D;
	private Date Fecha_modifica_D;
	private Time Hora_modifica_D;
	//Constructor por defecto
	public Departamento() {}
	//Constructor sobrecargado
	public Departamento(int id_Departamentos, int departamento_codigo, String departamento_nombre, Date fecha_crea_D,
			Date hora_crea_D, Date fecha_modifica_D, Date hora_modifica_D) {
		super();
		this.Id_Departamentos = id_Departamentos;
		this.Departamento_codigo = departamento_codigo;
		this.Departamento_nombre = departamento_nombre;
		this.Fecha_crea_D = fecha_crea_D;
		this.Hora_crea_D = (Time) hora_crea_D;
		this.Fecha_modifica_D = fecha_modifica_D;
		this.Hora_modifica_D = (Time) hora_modifica_D;
	}
	public int getId_Departamentos() {
		return Id_Departamentos;
	}
	public void setId_Departamentos(int id_Departamentos) {
		Id_Departamentos = id_Departamentos;
	}
	public int getDepartamento_codigo() {
		return Departamento_codigo;
	}
	public void setDepartamento_codigo(int departamento_codigo) {
		Departamento_codigo = departamento_codigo;
	}
	public String getDepartamento_nombre() {
		return Departamento_nombre;
	}
	public void setDepartamento_nombre(String departamento_nombre) {
		Departamento_nombre = departamento_nombre;
	}
	public Date getFecha_crea_D() {
		return Fecha_crea_D;
	}
	public void setFecha_crea_D(Date fecha_crea_D) {
		Fecha_crea_D = fecha_crea_D;
	}
	public Date getFecha_modifica_D() {
		return Fecha_modifica_D;
	}
	public void setFecha_modifica_D(Date fecha_modifica_D) {
		Fecha_modifica_D = fecha_modifica_D;
	}
	public Time getHora_crea_D() {
		return Hora_crea_D;
	}
	public void setHora_crea_D(Time hora_crea_D) {
		Hora_crea_D = hora_crea_D;
	}
	public Time getHora_modifica_D() {
		return Hora_modifica_D;
	}
	public void setHora_modifica_D(Time hora_modifica_D) {
		Hora_modifica_D = hora_modifica_D;
	}
	
}
	
	
	

