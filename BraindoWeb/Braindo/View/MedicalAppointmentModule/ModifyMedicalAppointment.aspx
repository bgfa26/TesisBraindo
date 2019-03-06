<%@ Page Title="Braindo - Modificar Cita" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ModifyMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.ModifyMedicalAppointment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
        <link rel="stylesheet" type="text/css" href="/Content/css/BootBoxCustom.css" />
<%--        <script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
        <script type="text/javascript" src="/Content/js/OnlyNumbersValidation.js"></script>
        <script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
        <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper-Medical">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
            <div class="row centerProfileTitle">
                <h3>Modificar Cita</h3>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="panel-Medical panel-default">
                                <div class="panel-body-Medical">
                                    <div class="form-group-Medical">
                                        <label>Fecha de la Cita</label>
                                        <input runat="server" id="date_appointment_txt" required="required" type="date" class="form-control-Medical"/>
                                    </div>
                                    <div class="form-group-Medical">
                                        <label>Hora:</label>
                                        <asp:DropDownList id="hour_appointment" runat="server" CssClass="form-control-Medical">
                                            <asp:ListItem Value="07:00">7:00 am</asp:ListItem>
                                            <asp:ListItem Value="08:00">8:00 am</asp:ListItem>
                                            <asp:ListItem Value="09:00">9:00 am</asp:ListItem>
                                            <asp:ListItem Value="10:00">10:00 am</asp:ListItem>
                                            <asp:ListItem Value="11:00">11:00 am</asp:ListItem>
                                            <asp:ListItem Value="12:00">12:00 pm</asp:ListItem>
                                            <asp:ListItem Value="13:00">1:00 pm</asp:ListItem>
                                            <asp:ListItem Value="14:00">2:00 pm</asp:ListItem>
                                            <asp:ListItem Value="15:00">3:00 pm</asp:ListItem>
                                            <asp:ListItem Value="16:00">4:00 pm</asp:ListItem>
                                            <asp:ListItem Value="17:00">5:00 pm</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group-Medical">
                                        <label>Motivo</label>
                                        <asp:TextBox runat="server" id="reasonTXT" onkeypress="lengthValidationAlert(event, this.value, 'medicalAppointment');" CssClass="form-control-Medical">
                                        </asp:TextBox>
                                    </div>                           
                                    <div class="form-group-Medical">
                                        <asp:Button ID="btnModifyAppointment" runat="server" Text="MODIFICAR" OnClick = "btnModifyAppointment_Click" CssClass ="btn btn-lg btn-info-Medical"></asp:Button>
                                    </div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <script>

         var today = new Date().toISOString().split('T')[0];
         document.getElementById('<%= date_appointment_txt.ClientID %>').setAttribute('min', today);
        
    </script>
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
                    window.location.href = 'ConsultMedicalAppointment.aspx';
                }
            })
        }
     </script>
</asp:Content>
