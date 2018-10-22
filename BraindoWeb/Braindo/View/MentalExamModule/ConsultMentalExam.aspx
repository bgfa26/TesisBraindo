﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultMentalExam.aspx.cs" Inherits="Braindo.View.ConsultMentalExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Consultar Examenes Mentales</title>
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/MentalExam.css" />

     <script type="text/javascript" src="/Content/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/Content/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.aspx"><img src="/Content/images/LogoLetrasMin.png" alt="Logo" id="logoImage"/></a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="../index.aspx"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Perfil Psicologico<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="selected"><a href="../MentalExamModule/ConsultMentalExam.aspx"><i class="fa fa-font"></i> Consultar Examenes</a></li>
                            <li><a href="../MentalExamModule/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Examen</a></li>
                        </ul>
                    </li>
                    <li><a href="../PatientModule/ConsultPatients.aspx"><i class="fa fa-bullseye"></i> Pacientes</a></li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Gestion de Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../MedicalAppointmentModule/ConsultMedicalAppointment.aspx"><i class="fa fa-font"></i> Consultar Citas</a></li>
                            <li><a href="../MedicalAppointmentModule/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Cita</a></li>
                        </ul>
                    </li>               
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                        <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Ronald Navas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../PsychologistModule/PsychoProfile.aspx"><i class="fa fa-user"></i> Perfil</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h1>Lista de Examenes Mentales</h1>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxAppointment">          
                                        <thead>
                                            <tr>
                                                <th>Paciente</th>
                                                <th>Fecha</th>
                                                <th>Comportamiento</th>
                                                <th>Actitud</th>
                                                <th>Atencion</th>
                                                <th>Conciencia</th>
                                                <th>Estado de Animo</th>
                                                <th>Lenguaje</th>
                                                <th>Pensamiento</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Ronald Navas</td>
                                                <td>19/10/2018</td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla</td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla</td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla</td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla</td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla </td>
                                                <td>Lorem Ipsum Algo Bla Bla Bla</td>
                                                <td>
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="~/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar Examen" />
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="~/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar Examen" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>  
                                </div>   
                            </div>
                        </div>
                    </div>
             </form>
        </div>
    </div>
</body>
</html>
