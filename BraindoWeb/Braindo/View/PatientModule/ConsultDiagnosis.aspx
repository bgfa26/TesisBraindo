<%@ Page Title="Braindo - Consultar Diagnosticos" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultDiagnosis.aspx.cs" Inherits="Braindo.View.PatientModule.ConsultDiagnosis" %>

<asp:Content ID="ContentConsultDiagnosis" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
</asp:Content>


<asp:Content ID="ContentConsultDiagnosis2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h2>Lista de Diagnosticos: Ronald Navas</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                        <thead>
                                            <tr>
                                                <th>Fecha Respuesta</th>
                                                <th>Respuesta</th>
                                                <th>Detalle</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>13/11/2018</td>
                                                <td>85%</td>
                                                <td><asp:ImageButton ID="VerDiagnostico" runat="server" ImageUrl="/Content/images/search.ico" Height="25px" Width="25px"  ToolTip="Ver Diagnostico" onClientClick="window.open('../PatientModule/DetailedTest.aspx');" /></td>
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
