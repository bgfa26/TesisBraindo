<%@ Page Title="Braindo | Registrar Examen" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.MentalExamModule.RegistryPsychoProfile" %>

<asp:Content ID="ContentRegisterExam" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/BootBoxCustom.css" />
    <%--<script type="text/javascript" src="/Content/js/lengthValidation.js"></script>--%>
</asp:Content>

<asp:Content ID="ContentRegisterExam2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-MentalExam">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            </asp:ScriptManager>
            <div class="row centerProfileTitle">
                <h3>Examen Mental</h3>
            </div>
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                    <div class="form-group form-group-MentalExam-select" runat="server" id="NoRecord" visible="false">
                        <label id="Label1" runat="server" style="font-size:16px">Lista de citas:</label>
                        <asp:DropDownList id="NoRecordList" runat="server" AutoPostBack="true" CssClass="form-control">
                            <asp:ListItem>No tiene citas registradas</asp:ListItem>    
                        </asp:DropDownList>
                    </div>
                    <div class="form-group form-group-MentalExam-select" runat="server" id="Record">
                        <label id="AppointmentList_Tittle" runat="server" style="font-size:16px">Lista de citas:</label>
                        <asp:DropDownList id="patient_List" runat="server" AutoPostBack="true" CssClass="form-control">    
                        </asp:DropDownList>
                    </div>
                    <div class="panel-MentalExam panel-default">
                        <div class="panel-body-MentalExam">
                            <div class="form-group-MentalExam">
                                <label>Comportamiento:</label>
                                <textarea runat="server" id="behavior_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Actitud:</label>
                                <textarea runat="server" id="attitude_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Atención:</label>
                                <textarea runat="server" id="alertness_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Conciencia:</label>
                                <textarea runat="server" id="awareness_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Estado de Ánimo:</label>
                                <textarea runat="server" id="mood_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Lenguaje:</label>
                                <textarea runat="server" id="language_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Pensamiento:</label>
                                <textarea runat="server" id="thought_txt" onkeypress="lengthValidationAlert(event, this.value, 'mentalExam');" class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <asp:Button ID="btnRegisterPsychoProfile" runat="server" Text="REGISTRAR" OnClick = "btnRegisterPsychoProfile_Click" CssClass ="btn btn-lg btn-info-MentalExam"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>  
        </div>
    <script type="text/javascript">
        $(document).ready(function () {
            //Disable cut copy paste
            $('body').bind('cut copy paste', function (e) {
                e.preventDefault();
            });

            //Disable mouse right click
            $("body").on("contextmenu", function (e) {
                return false;
            });
        });
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
                    window.location.href = '../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';
                }
            })
        }
     </script>  
 </asp:Content> 
