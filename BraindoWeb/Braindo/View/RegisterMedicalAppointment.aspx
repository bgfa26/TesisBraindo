<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterMedicalAppointment.aspx.cs" Inherits="Braindo.View.RegisterMedicalAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Registrar Cita Medica</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/MedicalAppointment.css" />

    <script type="text/javascript" src="../Content/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Content/bootstrap/js/bootstrap.min.js"></script> 
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
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Perfil Psicologico<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar</a></li>
                        </ul>
                    </li>
                    <li><a href="../View/ConsultPatients.aspx"><i class="fa fa-bullseye"></i> Pacientes</a></li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Gestion de Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../View/ConsultMedicalAppointment.aspx"><i class="fa fa-font"></i> Consultar Citas</a></li>
                            <li><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Cita</a></li>
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
                            <li><a href="../View/PsychoProfile.aspx"><i class="fa fa-user"></i> Perfil</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h1>Registrar Cita</h1>
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
                                    <div class="panel-Medical panel-default">
                                        <div class="panel-body-Medical">
                                            <div class="form-group-Medical">
                                                <label>Fecha de la cita</label>
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
    </div>
</body>
</html>
