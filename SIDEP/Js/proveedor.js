var nombre = document.getElementById("nombre");
var select = document.getElementById("sel");
var direccion = document.getElementById("direccion");
var tel = document.getElementById("tel");
select.focus();


function validar(){

	var mensajesError = [];

	if (select.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe seleccionar una opción',
		  showConfirmButton: false,
		  timer: 2300,
		});
		select.focus();
		return false;
	}

	if (nombre.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe ingresar el nombre del proveedor',
		  showConfirmButton: false,
		  timer: 2300,
		});
		nombre.focus();
		return false;
	}


	if (direccion.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe indicar la dirección del proveedor',
		  showConfirmButton: false,
		  timer: 2300,
		});
		direccion.focus();
		return false;
	}

	if (tel.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe ingresar el teléfono del proveedor',
		  showConfirmButton: false,
		  timer: 2300,
		});
		tel.focus();
		return false;
	}

	cont = tel.value;

	if (cont.length <= 6 || cont.length>=10) {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe ingresar un teléfono valido',
		  showConfirmButton: false,
		  timer: 2300,
		});
		tel.value="";
		tel.focus();
		return false;
	}

	Swal.fire({
		  position: 'center',
		  icon: 'success',
		  title: 'Exitoso',
		  text: 'El proveedor ha sido registrado',
		  showConfirmButton: false,
		  timer: 2300,
		})
	
	select.value="";
	nombre.value="";
	direccion.value="";
	tel.value="";
}