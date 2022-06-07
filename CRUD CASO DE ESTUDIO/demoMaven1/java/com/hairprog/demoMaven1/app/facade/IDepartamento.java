package com.hairprog.demoMaven1.app.facade;

import java.util.List;

import com.hairprog.demoMaven1.app.model.Departamento;

public interface IDepartamento {

	public List<Departamento> buscarTodos();
	public Departamento buscarPorId(int Id_Departamentos);
	public void crearDepartamento(Departamento departamento);
	public boolean actualizarDepartamento(Departamento departamento);
	public boolean eliminarDepartamento(int Id_Departamento);
}
