<%@ Page Title="Braindo - Perfil del Psicólogo" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoProfile.aspx.cs" Inherits="Braindo.View.PsychologistModule.PsychoProfile" %>

<asp:Content ID="ContentPsychoProfile" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfile.css" />

</asp:Content>

<asp:Content ID="ContentPsychoProfile2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="page-wrapper-Psychologist">
            <div class="centerProfileTitle">
                <h2>Perfil del Psicólogo</h2>
            </div>

            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                   <div class="panel-Psychologist panel-default">
                        <div class="panel-body-Psychologist">
                            <div class="form-group-Psychologist">
                                <label>Cédula:</label>
                                <input runat="server" id="cedula_txt" class="form-control-Psychologist" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Número de Matricula:</label>
                                <input runat="server" id="matricula_txt" class="form-control-Psychologist" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Nombre Completo:</label>
                                <input runat="server" id="nombreCompleto_txt" class="form-control-Psychologist" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Fecha de Nacimiento:</label>
                                <input runat="server" id="fechaNac_txt" class="form-control-Psychologist" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Correo Electrónico:</label>
                                <input runat="server" id="correo_txt" class="form-control-Psychologist" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <a href="../PsychologistModule/PsychoProfileEdit.aspx" class="PsychoLink">
                                  Editar Datos
                                </a>
                            </div>
                            <div class="form-group-Psychologist">
                                <a href="../PsychologistModule/PsychoChangePassword.aspx" class="PsychoLink">
                                  Cambiar Contraseña
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
</asp:Content>
