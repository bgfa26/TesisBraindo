<%@ Page Title="Braindo - Cambio de Contraseña" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoChangePassword.aspx.cs" Inherits="Braindo.View.PsychologistModule.PsychoChangePassword" %>

<asp:Content ID="ContentPsychoChange" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfileEdit.css" />
    <script type="text/javascript" src="/Content/js/AlphanumericValidation.js"></script>
    <script type="text/javascript" src="/Content/js/lengthValidation.js"></script>
</asp:Content>

<asp:Content ID="ContentPsychoChange2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="page-wrapper-PsychoEdit">
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
                                        <asp:Button ID="btnChange" runat="server" Text="Cambiar Contraseña" OnClick = "btnChange_Click" CssClass ="btn btn-lg btn-info-ProfileEdit"></asp:Button>
                                    </div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

