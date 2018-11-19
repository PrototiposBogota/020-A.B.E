function crearUnversidad() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-crearUniversidad");

    if (!validarCampos("#frm-crearUniversidad")
        || inputs["select-ciudad"].value == ""
        || inputs["select-ciudad"].value.length <= 0 ) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "universidad": {
            "ciudad_id":inputs["select-ciudad"].value,
            "nit": inputs["txt-nit"].value,
            "nombre": inputs["txt-nombre"].value,
            "dereccion": inputs["txt-dereccion"].value,
            "telefono": inputs["txt-telefono"].value,
            "estado": "activo"
        }
    }

    var type = "POST";
    var url = "../universidad";
    var message = "al crear la universidad";

    connectionAjx(type, url, jsonData, message);
}

function modificarUnversidad() {

    mensaje("open", "", "");

    var inputs = document.getElementById("frm-modificarUniversidad");

    if (!validarCampos("#frm-modificarUniversidad")
        || inputs["select-ciudad"].value == ""
        || inputs["select-ciudad"].value.length <= 0 ) {

        mensaje("close", "error", "Error: Los campos marcados con * son obligatorios");

        return false;
    }

    var jsonData = {
        "authenticity_token": inputs["authenticity_token"].value,
        "universidad": {
            "ciudad_id":inputs["select-ciudad"].value,
            "nit": inputs["txt-nit"].value,
            "nombre": inputs["txt-nombre"].value,
            "dereccion": inputs["txt-dereccion"].value,
            "telefono": inputs["txt-telefono"].value,
            "estado": "activo"
        }
    }

    var type = "PUT";
    var url = "../../universidad/".concat(inputs["txt-id"].value);
    var message = "al modificar la universidad";

    connectionAjx(type, url, jsonData, message);
}
