<%@ Page Title="Braindo - Editar Datos del Paciente" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="EditPatientInformation.aspx.cs" Inherits="Braindo.View.PatientModule.EditPatientInformation" %>

<asp:Content ID="ContentEditPatient" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />
    <script type="text/javascript" src="/Content/js/OnlyLettersValidation.js"></script>
    <script type="text/javascript" src="/Content/js/OnlyNumbersValidation.js"></script>
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
                                            <asp:TextBox runat="server" id="nameTXT" onkeypress="return AllowAlphabet(event)" CssClass="form-control-Patient">
                                            </asp:TextBox>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Primer Apellido</label>
                                            <asp:TextBox runat="server" id="surnameTXT" onkeypress="return AllowAlphabet(event)" CssClass="form-control-Patient">
                                            </asp:TextBox>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Edad</label>
                                            <asp:TextBox runat="server" id="ageTXT" onkeypress="return AllowNumbers(event)" CssClass="form-control-Patient">
                                            </asp:TextBox>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Carrera</label>
                                            <asp:DropDownList id="career1" runat="server" CssClass="form-control-Patient">
                                                <asp:ListItem Value="Ingeniería Informática">Ingeniería Informática</asp:ListItem>
                                                <asp:ListItem Value="Ingeniería Civil">Ingeniería Civil</asp:ListItem>
                                                <asp:ListItem Value="Ingeniería en Telecomunicaciones">Ingeniería en Telecomunicaciones</asp:ListItem>
                                                <asp:ListItem Value="Ingeniería Industrial">Ingeniería Industrial</asp:ListItem>
                                                <asp:ListItem Value="Psicología">Psicología</asp:ListItem>
                                                <asp:ListItem Value="Teología">Teología</asp:ListItem>
                                                <asp:ListItem Value="Filosofía">Filosofía</asp:ListItem>
                                                <asp:ListItem Value="Letras">Letras</asp:ListItem>
                                                <asp:ListItem Value="Comunicación Social">Comunicación Social</asp:ListItem>
                                                <asp:ListItem Value="Relaciones Industriales">Relaciones Industriales</asp:ListItem>
                                                <asp:ListItem Value="Derecho">Derecho</asp:ListItem>
                                                <asp:ListItem Value="Administración y Contaduría">Administración y Contaduría</asp:ListItem>
                                                <asp:ListItem Value="Economía">Economía</asp:ListItem>
                                                <asp:ListItem Value="Educación">Educación</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                         <div class="form-group-Patient">
                                            <label>Estado</label>
                                            <asp:DropDownList id="state1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"  AutoPostBack="True" OnSelectedIndexChanged ="State_SelectedIndex">
                                    
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Municipio</label>
                                            <asp:DropDownList id="municipality1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"  AutoPostBack="True" OnSelectedIndexChanged ="Municipality_SelectedIndex">
                                                
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Parroquia</label>
                                            <asp:DropDownList id="parish1" runat="server" CssClass="form-control-Patient" AppendDataBoundItems="true"   AutoPostBack="True">
                                                
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
