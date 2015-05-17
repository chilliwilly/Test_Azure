<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TestAzure.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />    
    <script src="Scripts/bootstrap.js"></script>    
    <script src="web_script/js_usuario.js"></script>
</head>
<body>
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Acceso Sistema Cotizacion</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Problemas con Contraseña?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="form1" runat="server" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="inputEmail" type="text" class="form-control" name="username" value="" placeholder="Nombre de Usuario" required />
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="inputPasswd" type="password" class="form-control" name="password" placeholder="Contraseña" required autofocus />
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <a id="btn-login" class="btn btn-success" onclick="validaRequired();">Entrar</a>
                                    <%--<a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>--%>

                                </div>
                            </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Cualquier problema con el acceso, contactar con el administrador
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            aqui!.
                                        </a>
                                        </div>
                                    </div>
                                </div>                             
                            </form>  
                        </div>                     
                    </div>  
        </div>   
    </div>

    <script type="text/javascript">
        function validaRequired() {
            if ($("#inputPasswd").val() == "" || $("#inputPasswd").val() == null) {
                alert("Debe ingresar una contraseña");
            }
            else {
                validaLogin($("#inputEmail").val(), $("#inputPasswd").val());
            }
        }
    </script>
</body>
</html>
