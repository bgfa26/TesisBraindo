<%@ Page Title="Braindo - Perfil del Psicólogo" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="PsychoProfile.aspx.cs" Inherits="Braindo.View.PsychoProfile" %>

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
                                <input class="form-control-Psychologist" placeholder="20678868" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Número de Matricula:</label>
                                <input class="form-control-Psychologist" placeholder="20678868-2702" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Nombre Completo:</label>
                                <input class="form-control-Psychologist" placeholder="Ronald Efrain Navas Hernandez" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Fecha de Nacimiento:</label>
                                <input class="form-control-Psychologist" placeholder="27/02/1993" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Correo Electrónico:</label>
                                <input class="form-control-Psychologist" placeholder="rn2702@gmail.com" disabled="disabled"/>
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
