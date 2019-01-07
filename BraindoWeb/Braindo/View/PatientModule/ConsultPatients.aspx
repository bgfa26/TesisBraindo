﻿<%@ Page Title="Braindo - Lista de Pacientes" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultPatients.aspx.cs" Inherits="Braindo.View.PatientModule.ConsultPatients" %>


<asp:Content ID="ContentConsultPatient" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
</asp:Content>


<asp:Content ID="ContentConsultPatient2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h2>Lista de Pacientes</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <asp:Table ID="tblData" runat="server" CssClass="table table-bordered table-striped boxPatient">
                                        <asp:TableHeaderRow>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Cédula</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Nombre</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Apellido</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Edad</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Carrera</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Dirección</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Diagnostico</asp:TableHeaderCell>
                                            <asp:TableHeaderCell CssClass="aspTableHeaderCell">Opciones</asp:TableHeaderCell>
                                        </asp:TableHeaderRow>
                                    </asp:Table> 
                                    <%--<table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                        <thead>
                                            <tr>
                                                <th>Cédula</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Edad</th>
                                                <th>Carrera</th>
                                                <th>Dirección</th>
                                                <th>Diagnostico</th>
                                                <th>Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td runat="server" id="cedula_txt"></td>
                                                <td runat="server" id="nombre_txt"></td>
                                                <td runat="server" id="apellido_txt"></td>
                                                <td runat="server" id="edad_txt"></td>
                                                <td runat="server" id="carrera_txt"></td>
                                                <td runat="server" id="direccion_txt"></td>
                                                <td><asp:ImageButton ID="VerDiagnostico" runat="server" ImageUrl="/Content/images/search.ico" Height="25px" Width="25px"  ToolTip="Ver Diagnostico" onClientClick="window.open('../PatientModule/ConsultDiagnosis.aspx');"/></td>
                                                <td>
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar paciente" onClientClick="window.open('../PatientModule/EditPatientInformation.aspx');" />
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar paciente" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table> --%>
                                </div>   
                            </div>
                        </div>
                    </div>
             </form>
        </div>
</asp:Content>

