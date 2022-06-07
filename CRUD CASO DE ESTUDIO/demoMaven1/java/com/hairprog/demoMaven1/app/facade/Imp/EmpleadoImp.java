package com.hairprog.demoMaven1.app.facade.Imp;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hairprog.demoMaven1.app.data.Conexion;
import com.hairprog.demoMaven1.app.facade.IEmpleado;
import com.hairprog.demoMaven1.app.model.Empleado;

public class EmpleadoImp extends Conexion implements IEmpleado{
	private PreparedStatement pstEmpleado=null;
	private ResultSet rsEmpleado=null;
	private String query="";
	private List<Empleado> listaEmpleado=new ArrayList<>();

	@Override
	public List<Empleado> buscarTodos() {
		this.query="select * from Empleados";
		try {
			if(this.getConnection()!=null) {

				this.pstEmpleado=this.getConnection().prepareStatement(query);
				this.rsEmpleado=this.pstEmpleado.executeQuery();
				while(this.rsEmpleado.next()) {
					Empleado empleado=new Empleado();
					empleado.setId_Empleado(this.rsEmpleado.getInt("Id_Empleado"));
					empleado.setDocumento_Tipo(this.rsEmpleado.getString("Documento_Tipo"));
					empleado.setDocumento_Numero(this.rsEmpleado.getLong("Documento_Numero"));
					empleado.setNombres(this.rsEmpleado.getString("Nombres"));
					empleado.setApellidos(this.rsEmpleado.getString("Apellidos"));
					empleado.setDepartamento_Id(this.rsEmpleado.getInt("Departamento_Id"));
					empleado.setCiudad(this.rsEmpleado.getString("Ciudad"));
					empleado.setE_mail(this.rsEmpleado.getString("E_mail"));
					empleado.setTelefono(this.rsEmpleado.getLong("Telefono"));
					empleado.setFecha_crea_E(this.rsEmpleado.getDate("Fecha_crea_E"));
					empleado.setFecha_modifica_E(this.rsEmpleado.getDate("Fecha_modifica_E"));
					this.listaEmpleado.add(empleado);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.listaEmpleado;
	}

	@Override
	public Empleado buscarPorId(int Id_Empleado) {
		// TODO Auto-generated method stub
		Empleado empleado=new Empleado();
		this.query="select * from Empleados where Id_Empleado=?";
		try {
			if(this.getConnection()!=null) {
				this.pstEmpleado=this.getConnection().prepareStatement(query);
				this.pstEmpleado.setInt(1, Id_Empleado);
				this.rsEmpleado=this.pstEmpleado.executeQuery();
				while(this.rsEmpleado.next()) {
					empleado.setId_Empleado(this.rsEmpleado.getInt("Id_Empleado"));
					empleado.setDocumento_Tipo(this.rsEmpleado.getString("Documento_Tipo"));
					empleado.setDocumento_Numero(this.rsEmpleado.getLong("Documento_Numero"));
					empleado.setNombres(this.rsEmpleado.getString("Nombres"));
					empleado.setApellidos(this.rsEmpleado.getString("Apellidos"));
					empleado.setDepartamento_Id(this.rsEmpleado.getInt("Departamento_Id"));
					empleado.setCiudad(this.rsEmpleado.getString("Ciudad"));
					empleado.setE_mail(this.rsEmpleado.getString("E_mail"));
					empleado.setTelefono(this.rsEmpleado.getLong("Telefono"));
					empleado.setFecha_crea_E(this.rsEmpleado.getDate("Fecha_crea_E"));
					empleado.setFecha_modifica_E(this.rsEmpleado.getDate("Fecha_modifica_E"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return empleado;
	}

	@Override
	public void crearEmpleado(Empleado empleado) {
		try {
			query="insert into Empleados (Id_empleado, Documento_Tipo, Documento_Numero, Nombres, Apellidos, Departamento_Id, Ciudad, E_mail, Telefono) values (?,?,?,?,?,?,?,?,?)";
			if (this.getConnection()!=null) {
				this.pstEmpleado=this.getConnection().prepareStatement(query);				
				this.pstEmpleado.setInt(1, 0);
				this.pstEmpleado.setString(2, empleado.getDocumento_Tipo());
				this.pstEmpleado.setLong(3, empleado.getDocumento_Numero());
				this.pstEmpleado.setString(4, empleado.getNombres());
				this.pstEmpleado.setString(5, empleado.getApellidos());
				this.pstEmpleado.setInt(6, empleado.getDepartamento_Id());
				this.pstEmpleado.setString(7, empleado.getCiudad());
				this.pstEmpleado.setString(8, empleado.getE_mail());
				this.pstEmpleado.setLong(9, empleado.getTelefono());
				this.pstEmpleado.execute();
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public boolean actualizarEmpleado(Empleado empleado) {
		this.query="UPDATE Empleados SET Id_Empleado=?, Documento_Tipo=?, Documento_Numero=?, Nombres=?, Apellidos=?, "
				+ "Departamento_Id=?, Ciudad=?, E_mail=?, Telefono=? where Id_Empleado=?";
		try {
			if (this.getConnection()!=null) {
				this.pstEmpleado=this.getConnection().prepareStatement(query);
				this.pstEmpleado.setInt(1, empleado.getId_Empleado());
				this.pstEmpleado.setString(2, empleado.getDocumento_Tipo());
				this.pstEmpleado.setLong(3, empleado.getDocumento_Numero());
				this.pstEmpleado.setString(4, empleado.getNombres());
				this.pstEmpleado.setString(5, empleado.getApellidos());
				this.pstEmpleado.setInt(6, empleado.getDepartamento_Id());
				this.pstEmpleado.setString(7, empleado.getCiudad());
				this.pstEmpleado.setString(8, empleado.getE_mail());
				this.pstEmpleado.setLong(9, empleado.getTelefono());
				this.pstEmpleado.setInt(10, empleado.getId_Empleado());
				this.pstEmpleado.execute();
			}else {
				System.out.println("Fallo de conexion");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean eliminarEmpleado(int Id) {
		this.query="DELETE from Empleados where Id_Empleado=?";
		try {
			if (this.getConnection()!=null) {
				this.pstEmpleado=this.getConnection().prepareStatement(query);
				this.pstEmpleado.setInt(1, Id);
				this.pstEmpleado.executeUpdate();
			}
		} catch (Exception e) {}
		return false;
	}

}
