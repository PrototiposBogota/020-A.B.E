function crearCiudad() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-crearCiudad");

    if (!validarCampos("#frm-crearCiudad")
        || inputs["select-departamento"].value == ""
        || inputs["select-departamento"].value.length <= 0 ) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "ciudad": {
            "departamento_id":inputs["select-departamento"].value,
            "codigo": inputs["txt-codigo"].value,
            "nombre": inputs["txt-nombre"].value,
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "POST";
    var url = "../ciudad";
    var message = "al crear la ciudad";

    connectionAjx(type, url, jsonData, message);
}

function modificarCiudad() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-modificarCiudad");

    if (!validarCampos("#frm-modificarCiudad")
        || inputs["select-departamento"].value == ""
        || inputs["select-departamento"].value.length <= 0 ) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "ciudad": {
            "departamento_id":inputs["select-departamento"].value,
            "codigo": inputs["txt-codigo"].value,
            "nombre": inputs["txt-nombre"].value,
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "PUT";
    var url = "../../ciudad/".concat(inputs["txt-id"].value);
    var message = "al modificar la ciudad";

    connectionAjx(type, url, jsonData, message);
}
