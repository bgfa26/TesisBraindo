<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPatientInformation.aspx.cs" Inherits="Braindo.View.EditPatientInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Editar datos del paciente</title>
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/PatientInformation.css" />

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
                            <li><a href="../MentalExamModule/ConsultMentalExam.aspx"><i class="fa fa-font"></i> Consultar Examenes</a></li>
                            <li><a href="../MentalExamModule/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Examen</a></li>               
                        </ul>
                    </li>
                    <li><a href="../PatientModule/ConsultPatients.aspx"><i class="fa fa-bullseye"></i> Pacientes</a></li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Gestion de Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../MedicalAppointmentModule/ConsultMedicalAppointment.aspx"><i class="fa fa-font"></i> Consultar Citas</a></li>
                            <li><a href="../MedicalAppointmentModule/RegisterMedicalAppointment.aspx"><i class="fa fa-font"></i> Registrar Cita</a></li>
                        </ul>
                    </li>  
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                        <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Ronald Navas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../PsychologistModule/PsychoProfile.aspx"><i class="fa fa-user"></i> Perfil</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h2>Editar datos personales del paciente</h2>
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
    </div>

</body>
</html>
