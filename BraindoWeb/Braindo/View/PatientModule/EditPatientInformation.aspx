<%@ Page Title="Braindo - Editar Datos del Paciente" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="EditPatientInformation.aspx.cs" Inherits="Braindo.View.PatientModule.EditPatientInformation" %>

<asp:Content ID="ContentEditPatient" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
</asp:Content>

<asp:Content ID="ContentEditPatient2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h2>Editar Datos Personales del Paciente</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="panel-Patient panel-default">
                                        <div class="panel-body-Patient">
                                        <div class="form-group-Patient">
                                            <label>Primer Nombre</label>
                                            <input runat="server" id="name_txt" class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Primer Apellido</label>
                                            <input runat="server" id="surname_txt" class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Edad</label>
                                            <input runat="server" id="age_txt" class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Carrera</label>
                                            <input runat="server" id="career_txt" class="form-control-Patient"/>
                                        </div>
                                         <div class="form-group-Patient">
                                            <label>Estado</label>
                                            <asp:DropDownList id="state1" runat="server" CssClass="form-control-Patient">
                                                <asp:ListItem Value="Distrito Capital">Distrito Capital</asp:ListItem>
                                                <asp:ListItem Value="Vargas">Vargas</asp:ListItem>
                                                <asp:ListItem Value="Miranda">Miranda</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Municipio</label>
                                            <asp:DropDownList id="municipality1" runat="server" CssClass="form-control-Patient">
                                                <asp:ListItem Value="Libertador">Libertador</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Parroquia</label>
                                            <asp:DropDownList id="parish1" runat="server" CssClass="form-control-Patient">
                                                <asp:ListItem Value="El Recreo">El Recreo</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-Patient">
                                            <asp:Button ID="btnChangeData" runat="server" Text="Modificar Datos" OnClick = "btnChangeData_Click" CssClass ="btn btn-lg btn-info-Patient"></asp:Button>
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
