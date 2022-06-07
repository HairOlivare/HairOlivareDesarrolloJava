package com.hairprog.demoMaven1.app.facade.Imp;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hairprog.demoMaven1.app.data.Conexion;
import com.hairprog.demoMaven1.app.facade.IDepartamento;
import com.hairprog.demoMaven1.app.model.Departamento;

public class DepartamentoImp extends Conexion implements IDepartamento {

	private PreparedStatement pstDepartamento=null;
	private ResultSet rsDepartamento=null;
	private String query="";
	private List<Departamento> listDepartamento=new ArrayList<>();
	
	@Override
	public List<Departamento> buscarTodos() {
		this.query="select * from Departamentos";
		try {
			if(this.getConnection()!=null) {
				this.pstDepartamento=this.getConnection().prepareStatement(query);
				this.rsDepartamento=this.pstDepartamento.executeQuery();
				while(this.rsDepartamento.next()) {
					Departamento departamento=new Departamento();
					departamento.setId_Departamentos(this.rsDepartamento.getInt("Id_Departamentos"));
					departamento.setDepartamento_codigo(this.rsDepartamento.getInt("Departamento_codigo"));
					departamento.setDepartamento_nombre(this.rsDepartamento.getString("Departamento_nombre"));
					departamento.setFecha_crea_D(this.rsDepartamento.getDate("Fecha_crea_D"));
					departamento.setFecha_modifica_D(this.rsDepartamento.getDate("Fecha_modifica_D"));
					this.listDepartamento.add(departamento);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.listDepartamento;
	}

	@Override
	public Departamento buscarPorId(int Id_Departamentos) {
		// TODO Auto-generated method stub
				Departamento departamento=new Departamento();
				this.query="select * from Departamentos where Id_Departamentos=?";
				try {
					if(this.getConnection()!=null) {
						this.pstDepartamento=this.getConnection().prepareStatement(query);
						this.pstDepartamento.setInt(1, Id_Departamentos);
						this.rsDepartamento=this.pstDepartamento.executeQuery();
						while(this.rsDepartamento.next()) {
							departamento.setId_Departamentos(this.rsDepartamento.getInt("Id_Departamentos"));
							departamento.setDepartamento_codigo(this.rsDepartamento.getInt("Departamento_codigo"));
							departamento.setDepartamento_nombre(this.rsDepartamento.getString("Departamento_nombre"));
							departamento.setFecha_crea_D(this.rsDepartamento.getDate("Fecha_crea_D"));
							departamento.setFecha_modifica_D(this.rsDepartamento.getDate("Fecha_modifica_D"));
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				return departamento;
	}

	@Override
	public void crearDepartamento(Departamento departamento) {
		try {
			this.query="insert into Departamentos (Id_Departamentos, Departamento_codigo, Departamento_nombre) values (?,?,?)";
			if (this.getConnection()!=null) {
				this.pstDepartamento=this.getConnection().prepareStatement(query);
				this.pstDepartamento.setInt(1, 0);
				this.pstDepartamento.setInt(2, departamento.getDepartamento_codigo());
				this.pstDepartamento.setString(3, departamento.getDepartamento_nombre());
				this.pstDepartamento.execute();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public boolean actualizarDepartamento(Departamento departamento) {
		this.query="UPDATE Departamentos SET Id_Departamentos=?, Departamento_codigo=?, Departamento_nombre=?"
				+ "where Id_Departamentos=?";
		try {
			if (this.getConnection()!=null) {
				this.pstDepartamento=this.getConnection().prepareStatement(query);
				this.pstDepartamento.setInt(1, departamento.getId_Departamentos());
				this.pstDepartamento.setInt(2, departamento.getDepartamento_codigo());
				this.pstDepartamento.setString(3, departamento.getDepartamento_nombre());
				this.pstDepartamento.setInt(4, departamento.getId_Departamentos());
				this.pstDepartamento.execute();
			}else {
				System.out.println("Fallo de conexion");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean eliminarDepartamento(int Id_Departamento) {
		this.query="DELETE from Departamentos where Id_Departamentos=?";
		try {
			if (this.getConnection()!=null) {
				this.pstDepartamento=this.getConnection().prepareStatement(query);
				this.pstDepartamento.setInt(1, Id_Departamento);
				this.pstDepartamento.executeUpdate();
			}
		} catch (Exception e) {}
		return false;
	}

}
