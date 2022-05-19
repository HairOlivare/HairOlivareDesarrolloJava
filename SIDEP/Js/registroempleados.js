const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
	usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
    apellido: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	telefono: /^\d{7,14}$/, // 7 a 14 numeros.
    numeroIdenti: /^\d{7,14}$/ // 7 a 14 numeros.
}

const campos = {
    usuario: false,
    nombre: false,
    apellido: false,
    password: false,
    correo: false,
    telefono: false,
    numeroIdenti: false
}

const validarFormulario = (e) => {
    switch (e.target.name){
        case "nombres":
            validarCampo(expresiones.nombre, e.target, 'nombres')
        break;
        case "apellidos":
            validarCampo(expresiones.apellido, e.target, 'apellidos')
        break;
        case "NoId":
            validarCampo(expresiones.numeroIdenti, e.target, 'NoId')
        break;
        case "telefono":
            validarCampo(expresiones.telefono, e.target, 'telefono')
        break;
        case "correo":
            validarCampo(expresiones.correo, e.target, 'correo')
        break;
        case "password":
            validarCampo(expresiones.password, e.target, 'password')
        break;
        case "usuario":
            validarCampo(expresiones.usuario, e.target, 'usuario')
        break;
        case "foto":
            validarCampo(expresiones.nombre, e.target, 'foto')
        break;
        case "documentos":
            validarCampo(expresiones.nombre, e.target, 'documentos')
        break;
    };
};

const validarCampo = (expresion, input, campo) => {
    if(expresion.test(input.value)){
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('bxs-check-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('bxs-x-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.remove('formulario__input-error-activo');   
        campos[campo] = true;
    } else {
        document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
        document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} i`).classList.add('bxs-x-circle');
        document.querySelector(`#grupo__${campo} i`).classList.remove('bxs-check-circle');
        document.querySelector(`#grupo__${campo} .formulario__input-error`).classList.add('formulario__input-error-activo');  
        campos[campo] = false;
    }
}

inputs.forEach((input) => {
    input.addEventListener('Keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);
});

formulario.addEventListener('submit', (e) => {
    e.preventDefault();

    if(campos.nombres && campos.apellidos && campos.NoId && campos.telefono && campos.correo && campos.password && campos.usuario){
        formulario.reset();

        document.getElementById('formulario__mensaje-exito').classList.add('formulario__mensaje-exito-activo')
        setTimeout(() => {
            document.getElementById('formulario__mensaje-exito').classList.remove('formulario__mensaje-exito-activo')
        }, 5000);

        document.querySelectorAll ('.formulario__grupo-correcto').forEach((icono) => {
            icono.classList.remove('formulario__grupo-correcto');

        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
        });
    } else {
        document.getElementById('formulario__mensaje').classList.add('formulario__mensaje-activo');
    }
});