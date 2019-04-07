<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Braindo.View.Registration.Registration" %>

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

   <%--<script>
       $(document).ready(function () {
           //called when key is pressed in textbox
           $("#idNumber").keypress(function (e) {

               var maxlengthNumber = parseInt($('#idNumber').attr('maxlength'));
               var inputValueLength = $('#idNumber').val().length + 1;
               if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {

                   return false;
               }
               if (maxlengthNumber < inputValueLength) {
                   return false;
               }
           });
       });
   </script>--%>

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
                            <input type="number" class="form-input" name="idNumber" id="idNumber" placeholder="Cédula de identidad" onkeypress="lengthValidationAlert(event, this.value, 'pass');" />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="psychologicalId" id="psychologicalId" placeholder="Número de registro" onkeypress="var b = AllowAlphaNumeric(event);lengthValidationAlert(event, this.value, 'registration'); return b"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="firstname" id="firstname" placeholder="Primer nombre" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'name'); return b"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="secondname" id="secondname" placeholder="Segundo nombre" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'name'); return b"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="firstlastname" id="firstlastname" placeholder="Primer apellido" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'surname'); return b"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="secondlastname" id="secondlastname" placeholder="Segundo apellido" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'surname'); return b"/>
                        </div>
                        <div class="form-group">
                            <input type="text" onfocus="(this.type='date')" class="form-input" name="birthday" id="birthday" placeholder="Fecha de nacimiento"/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Correo electrónico"/>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="Contraseña" onkeypress="lengthValidationAlert(event, this.value, 'pass');"/>
                            <span onclick="showPassword()" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="re_password" id="re_password" placeholder="Repetir contraseña" onkeypress="lengthValidationAlert(event, this.value, 'pass');"/>
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
    <script>
        function AllowAlphabet(e) {
            isIE = document.all ? 1 : 0
            key = !isIE ? e.which : event.keyCode;
            if ((key != 32) && (key < 65) || (key > 90) && (key < 97) || (key > 122 && key != 241 && key != 209 && key != 225 && key != 233 && key != 237 && key != 243 && key != 250 && key != 193 && key != 201 && key != 205 && key != 211 && key != 218)) {
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Por favor, introduzca sólo letras',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else {
                return true;
            }
        }
    </script>
    <script>
        function AllowNumbers(e) {
            isIE = document.all ? 1 : 0
            keyEntry = !isIE ? e.which : event.keyCode;
            if (((keyEntry >= '48') && (keyEntry <= '57')) || keyEntry == '8' || keyEntry == '32')
                return true;
            else {
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Por favor, introduzca sólo números',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
        }
    </script>
    <script>
        function AllowAlphaNumeric(e) {
            isIE = document.all ? 1 : 0
            keyEntry = !isIE ? e.which : event.keyCode;
            if (((keyEntry >= '65') && (keyEntry <= '90')) || ((keyEntry >= '96') && (keyEntry <= '122')) || ((keyEntry >= '48') && (keyEntry <= '57')) || (keyEntry == '46') || (keyEntry == '32') || keyEntry == '45' || keyEntry == '8' || keyEntry == '32')
                return true;
            else {
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Por favor, introduzca sólo letras o números',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
        }
    </script>
    <script>
        function lengthValidationAlert(evt, val, field) {

            /*PSYCHOLOGIST AND PATIENT MODULE*/
            var strPass = "pass";
            var strName = "name";
            var strSurname = "surname";
            var strRegistration = "registration";
            var strAge = "age";

            var n = field.localeCompare(strPass);
            var n2 = field.localeCompare(strName);
            var n3 = field.localeCompare(strSurname);
            var n4 = field.localeCompare(strRegistration);
            var n41 = field.localeCompare(strAge);

            if ((n == 0) && (val.length >= 8)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 8 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n2 == 0) && (val.length >= 30)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 30 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n3 == 0) && (val.length >= 30)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 30 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n4 == 0) && (val.length >= 30)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 30 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n41 == 0) && (val.length >= 2)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 2 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }



            /*MENTAL EXAMN AND MEDICAL APPOINTMENT MODULE*/
            //MENTAL EXAM
            var strMentalExam = "mentalExam";
            var strMedicalApp = "medicalAppointment";

            var n5 = field.localeCompare(strMentalExam);
            var n6 = field.localeCompare(strMedicalApp);

            if ((n5 == 0) && (val.length >= 699)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Excediste el tamaño asignado',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }

            if ((n6 == 0) && (val.length >= 199)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Excediste el tamaño asignado',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }

        }
    </script>
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
        function BootAlertNoRegistration(msg) {
            bootbox.alert({
                message: msg,
                size: 'small',
                className: "centerDialog",
                callback: function () {
                    window.location.href = 'ConsultPatients.aspx';
                }
            })
        }
     </script>
</html>