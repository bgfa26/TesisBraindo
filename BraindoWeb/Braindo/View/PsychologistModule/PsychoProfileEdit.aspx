<%@ Page Title="Braindo - Editar Datos" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoProfileEdit.aspx.cs" Inherits="Braindo.View.PsychologistModule.PsychoProfileEdit" %>

<asp:Content ID="ContentPsychoEdit" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfileEdit.css" />
    <script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>
</asp:Content>

<asp:Content ID="ContentPsychoEdit2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
        <div id="page-wrapper-PsychoEdit">
            <div class="row centerProfileTitle">
                <h2>Editar Datos</h2>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <div class="panel-EditProfile panel-default">
                                <div class="panel-body-EditProfile">
                                <div class="form-group-ProfileEdit">
                                    <label>Primer Nombre</label>
                                    <asp:TextBox runat="server" id="nameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'name'); return b" CssClass="form-control-ProfileEdit">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Segundo Nombre</label>
                                    <asp:TextBox runat="server" id="secondNameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'name'); return b" CssClass="form-control-ProfileEdit">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Primer Apellido</label>
                                    <asp:TextBox runat="server" id="surnameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'surname'); return b" CssClass="form-control-ProfileEdit">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Segundo Apellido</label>
                                    <asp:TextBox runat="server" id="secondSurnameTXT" onkeypress="var b = AllowAlphabet(event);lengthValidationAlert(event, this.value, 'surname'); return b" CssClass="form-control-ProfileEdit">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Fecha de Nacimiento</label>
                                    <input runat="server" id="date" type="date" required="required" class="form-control-ProfileEdit"/>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Número de Matricula</label>
                                    <asp:TextBox runat="server" id="registrationNumberTXT" onkeypress="var b = AllowAlphaNumeric(event);lengthValidationAlert(event, this.value, 'registration'); return b" CssClass="form-control-ProfileEdit">
                                    </asp:TextBox>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <label>Correo Electrónico</label>
                                    <input runat="server" id="email_txt" type="email" class="form-control-ProfileEdit"/>
                                </div>
                                <div class="form-group-ProfileEdit">
                                    <asp:Button ID="btnChangeData" runat="server" Text="Modificar Datos" OnClick = "btnChangeData_Click" CssClass ="btn btn-lg btn-info-ProfileEdit"></asp:Button>
                                </div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
