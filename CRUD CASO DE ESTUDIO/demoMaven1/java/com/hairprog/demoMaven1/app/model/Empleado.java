package com.hairprog.demoMaven1.app.model;

import java.util.Date;

public class Empleado {

	private int Id_Empleado;
	private String Documento_Tipo;
	private long Documento_Numero;
	private String Nombres;
	private String Apellidos;
	private int Departamento_Id;
	private String Ciudad;
	private String E_mail;
	private long Telefono;
	private Date Fecha_crea_E;
	private Date Fecha_modifica_E;
	//Constructor por defecto
	public Empleado() {}
	//Constructor sobrecargado
	public Empleado(int id_Empleado, String documento_Tipo, long documento_Numero, String nombres, String apellidos,
			int departamento_Id, String ciudad, String e_mail, long telefono, Date fecha_crea_E, Date fecha_modifica_E) {
		super();
		this.Id_Empleado = id_Empleado;
		this.Documento_Tipo = documento_Tipo;
		this.Documento_Numero = documento_Numero;
		this.Nombres = nombres;
		this.Apellidos = apellidos;
		this.Departamento_Id = departamento_Id;
		this.Ciudad = ciudad;
		this.E_mail = e_mail;
		this.Telefono = telefono;
		this.Fecha_crea_E = fecha_crea_E;
		this.Fecha_modifica_E = fecha_modifica_E;
	}
	public int getId_Empleado() {
		return Id_Empleado;
	}
	public void setId_Empleado(int id_Empleado) {
		Id_Empleado = id_Empleado;
	}
	public String getDocumento_Tipo() {
		return Documento_Tipo;
	}
	public void setDocumento_Tipo(String documento_Tipo) {
		Documento_Tipo = documento_Tipo;
	}
	public long getDocumento_Numero() {
		return Documento_Numero;
	}
	public void setDocumento_Numero(long documento_Numero) {
		Documento_Numero = documento_Numero;
	}
	public String getNombres() {
		return Nombres;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public String getApellidos() {
		return Apellidos;
	}
	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}
	public int getDepartamento_Id() {
		return Departamento_Id;
	}
	public void setDepartamento_Id(int departamento_Id) {
		Departamento_Id = departamento_Id;
	}
	public String getCiudad() {
		return Ciudad;
	}
	public void setCiudad(String ciudad) {
		Ciudad = ciudad;
	}
	public String getE_mail() {
		return E_mail;
	}
	public void setE_mail(String e_mail) {
		E_mail = e_mail;
	}
	public long getTelefono() {
		return Telefono;
	}
	public void setTelefono(long telefono) {
		Telefono = telefono;
	}
	public Date getFecha_crea_E() {
		return Fecha_crea_E;
	}
	public void setFecha_crea_E(Date fecha_crea_E) {
		Fecha_crea_E = fecha_crea_E;
	}
	public Date getFecha_modifica_E() {
		return Fecha_modifica_E;
	}
	public void setFecha_modifica_E(Date fecha_modifica_E) {
		Fecha_modifica_E = fecha_modifica_E;
	}
}
