<%@ Page Title="Braindo - Registrar Examen" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.MentalExamModule.RegistryPsychoProfile" %>

<asp:Content ID="ContentRegisterExam" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />
</asp:Content>

<asp:Content ID="ContentRegisterExam2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h2>Examen Mental</h2>
            </div>
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group form-group-MentalExam-select">
                            <label>Lista de citas para hoy:</label>
                            <asp:DropDownList id="patient_List" runat="server" CssClass="form-control">
                                <asp:ListItem Value="24773340">24773340 - Luis Perez</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="panel-MentalExam panel-default">
                            <div class="panel-body-MentalExam">
                                <div class="form-group-MentalExam">
                                    <label>Comportamiento:</label>
                                    <textarea runat="server" id="behavior_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Actitud:</label>
                                    <textarea runat="server" id="attitude_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Atención:</label>
                                    <textarea runat="server" id="alertness_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Conciencia:</label>
                                    <textarea runat="server" id="awareness_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Estado de Ánimo:</label>
                                    <textarea runat="server" id="mood_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Lenguaje:</label>
                                    <textarea runat="server" id="language_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Pensamiento:</label>
                                    <textarea runat="server" id="thought_txt" class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <asp:Button ID="btnModifyAppointment" runat="server" Text="Registrar Examen" OnClick = "btnModifyAppointment_Click" CssClass ="btn btn-lg btn-info-MentalExam"></asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                    </div>
                </div>  
           </form>
        </div>    
 </asp:Content> 
