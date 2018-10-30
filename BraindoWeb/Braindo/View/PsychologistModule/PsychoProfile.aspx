<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsychoProfile.aspx.cs" Inherits="Braindo.View.PsychoProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Perfil</title>
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/PsychoProfile.css" />

    <script type="text/javascript" src="/Content/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/Content/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>

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

        <div id="page-wrapper-Psychologist">
            <div class="centerProfileTitle">
                <h2>Perfil del Psicologo</h2>
            </div>

            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                   <div class="panel-Psychologist panel-default">
                        <div class="panel-body-Psychologist">
                            <div class="form-group-Psychologist">
                                <label>Cedula:</label>
                                <input class="form-control-Psychologist" placeholder="20678868" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Numero de Matricula:</label>
                                <input class="form-control-Psychologist" placeholder="20678868-2702" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Nombre Completo:</label>
                                <input class="form-control-Psychologist" placeholder="Ronald Efrain Navas Hernandez" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Fecha de Nacimiento:</label>
                                <input class="form-control-Psychologist" placeholder="27/02/1993" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <label>Correo Electronico:</label>
                                <input class="form-control-Psychologist" placeholder="rn2702@gmail.com" disabled="disabled"/>
                            </div>
                            <div class="form-group-Psychologist">
                                <a href="../PsychologistModule/PsychoProfileEdit.aspx" class="PsychoLink">
                                  Editar datos personales
                                </a>
                            </div>
                            <div class="form-group-Psychologist">
                                <a href="../PsychologistModule/PsychoChangePassword.aspx" class="PsychoLink">
                                  Cambiar contraseña
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
        </div>
    </div>

</body>
</html>
