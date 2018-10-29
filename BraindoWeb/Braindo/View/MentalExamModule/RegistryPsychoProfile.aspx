<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.RegistryPsychoProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registrar Perfil Psicologico</title>
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
                            <li><a href="../MentalExamModule/ConsultMentalExam.aspx"><i class="fa fa-font"></i> Consultar Examenes</a></li>
                            <li class="selected"><a href="../MentalExamModule/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Examen</a></li>
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

        <div id="page-wrapper-MentalExam">
            <div class="row centerProfileTitle">
                <h2>Perfil Psicologico</h2>
            </div>
            <div class="row">
                <div class="col-lg-3">
                </div>
                <div class="col-lg-6">
                    <div class="form-group form-group-MentalExam-select">
                        <label>Lista de pacientes:</label>
                        <select class="form-control">
                            <option>24220210 - Barbara Fernandez</option>
                            <option>6963282 - Dario Navas</option>
                            <option>6820508 - Ana Hernandez</option>
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
                                <label>Atencion:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Conciencia:</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group-MentalExam">
                                <label>Estado de Animo:</label>
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
                                    Registrar
                                </button>
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
