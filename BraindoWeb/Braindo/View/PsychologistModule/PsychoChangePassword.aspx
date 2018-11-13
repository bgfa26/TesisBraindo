<%@ Page Title="Braindo - Cambio de Contraseña" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoChangePassword.aspx.cs" Inherits="Braindo.View.PsychologistModule.PsychoChangePassword" %>

<asp:Content ID="ContentPsychoChange" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfileEdit.css" />

</asp:Content>

<asp:Content ID="ContentPsychoChange2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="page-wrapper-PsychoEdit">
            <div class="row centerProfileTitle">
                <h2>Cambiar Contraseña</h2>
            </div>

             <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="panel-EditProfile panel-default">
                                        <div class="panel-body-EditProfile">
                                        <div class="form-group-ProfileEdit">
                                            <label>Contraseña Anterior</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Nueva Contraseña</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>  
                                        <div class="form-group-ProfileEdit">
                                            <button type="submit" class="btn btn-lg btn-info-ProfileEdit">
                                                Cambiar Contraseña
                                            </button>
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

