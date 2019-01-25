<%@ Page Title="Braindo - Consultar Examen" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="ConsultMentalExam.aspx.cs" Inherits="Braindo.View.MentalExamModule.ConsultMentalExam" %>

<asp:Content ID="ContentConsultExam" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />
</asp:Content>

<asp:Content ID="ContentConsultExam2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">        
        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h2>Examen Mental - Paciente: Ronald Navas</h2>
            </div>
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col-lg-3">
                    </div>
                    <div class="col-lg-6">
                       <div class="panel-MentalExam panel-default">
                            <div class="panel-body-MentalExam">
                                <div class="form-group-MentalExam">
                                    <label>Comportamiento:</label>
                                    <textarea runat="server" id="behavior_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Actitud:</label>
                                    <textarea runat="server" id="attitude_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Atención:</label>
                                    <textarea runat="server" id="alertness_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Conciencia:</label>
                                    <textarea runat="server" id="awareness_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Estado de Ánimo:</label>
                                    <textarea runat="server" id="mood_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Lenguaje:</label>
                                    <textarea runat="server" id="language_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                                <div class="form-group-MentalExam">
                                    <label>Pensamiento:</label>
                                    <textarea runat="server" id="thought_txt" readonly="readonly" class="form-control" rows="5"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                    </div>
                </div>
            </form>
        </div>
</asp:Content>
