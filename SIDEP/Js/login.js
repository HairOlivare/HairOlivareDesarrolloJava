const correo = document.getElementById("correo");
const password = document.getElementById("password");
const formulario = document.getElementById("formulario");
const parrafo = document.getElementById("warnings");

formulario.addEventListener("submit", e => {
    e.preventDefault()
    let warnings = ""
    let entrar = false
    let regexemail = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
    let pass = /^.{8,12}$/
    parrafo.innerHTML = ""

    if(!regexemail.test(correo.value)) {
        warnings += `El correo no es valido <br>`
        entrar = true
    }
    if(!pass.test(password.value)){
        warnings += `La contraseña no es valida <br>`
        entrar = true
    }

    if(entrar){
        parrafo.innerHTML = warnings
    }
})