<%@ Page Title="Braindo - Modificar Cita" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ModifyMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.ModifyMedicalAppointment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
        <script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
        <script type="text/javascript" src="/Content/js/OnlyNumbersValidation.js"></script>
        <script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
        <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Modificar Cita</h2>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="panel-Medical panel-default">
                                <div class="panel-body-Medical">
                                    <div class="form-group-Medical">
                                        <label>Fecha de la Cita</label>
                                        <input runat="server" id="date_appointment_txt" type="date" class="form-control-Medical"/>
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
                                        <asp:Button ID="btnModifyAppointment" runat="server" Text="Modificar Cita" OnClick = "btnModifyAppointment_Click" CssClass ="btn btn-lg btn-info-Medical"></asp:Button>
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
</asp:Content>
