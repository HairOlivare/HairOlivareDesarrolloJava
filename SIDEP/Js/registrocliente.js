var id = document.getElementById("idcliente");
var nombre = document.getElementById("nombre");
var apellido = document.getElementById("apellidos");
var direccion = document.getElementById("direccion");
var tel = document.getElementById("tel");
id.focus();


function validar(){

	var mensajesError = [];

	if (id.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe ingresar el documento de identidad del cliente',
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
		  title: 'Atención',
		  text: 'Debe ingresar los nombres del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		nombre.focus();
		return false;
	}

	if (apellido.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe ingresar los apellidos del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		apellido.focus();
		return false;
	}

	if (direccion.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe indicar la dirección de residencia del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		direccion.focus();
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
		  text: 'El cliente ha sido registrado',
		  showConfirmButton: false,
		  timer: 2300,
		})
	
	id.value="";
	nombre.value="";
	apellido.value="";
	direccion.value="";
	tel.value="";
}