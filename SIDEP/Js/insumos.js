var id = document.getElementById("Idinsumo");
var nombre = document.getElementById("nominsumo");
var select = document.getElementById("sel");
id.focus();


function validar(){

	var mensajesError = [];

	if (id.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar un ID del insumo',
		  showConfirmButton: false,
		  timer: 2300,
		});
		id.focus();
		return false;
	}


	if (nombre.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar un nombre del insumo',
		  showConfirmButton: false,
		  timer: 2300,
		});
		nombre.focus();
		return false;
	}

	if (select.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe seleccionar una opción',
		  showConfirmButton: false,
		  timer: 2300,
		});
		select.focus();
		return false;
	}

	Swal.fire({
		  position: 'center',
		  icon: 'success',
		  title: 'Completo',
		  text: 'El insumo ha sido registrado',
		  showConfirmButton: false,
		  timer: 2300,
		})
	
	id.value="";
	nombre.value="";
	select.value="";
}