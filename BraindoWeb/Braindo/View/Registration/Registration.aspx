﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Braindo.View.Registration.Registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Braindo | Registrar Psicologo</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css">

    <!-- JS -->
    <script src="js/main.js"></script>

    <%--JS Para bootbox--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <script src="vendor/jquery/jquery.min.js"></script>

    <%--Bootbox--%>
    <script src="/Content/bootbox/popper.min.js"></script>
    <script type="text/javascript" src="/Content/bootstrap/js/bootstrap.min.js"></script>
    <script src="/Content/bootbox/bootbox.min.js"></script>
    <script src="/Content/bootbox/bootbox.locales.min.js"></script>

    <script>
        function BootAlert(msg) {
            bootbox.alert({
                message: msg,
                size: 'small',
                className: "centerDialog",
                callback: function () {

                }
            })
        }
     </script>

    <script>
        function showPassword() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
   </script>

    <script>
        function showRePassword() {
            var x = document.getElementById("re_password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
   </script>

</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form runat="server" id="signupform" class="signup-form">
                        <h2 class="form-title">Registro de psicólogos</h2>
                        <div class="form-group">
                            <input type="number" class="form-input" name="id" id="id" placeholder="Cédula de identidad" max="8" min="6"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="psychologicalId" id="psychologicalId" placeholder="Número de registro" maxlength="15"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="firstname" id="firstname" placeholder="Primer nombre" maxlength="30"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="secondname" id="secondname" placeholder="Segundo nombre" maxlength="30"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="firstlastname" id="firstlastname" placeholder="Primer apellido" maxlength="30"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="secondlastname" id="secondlastname" placeholder="Segundo apellido" maxlength="30"/>
                        </div>
                        <div class="form-group">
                            <input type="text" onfocus="(this.type='date')" class="form-input" name="birthday" id="birthday" placeholder="Fecha de nacimiento"/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Correo electrónico" maxlength="30"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="Contraseña" maxlength="30"/>
                            <span onclick="showPassword()" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="re_password" id="re_password" placeholder="Repetir contraseña" maxlength="30"/>
                            <span onclick="showRePassword()" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <asp:ScriptManager runat="server" ID="sm">
                        </asp:ScriptManager>
                        <asp:updatepanel runat="server">
                            <ContentTemplate>
                                 <asp:Button ID="aceptar" runat="server" Text="Registrar" class="buttonLog" OnClick="aceptar_Click" />
                            </ContentTemplate>
                        </asp:updatepanel>
                    </form>
                </div>
            </div>
        </section>

    </div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>