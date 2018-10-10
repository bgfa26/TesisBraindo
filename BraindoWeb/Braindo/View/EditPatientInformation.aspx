<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPatientInformation.aspx.cs" Inherits="Braindo.View.EditPatientInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Editar datos del paciente</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/PatientEditInformation.css" />

    <script type="text/javascript" src="../Content/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Content/js/jquery-1.10.2.min.js"></script>
    
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
                <a class="navbar-brand" href="../View/index.aspx"><img src="../Content/images/LogoLetrasMin.png" alt="Logo" id="logoImage"/></a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="../View/index.aspx"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-list-ol"></i> Registrar Perfil Psicologico</a></li>
                    <li class="selected"><a href="../View/EditPatientInformation.aspx"><i class="fa fa-list-ol"></i> Editar Datos del Paciente</a></li>
                    <li><a href="../View/RegisterMedicalAppointment.aspx"><i class="fa fa-list-ol"></i> Registrar Cita</a></li>  
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
                            <li><a href="../View/PsychoProfile.aspx"><i class="fa fa-user"></i> Perfil</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h1>Editar datos personales del paciente</h1>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="form-group">
                                        <label>Lista de pacientes:</label>
                                        <select class="form-control">
                                            <option>24220210 - Barbara Fernandez</option>
                                            <option>6963282 - Dario Navas</option>
                                            <option>6820508 - Ana Hernandez</option>
                                        </select>
                                    </div>
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
