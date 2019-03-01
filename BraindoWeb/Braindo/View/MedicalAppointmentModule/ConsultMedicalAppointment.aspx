<%@ Page Title="Braindo - Consultar Cita" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultMedicalAppointment.aspx.cs" Inherits="Braindo.View.MedicalAppointmentModule.ConsultMedicalAppointment" %>


<asp:Content ID="ContentMedicalAppointment" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
</asp:Content>

<asp:Content ID="ContentMedicalAppointment2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-Medical">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            </asp:ScriptManager>
            <div class="row centerProfileTitle">
                <h3>Lista de Citas</h3>
            </div>
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
                                    <tr runat ="server" id="NoRecord" visible="false">
                                        <td>No tiene citas registradas</td>
                                    </tr>
                                    <asp:Repeater ID="listMedicalAppointments" runat="server" OnItemCommand="actionAppointment_Command">
                                        <ItemTemplate>
                                        <tr>
                                            <td style="text-align:center"><%# Eval("_DateString") %></td>
                                            <td style="text-align:center"><%# Eval("_HourString") %></td>
                                            <td><%# String.Format("{0} {1}", Eval("_Patient._Name"), Eval("_Patient._Surname")) %></td>
                                            <td><%# Eval("_Reason") %></td>
                                            <td>
                                                <asp:ImageButton ID="Agregar" CommandName="addExam" CommandArgument='<%# Eval("_ID")+","+ Eval("_MentalExam._ID")+","+ Eval("_Patient._ID")%>' runat="server" ImageUrl="~/Content/images/addArrow4.ico" Height="27px" Width="26px"  ToolTip="Agregar Examen Mental" />
                                                <asp:ImageButton ID="Ver" CommandName="viewExam" CommandArgument='<%# Eval("_MentalExam._ID")%>' runat="server" ImageUrl="~/Content/images/search.ico" Height="25px" Width="24px"  ToolTip="Ver Examen Mental" />
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="Modificar" CommandName="modifyInfo" CommandArgument='<%# Eval("_ID")%>' runat="server" ImageUrl="~/Content/images/edit.ico" Height="24px" Width="24px"  ToolTip="Editar cita" />
                                                <asp:ImageButton ID="Eliminar" runat="server" CommandName="delete" CommandArgument='<%# Eval("_ID")%>'  OnClientClick="return JSalert()"  ImageUrl="~/Content/images/delete.ico" Height="24px" Width="24px" ToolTip="Eliminar cita" />
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
        <!-- JS dependencies -->
        <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Bootstrap 4 dependency -->
        <script src="/Content/bootbox/popper.min.js"></script>
        <script src="/Content/bootstrap/js/bootstrap.min.js"></script>

        <!-- bootbox code -->
        <script src="/Content/bootbox/bootbox.min.js"></script>
        <script src="/Content/bootbox/bootbox.locales.min.js"></script>--%>
        <script>
            function JSalert() {
                
                bootbox.confirm({
                    message: "Desea eliminar la cita?",
                    buttons: {
                        confirm: {
                            label: 'Si',
                            className: 'btn-success'
                        },
                        cancel: {
                            label: 'No',
                            className: 'btn-danger'
                        }
                    },
                    callback: function (result) {
                        if (result) {
                            console.log('Si');
                            return true;
                        }
                        else {
                            console.log('No');
                        }
                    }
                });
                return false;
            }
    </script>
 </asp:Content> 
