package com.hairprog.demoMaven1.app.facade;

import java.util.List;

import com.hairprog.demoMaven1.app.model.Empleado;

public interface IEmpleado {

	public List<Empleado> buscarTodos();
	public Empleado buscarPorId(int Id_Empleado);
	public void crearEmpleado(Empleado empleado);
	public boolean actualizarEmpleado(Empleado empleado);
	public boolean eliminarEmpleado(int Id);
}
