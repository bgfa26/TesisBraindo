﻿<%@ Page Title="Braindo | Lista de Pacientes" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultPatients.aspx.cs" Inherits="Braindo.View.PatientModule.ConsultPatients" %>


<asp:Content ID="ContentConsultPatient" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/BootBoxCustom.css" />
</asp:Content>


<asp:Content ID="ContentConsultPatient2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="page-wrapper-PatientEdit">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            </asp:ScriptManager>
            <div class="row centerProfileTitle">
                <h3>Lista de Pacientes</h3>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="table-responsive">
                            <table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                <thead>
                                    <tr>
                                        <th>Cédula</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Edad</th>
                                        <th>Carrera</th>
                                        <th>Dirección</th>
                                        <th>Diagnóstico</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr runat ="server" id="NoRecord" visible="false">
                                        <td>No tiene pacientes registrados</td>
                                    </tr>
                                    <asp:Repeater ID="listPatients" runat="server"  OnItemCommand="actionPatient_Command">
                                        <ItemTemplate>
                                            <tr id="<%# Eval("_ID") %>">
                                                <td><asp:Label ID="idPatient" runat="server" Text='<%# Eval("_ID") %>' ReadOnly="True"></asp:Label></td>
                                                <td><%# Eval("_Name") %></td>
                                                <td><%# Eval("_Surname") %></td>
                                                <td><%# Eval("_Age") %></td>
                                                <td><%# Eval("_Career") %></td>
                                                <td><%# Eval("_State") %>, <%# Eval("_Municipality") %>, <%# Eval("_Parish") %></td>
                                                <td><asp:ImageButton ID="VerDiagnostico" CommandName="viewDiagnosis" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="/Content/images/search.ico" Height="25px" Width="25px"  ToolTip="Ver Diagnóstico" /></td>
                                                <td>
                                                    <asp:ImageButton ID="Modificar" CommandName="modifyInfo" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar datos del paciente" />
                                                    <asp:ImageButton ID="Eliminar" CommandName="delete" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar paciente" />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table> 
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    <script>
        function BootAlertTrue() {
            bootbox.alert({
                message: "Se eliminó exitosamente",
                size: 'small',
                className: "centerDialog",
                callback: function () {
                    window.location.href = 'ConsultPatients.aspx';
                }
            })
        }
        </script>
        <script>
            function BootAlertFalse() {
                bootbox.alert({
                    message: "No pudo eliminarse el paciente",
                    size: 'small',
                    className: "centerDialog",
                    callback: function () {
                        window.location.href = 'ConsultPatients.aspx';
                    }
                })
            }
        </script>
</asp:Content>

