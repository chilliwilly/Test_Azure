function validaLogin() {
    $.ajax({
        type: "POST",
        url: "/asmx_files/js_llenado.asmx/insObjCotizacion",
        datatype: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({ "cot": CotizacionObject(), "trans": CotizacionTransObject(), "comi": CotizacionComisObject() }),
        success: function (data, status) {
            $("#txtMailVendedor").val(data.d);
        },
        error: function (data) {
            alert("Error al buscar mail del vendedor");
        }
    });
}

function Usuario() {
    var objUsuario = {};
    objUsuario.usrid = "";
    objUsuario.usrnom = "";
    objUsuario.usrpcs = "";

    return objUsuario;
}