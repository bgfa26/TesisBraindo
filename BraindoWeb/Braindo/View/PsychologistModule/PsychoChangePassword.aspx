<%@ Page Title="Braindo - Cambio de Contraseña" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoChangePassword.aspx.cs" Inherits="Braindo.View.PsychologistModule.PsychoChangePassword" %>

<asp:Content ID="ContentPsychoChange" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfileEdit.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/BootBoxCustom.css" />
    <%--<script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>--%>
</asp:Content>

<asp:Content ID="ContentPsychoChange2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="page-wrapper-PsychoEdit">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
            <div class="row centerProfileTitle">
                <h3>Cambiar Contraseña</h3>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="panel-EditProfile panel-default">
                                <div class="panel-body-EditProfile">
                                    <div class="form-group-ProfileEdit">
                                        <label>Nueva Contraseña</label>
                                        <asp:TextBox runat="server" id="passTXT" TextMode="Password" onkeypress="lengthValidationAlert(event, this.value, 'pass');" CssClass="form-control-ProfileEdit">
                                        </asp:TextBox>
                                    </div>  
                                    <div class="form-group-ProfileEdit">
                                        <asp:Button ID="btnChange" runat="server" Text="MODIFICAR" OnClick = "btnChange_Click" CssClass ="btn btn-lg btn-info-ProfileEdit"></asp:Button>
                                    </div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                    message: 'Por favor, introduzca sólo numeros',
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
                    message: 'Por favor, introduzca sólo letras o numeros',
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

            var n = field.localeCompare(strPass);
            var n2 = field.localeCompare(strName);
            var n3 = field.localeCompare(strSurname);
            var n4 = field.localeCompare(strRegistration);

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
            else if ((n2 == 0) && (val.length >= 15)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 15 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n3 == 0) && (val.length >= 15)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 15 caracteres',
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {

                    }
                })
                return false;
            }
            else if ((n4 == 0) && (val.length >= 15)) {
                evt.preventDefault();
                bootbox.hideAll();
                bootbox.alert({
                    message: 'Máximo 15 caracteres',
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
                    window.location.href = 'PsychoProfile.aspx';
                }
            })
        }
     </script>
</asp:Content>

