<%@ Page Title="Braindo - Editar Datos" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoProfileEdit.aspx.cs" Inherits="Braindo.View.PsychoProfileEdit" %>

<asp:Content ID="ContentPsychoEdit" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfileEdit.css" />
</asp:Content>

<asp:Content ID="ContentPsychoEdit2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
        <div id="page-wrapper-PsychoEdit">
            <div class="row centerProfileTitle">
                <h2>Editar Datos</h2>
            </div>

             <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="panel-EditProfile panel-default">
                                        <div class="panel-body-EditProfile">
                                        <div class="form-group-ProfileEdit">
                                            <label>Primer Nombre</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Segundo Nombre</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Primer Apellido</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Segundo Apellido</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Fecha de Nacimiento</label>
                                            <input id="date" type="date" class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Número de Matricula</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Correo Electrónico</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <button type="submit" class="btn btn-lg btn-info-ProfileEdit">
                                                Modificar Datos
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
