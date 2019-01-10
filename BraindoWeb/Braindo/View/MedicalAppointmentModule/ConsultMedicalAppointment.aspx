<%@ Page Title="Braindo - Consultar Cita" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.ConsultMedicalAppointment" %>


<asp:Content ID="ContentMedicalAppointment" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
</asp:Content>

<asp:Content ID="ContentMedicalAppointment2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Lista de Citas</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxAppointment">          
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Hora</th>
                                                <th>Paciente</th>
                                                <th>Motivo</th>
                                                <th>Examen</th>
                                                <th>Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="listMedicalAppointments" runat="server" OnItemCommand="actionAppointment_Command">
                                                <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("_Date") %></td>
                                                    <td><%# Eval("_Hour") %></td>
                                                    <td><%# Eval("_Patient._Name") %></td>
                                                    <td><%# Eval("_Reason") %></td>
                                                    <td>
                                                        <asp:ImageButton ID="Agregar" runat="server" ImageUrl="~/Content/images/addArrow4.ico" Height="27px" Width="26px"  ToolTip="Agregar Examen Mental" />
                                                        <asp:ImageButton ID="Ver" runat="server" ImageUrl="~/Content/images/search.ico" Height="25px" Width="24px"  ToolTip="Ver Examen Mental" />
                                                    </td>
                                                    <td>
                                                        <asp:ImageButton ID="Modificar" CommandName="modifyInfo" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="~/Content/images/edit.ico" Height="24px" Width="24px"  ToolTip="Editar cita" />
                                                        <asp:ImageButton ID="Eliminar" CommandName="delete" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="~/Content/images/delete.ico" Height="24px" Width="24px" ToolTip="Eliminar cita" />
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
             </form>
        </div>
 </asp:Content> 
