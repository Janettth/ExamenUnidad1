const btn_empleado = document.getElementById("btn_empleado");
const btn_visitante = document.getElementById("btn_visitante");

const botones_principales = document.getElementById("botones_principales");

const formato_empleado = document.getElementById("formato_registro_empleado");
const formato_visitante = document.getElementById("formato_registro");

const btn_salir_empleado = document.getElementById("btn_salir_empleado");
const btn_salir_visitante = document.getElementById("btn_salir_visitante");


const texto_bienvenida = document.getElementById("texto_bienvenida");

function mostrar_registro_empleado(){
  formato_empleado.style.display = "block";
  //console.log("hola");
  btn_visitante.classList.add("btn_inactivo");
  btn_visitante.style.pointerEvents = 'none';
}

function mostrar_registro_visitante(){
  formato_visitante.style.display = "block";
  btn_empleado.classList.add("btn_inactivo");
  btn_empleado.style.pointerEvents = 'none';
}


function regresar(){
  console.log("ya saliii");
  formato_empleado.style.display = "none";
  formato_visitante.style.display = "none";
  btn_visitante.classList.remove("btn_inactivo");
  btn_empleado.classList.remove("btn_inactivo");

  btn_visitante.style.pointerEvents = 'auto';
  btn_empleado.style.pointerEvents = 'auto';
}

btn_salir_empleado.addEventListener("click", regresar);
btn_salir_visitante.addEventListener("click", regresar);

//Registro empleados
document.getElementById("formEmpleado").addEventListener("submit", e => {
  e.preventDefault();
  let formData = new FormData(e.target);
  fetch("PHP/empleado.php", { method: "POST", body: formData })
  .then(res => {
    if (!res.ok) throw new Error("Error HTTP " + res.status);
    return res.json();
  })
  .then(data => {

    if (data.error) {
      alert(data.error);
      return;
    }

    ocultarFormatos();
    document.getElementById("pase_entrada").style.display = "grid";
    document.getElementById("dato_nombre").innerText = "Nombre: " + data.nombre;
    document.getElementById("dato_motivo").innerText = "Puesto: " + data.motivo;
    document.getElementById("dato_piso").innerText = "";
    document.getElementById("dato_local").innerText = "";
    document.getElementById("registro_id").value = data.id;

    document.getElementById("formEmpleado").reset();
  })
  .catch(err => {
    console.error("Error en fetch:", err);
    alert("No se pudo conectar con empleado.php");
  });
});


// registro de visitantes
document.getElementById("formVisitante").addEventListener("submit", e => {

  console.log("en visitante");
  e.preventDefault();
  let formData = new FormData(e.target);

  fetch("PHP/visitante.php", { method: "POST", body: formData })
  .then(res =>res.json())
  .then(data => {
    console.log("ya quedoo");
    ocultarFormatos();
    document.getElementById("pase_entrada").style.display = "grid";
    document.getElementById("dato_nombre").innerText = "Nombre: " + data.nombre;
    document.getElementById("dato_motivo").innerText = "Motivo: " + data.motivo;
    document.getElementById("dato_piso").innerText = "Piso: " + data.piso;
    document.getElementById("dato_local").innerText = "Oficina: " + data.oficina;
    document.getElementById("registro_id").value = data.id;

    document.getElementById("formVisitante").reset();
  })
  .catch(err => {
    console.error("Error en fetch:", err);
    alert("No se pudo conectar con visitante.php");
  });

});



// Salir de la tarjeta
document.getElementById("formSalida").addEventListener("submit", e => {
  e.preventDefault();
  let formData = new FormData(e.target);

  fetch("PHP/salida.php", { method: "POST", body: formData })
  .then(res => res.text())
  .then(msg => {
    alert(msg);
    document.getElementById("pase_entrada").style.display = "none";
    regresar();
    botones_principales.style.display = "block";
    texto_bienvenida.style.display = "none"
  });

  
});


function ocultarFormatos(){
  formato_empleado.style.display = "none";
  formato_visitante.style.display = "none";
  botones_principales.style.display = "none";

  texto_bienvenida.style.display = "block"
}