<%@ Page Title="Braindo - Lista de Pacientes" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultPatients.aspx.cs" Inherits="Braindo.View.ConsultPatients" %>


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
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                        <thead>
                                            <tr>
                                                <th>Cédula</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Edad</th>
                                                <th>Carrera</th>
                                                <th>Teléfono</th>
                                                <th>Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>20678868</td>
                                                <td>Ronald</td>
                                                <td>Navas</td>
                                                <td>25</td>
                                                <td>Ing. Informatica</td>
                                                <td>04127309566</td>
                                                <td>
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar paciente" onClientClick="window.open('../PatientModule/EditPatientInformation.aspx');" />
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar paciente" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>  
                                </div>   
                            </div>
                        </div>
                    </div>
             </form>
        </div>
</asp:Content>

