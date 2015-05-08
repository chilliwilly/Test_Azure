function validaLogin(usr, pwd) {
    $.ajax({
        type: "POST",
        url: "/web_service/ws_login.asmx/validaLogin",
        datatype: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({ "user": usr, "passwd": pwd }),
        success: function (data, status) {
            alert(data.d);
            window.location = "http://www.teamliquid.net";
        },
        error: function (data) {
            alert("Error ejecutar validador de login");
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