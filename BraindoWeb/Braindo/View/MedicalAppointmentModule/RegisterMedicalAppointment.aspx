<%@ Page Title="Braindo - Registrar Cita Medica" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegisterMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.RegisterMedicalAppointment" %>


<asp:Content ID="ContentRegisterAppointment" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
    <script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/OnlyNumbersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>
</asp:Content>


<asp:Content ID="ContentRegisterAppointment2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Registrar Cita</h2>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="form-group form-group-MentalExam-select" runat="server" id="NoRecord" visible="false">
                                <label>Lista de pacientes:</label>
                                <asp:DropDownList id="NoRecordList" runat="server" AutoPostBack="true" CssClass="form-control">
                                        <asp:ListItem>No tiene pacientes registrados</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group form-group-MentalExam-select" runat="server" id="Record">
                                <label>Lista de pacientes:</label>
                                <asp:DropDownList id="patient_List" runat="server" AutoPostBack="true" CssClass="form-control">
                                        
                                </asp:DropDownList>
                            </div>
                            <div class="panel-Medical panel-default">
                                <div class="panel-body-Medical">
                                    <div class="form-group-Medical">
                                        <label>Fecha de la Cita</label>
                                        <input runat="server" name="dateApp" id="date_appointment" required="required" type="date" class="form-control-Medical"/>
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
                                        <asp:Button ID="btnRegisterAppointment" runat="server" Text="Registrar Cita" OnClick = "btnRegisterAppointment_Click" CssClass ="btn btn-lg btn-info-Medical"></asp:Button>
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
            document.getElementById('<%= date_appointment.ClientID %>').setAttribute('min', today);
        
    </script>
 </asp:Content>
