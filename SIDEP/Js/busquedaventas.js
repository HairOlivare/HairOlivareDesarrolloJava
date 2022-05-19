var nombre = document.getElementById("nombres");
var apellido = document.getElementById("apellidos");
var documento = document.getElementById("documento");
nombre.focus();


function validar(){

	var mensajesError = [];

	if (nombre.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'error',
		  title: 'Error',
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
		  icon: 'error',
		  title: 'Error',
		  text: 'Debe ingresar los apellidos del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		apellido.focus();
		return false;
	}

	if (documento.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Atención',
		  text: 'Debe indicar el documento de identidad del cliente',
		  showConfirmButton: false,
		  timer: 2300,
		});
		documento.focus();
		return false;
	}

}