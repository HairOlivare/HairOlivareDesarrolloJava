var id = document.getElementById("idproducto");
var nombre = document.getElementById("nomproducto");
var precio = document.getElementById("precio");
id.focus();


function validar(){

	var mensajesError = [];

	if (id.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe ingresar un ID del producto',
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
		  text: 'Debe ingresar un nombre del producto',
		  showConfirmButton: false,
		  timer: 2300,
		});
		nombre.focus();
		return false;
	}

	if (precio.value == "") {
		Swal.fire({
		  position: 'center',
		  icon: 'warning',
		  title: 'Incompleto',
		  text: 'Debe indicar el precio',
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
		  text: 'El producto ha sido registrado',
		  showConfirmButton: false,
		  timer: 2300,
		})
	
	id.value="";
	nombre.value="";
	precio.value="";
}