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
                                            <input class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Primer Apellido</label>
                                            <input class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Edad</label>
                                            <input class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <label>Carrera</label>
                                            <input class="form-control-Patient"/>
                                        </div>
                                        <div class="form-group-Patient">
                                            <button type="submit" class="btn btn-lg btn-info-Patient">
                                                Modificar Datos
                                            </button>
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
