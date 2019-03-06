<%@ Page Title="Braindo - Editar Datos del Paciente" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="EditPatientInformation.aspx.cs" Inherits="Braindo.View.PatientModule.EditPatientInformation" %>

<asp:Content ID="ContentEditPatient" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/BootBoxCustom.css" />
    <%--<script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/OnlyNumbersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>--%>
</asp:Content>

<asp:Content ID="ContentEditPatient2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h3>Editar Datos Personales del Paciente</h3>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="panel-Patient panel-default">
                                <div class="panel-body-Patient">
                                <div class="form-group-Patient">
                                    <label>Primer Nombre</label>
                                    <asp:TextBox runat="server" id="nameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'name'); return b" CssClass="form-control-Patient">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-Patient">
                                    <label>Primer Apellido</label>
                                    <asp:TextBox runat="server" id="surnameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'surname'); return b" CssClass="form-control-Patient">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-Patient">
                                    <label>Edad</label>
                                    <asp:TextBox runat="server" id="ageTXT" onkeypress="return AllowNumbers(event)" CssClass="form-control-Patient">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-Patient">
                                    <label>Carrera</label>
                                    <asp:DropDownList id="career1" runat="server" CssClass="form-control-Patient">
                                        <asp:ListItem Value="Ingeniería Informática">Ingeniería Informática</asp:ListItem>
                                        <asp:ListItem Value="Ingeniería Civil">Ingeniería Civil</asp:ListItem>
                                        <asp:ListItem Value="Ingeniería en Telecomunicaciones">Ingeniería en Telecomunicaciones</asp:ListItem>
                                        <asp:ListItem Value="Ingeniería Industrial">Ingeniería Industrial</asp:ListItem>
                                        <asp:ListItem Value="Psicología">Psicología</asp:ListItem>
                                        <asp:ListItem Value="Teología">Teología</asp:ListItem>
                                        <asp:ListItem Value="Filosofía">Filosofía</asp:ListItem>
                                        <asp:ListItem Value="Letras">Letras</asp:ListItem>
                                        <asp:ListItem Value="Comunicación Social">Comunicación Social</asp:ListItem>
                                        <asp:ListItem Value="Relaciones Industriales">Relaciones Industriales</asp:ListItem>
                                        <asp:ListItem Value="Derecho">Derecho</asp:ListItem>
                                        <asp:ListItem Value="Administración y Contaduría">Administración y Contaduría</asp:ListItem>
                                        <asp:ListItem Value="Economía">Economía</asp:ListItem>
                                        <asp:ListItem Value="Educación">Educación</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                    <div class="form-group-Patient">
                                    <label>Estado</label>
                                    <asp:DropDownList id="state1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"  AutoPostBack="True" OnSelectedIndexChanged ="State_SelectedIndex">
                                    
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group-Patient">
                                    <label>Municipio</label>
                                    <asp:DropDownList id="municipality1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"  AutoPostBack="True" OnSelectedIndexChanged ="Municipality_SelectedIndex">
                                                
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group-Patient">
                                    <label>Parroquia</label>
                                    <asp:DropDownList id="parish1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"   AutoPostBack="True">
                                                
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group-Patient">
                                    <asp:Button ID="btnChangeData" runat="server" Text="MODIFICAR" OnClick = "btnChangeData_Click" CssClass ="btn btn-lg btn-info-Patient"></asp:Button>
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
                    window.location.href = 'ConsultPatients.aspx';
                }
            })
        }
     </script>
</asp:Content>
