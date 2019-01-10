<%@ Page Title="Braindo - Registrar Cita Medica" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegisterMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.RegisterMedicalAppointment" %>


<asp:Content ID="ContentRegisterAppointment" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
</asp:Content>


<asp:Content ID="ContentRegisterAppointment2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Registrar Cita</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="form-group form-group-MentalExam-select">
                                        <label>Lista de pacientes:</label>
                                        <asp:DropDownList id="patient_List" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="24773340">24773340 - Luis Perez</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="panel-Medical panel-default">
                                        <div class="panel-body-Medical">
                                            <div class="form-group-Medical">
                                                <label>Fecha de la Cita</label>
                                                <input runat="server" id="date_appointment" type="date" class="form-control-Medical"/>
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
                                                <input runat="server" id="reason_txt" class="form-control-Medical"/>
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
             </form>
        </div>
 </asp:Content>
