function crearDepartamento() {

    mensaje("open", "", "");

    if (!validarCampos("#frm-crearDepartamento")) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var inputs = document.getElementById("frm-crearDepartamento");

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "departamento": {
            "codigo": inputs["txt-codigo"].value,
            "nombre": inputs["txt-nombre"].value,
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "POST";
    var url = "../departamento";
    var message = "al crear el departamento";

    connectionAjx(type, url, jsonData, message);
}

function modificarDepartamento() {

    mensaje("open", "", "");

    if (!validarCampos("#frm-modificarDepartamento")) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var inputs = document.getElementById("frm-modificarDepartamento");

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "departamento": {
            "codigo": inputs["txt-codigo"].value,
            "nombre": inputs["txt-nombre"].value,
            "descripcion": inputs["txt-descripcion"].value
        }
    }

    var type = "PUT";
    var url = "../../departamento/".concat(inputs["txt-id"].value);
    var message = "al modificar el departamento";

    connectionAjx(type, url, jsonData, message);
}
