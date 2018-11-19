function crearTipodocumento() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-crearTipoDocumento");

    if (!validarCampos("#frm-crearTipoDocumento")) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "tipodocumento": {
            "nombre": inputs["txt-nombre"].value.toUpperCase(),
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "POST";
    var url = "../tipodocumento";
    var message = "al crear el tipo de documento";

    connectionAjx(type, url, jsonData, message);
}

function modificarTipodocumento() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-modificarTipoDocumento");

    if (!validarCampos("#frm-modificarTipoDocumento")) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "tipodocumento": {
            "nombre": inputs["txt-nombre"].value.toUpperCase(),
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "PUT";
    var url = "../../tipodocumento/".concat(inputs["txt-id"].value);
    var message = "al modificar el tipo de documento";

    connectionAjx(type, url, jsonData, message);
}
