<%@ Page Title="Braindo - Registrar Cita Medica" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="RegisterMedicalAppointment.aspx.cs" Inherits="Braindo.View.RegisterMedicalAppointment" %>


<asp:Content ID="ContentRegisterAppointment" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />
</asp:Content>


<asp:Content ID="ContentRegisterAppointment2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Registrar Cita</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="form-group form-group-MentalExam-select">
                                        <label>Lista de pacientes:</label>
                                        <select class="form-control">
                                            <option>24220210 - Barbara Fernandez</option>
                                            <option>6963282 - Dario Navas</option>
                                            <option>6820508 - Ana Hernandez</option>
                                        </select>
                                    </div>
                                    <div class="panel-Medical panel-default">
                                        <div class="panel-body-Medical">
                                            <div class="form-group-Medical">
                                                <label>Fecha de la Cita</label>
                                                <input id="date" type="date" class="form-control-Medical"/>
                                            </div>
                                            <div class="form-group-Medical">
                                                <label>Hora:</label>
                                                <select class="form-control-Medical">
                                                    <option>7:00 am</option>
                                                    <option>8:00 am</option>
                                                    <option>9:00 am</option>
                                                    <option>10:00 am</option>
                                                    <option>11:00 am</option>
                                                    <option>12:00 pm</option>
                                                    <option>1:00 pm</option>
                                                    <option>2:00 pm</option>
                                                    <option>3:00 pm</option>
                                                    <option>4:00 pm</option>
                                                    <option>5:00 pm</option>
                                                </select>
                                            </div>
                                            <div class="form-group-Medical">
                                                <label>Motivo</label>
                                                <input class="form-control-Medical"/>
                                            </div>                           
                                            <div class="form-group-Medical">
                                                <button type="submit" class="btn btn-lg btn-info-Medical">
                                                    Registrar Cita
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
