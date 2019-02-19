<%@ Page Title="Braindo - Consultar Diagnosticos" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultDiagnosis.aspx.cs" Inherits="Braindo.View.PatientModule.ConsultDiagnosis" %>

<asp:Content ID="ContentConsultDiagnosis" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
</asp:Content>


<asp:Content ID="ContentConsultDiagnosis2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h2>Diagnosticos del paciente</h2>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="table-responsive">
                            <table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Sentimientos</th>
                                        <th>Emociones</th>
                                        <th>Ansiedad Social</th>
                                        <th>Detalle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="listDiagnostics" runat="server" OnItemCommand="actionDiagnostic_Command">
                                        <ItemTemplate>
                                            <tr id="<%# Eval("_ID") %>">
                                                <td><%# Eval("_DiagnosisDateString") %></td>
                                                <td><%# Eval("_Feelings") %> <a data-toggle="tooltip" data-placement="top" title="<%# Eval("_OtherFeelings") %>"><i class="fa fa-info-circle customInfoIcon"></i></a></td>
                                                <td><%# Eval("_Emotions") %> <a data-toggle="tooltip" data-placement="top" title="<%# Eval("_OtherEmotions") %>"><i class="fa fa-info-circle customInfoIcon"></i></a></td>
                                                <td><%# Eval("_NetworkAnswer") %> <a data-toggle="tooltip" data-placement="top" title="<%# Eval("_OtherNetworkAnswer") %>"><i class="fa fa-info-circle customInfoIcon"></i></a></td>
                                                <td><asp:ImageButton ID="VerDiagnostico" CommandName="viewDetailedInfo" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="/Content/images/search.ico" Height="25px" Width="25px"  ToolTip="Ver Diagnostico" /></td>
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
</asp:Content>
