id = document.getElementById("identificacion");
nombre = document.getElementById("panadero");
fecha = document.getElementById("fecha");
select = document.getElementById("novedad");
motivo = document.getElementById("motivo");
hora = document.getElementById("hora");

nombre.focus();

function validar(){

    if (nombre.value == "") {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'Atención',
          text: 'Debe ingresar el nombre del panadero',
          showConfirmButton: false,
          timer: 2300,
        });
        nombre.focus();
        return false;
    }

    if (id.value == "") {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'Atención',
          text: 'Debe ingresar el documento del panadero',
          showConfirmButton: false,
          timer: 2300,
        });
        id.focus();
        return false;
    }

    fe = new Date(fecha.value);

    if (isNaN(fe.getFullYear())) {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'Debe ingresar una fecha',
          showConfirmButton: false,
          timer: 2000,
        });
        fecha.focus();
        return false;
    }

    hoy = new Date();        

    if (fe > hoy) {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'La fecha no puede ser mayor que la de hoy',
          showConfirmButton: false,
          timer: 2300,
        });
        fecha.focus();
        fecha.value="";
        return false;
    }

    if (select.value == "") {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'Atención',
          text: 'Debe seleccionar una opción de novedad',
          showConfirmButton: false,
          timer: 2300,
        });
        select.focus();
        return false;
    }

    if (motivo.value == "") {
        Swal.fire({
          position: 'center',
          icon: 'warning',
          title: 'Atención',
          text: 'Debe ingresar el motivo de la novedad',
          showConfirmButton: false,
          timer: 2300,
        });
        motivo.focus();
        return false;
    }

    Swal.fire({
          position: 'center',
          icon: 'success',
          title: 'Exitosa',
          text: 'La novedad ha sido registrada',
          showConfirmButton: false,
          timer: 2300,
        })
    

    select.value="";
    nombre.value="";
    id.value="";
    fecha.value="";
    motivo.value="";
    hora.value="";
}