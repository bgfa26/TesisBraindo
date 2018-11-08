<%@ Page Title="Braindo - Registrar Examen" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.RegistryPsychoProfile" %>

<asp:Content ID="ContentRegisterExam" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />
</asp:Content>

<asp:Content ID="ContentRegisterExam2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h2>Examen Mental</h2>
            </div>
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                    <div class="form-group form-group-MentalExam-select">
                        <label>Lista de citas para hoy:</label>
                        <select class="form-control">
                            <option>29/10/2018 - Barbara Fernandez</option>
                            <option>01/10/2018 - Dario Navas</option>
                            <option>02/10/2018 - Ana Hernandez</option>
                        </select>
                    </div>
                    <div class="panel-MentalExam panel-default">
                        <div class="panel-body-MentalExam">
                            <div class="form-group-MentalExam">
                                <label>Comportamiento:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Actitud:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Atención:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Conciencia:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Estado de Ánimo:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Lenguaje:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Pensamiento:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <button type="submit" class="btn btn-lg btn-info-MentalExam">
                                    Registrar Examen
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>  
        </div>    
 </asp:Content> 
