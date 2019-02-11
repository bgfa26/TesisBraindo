<%@ Page Title="Braindo - Registrar Examen" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.MentalExamModule.RegistryPsychoProfile" %>

<asp:Content ID="ContentRegisterExam" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>
</asp:Content>

<asp:Content ID="ContentRegisterExam2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h2>Examen Mental</h2>
            </div>
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                    <div class="form-group form-group-MentalExam-select" runat="server" id="NoRecord" visible="false">
                        <asp:Label ID="Label1" runat="server">Lista de citas:</asp:Label>
                        <asp:DropDownList id="NoRecordList" runat="server" AutoPostBack="true" CssClass="form-control">
                            <asp:ListItem>No tiene citas registradas</asp:ListItem>    
                        </asp:DropDownList>
                    </div>
                    <div class="form-group form-group-MentalExam-select" runat="server" id="Record">
                        <asp:Label ID="AppointmentList_Tittle" runat="server">Lista de citas:</asp:Label>
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
                                <asp:Button ID="btnRegisterPsychoProfile" runat="server" Text="Registrar Examen" OnClick = "btnRegisterPsychoProfile_Click" CssClass ="btn btn-lg btn-info-MentalExam"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>  
        </div>    
 </asp:Content> 
