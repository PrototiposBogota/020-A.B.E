function materializeInit() {
    $('.sidenav').sidenav();
    $('.dropdown-trigger').dropdown();
    $('.collapsible').collapsible();
    $('select').formSelect();
    $('.modal').modal();
    $('.datepicker').datepicker({
        format: "dd/mm/yyyy"
    });
    $('.parallax').parallax();
}

function connectionAjx(_type, _url, _jsonData, _message) {

    $.ajax({
        type: _type,
        url: _url,
        dataType: "JSON",
        data: _jsonData,
        success: function (result) {
            connectionSuccess(result);
        },
        error: function (xhr, status, error) {
            connectionError(xhr, status, error, _message);
        }
    });
}

function connectionSuccess(result) {

    if (result.estado == "0") {
        mensaje("close", "success", result.mensaje);
    } else {
        mensaje("close", "error", result.mensaje);
    }
}

function connectionError(xhr, status, error, _message) {
    console.log(status);
    console.log(xhr);

    mensaje("close", "error", "Excepción: Problemas ".concat(_message));
}

function validarCampos(idForm) {

    var respuesta = true;
    var selector = idForm.concat(" input[type=text]");

    var inputs = $(selector);

    for (var i = 0; i < inputs.length; i++) {

        if (inputs[i].value.length <= 0 && inputs[i].className == "validate") {
            respuesta = false;
            break;
        }
    }
    return respuesta;
}

function mensaje(accion, estado, mensaje) {

    if (accion == "open") {

        $("#div-message").addClass("hidden-element");
        $("#div-progress").removeClass("hidden-element");
        $("#span-message").html("");

        $("#frm-crearDepartamento button").addClass("disabled");
        $("#frm-crearDepartamento input").attr("disabled", "disabled");

    } else if (accion == "close") {

        $("#div-progress").addClass("hidden-element");
        $("#div-message").removeClass("hidden-element");
        $("#span-message").html(mensaje);

        if (estado == "success") {
            $("#div-message").removeClass("card-panel red lighten-2");
            $("#div-message").addClass("card-panel teal lighten-2");
        } else if (estado == "error") {
            $("#div-message").removeClass("card-panel teal lighten-2");
            $("#div-message").addClass("card-panel red lighten-2");
        }

        $("#frm-crearDepartamento button").removeClass("disabled");
        $("#frm-crearDepartamento input").removeAttr("disabled");

        setTimeout(function () {
            $("#div-message").addClass("hidden-element");
        }, 3000)
    }
}

