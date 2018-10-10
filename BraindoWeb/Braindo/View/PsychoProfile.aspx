<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsychoProfile.aspx.cs" Inherits="Braindo.View.PsychoProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Perfil</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/PsychoProfile.css" />

    <script type="text/javascript" src="../Content/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Content/bootstrap/js/bootstrap.min.js"></script>
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
                <a class="navbar-brand" href="../View/index.aspx"><img src="../Content/images/LogoLetrasMin.png" alt="Logo" id="logoImage"/></a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="../View/index.aspx"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-list-ol"></i> Registrar Perfil Psicologico</a></li>
                    <li><a href="../View/EditPatientInformation.aspx"><i class="fa fa-list-ol"></i> Editar Datos del Paciente</a></li>
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

        <div id="page-wrapper">
            <div class="row centerProfileTitle">
                <h1>Perfil del Psicologo</h1>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4">
                            <h2>Datos Personales</h2>
                            <dl>
                                <dt>Cedula</dt>
                                <dd>20678868</dd>
                                <dt>Numero de Matricula</dt>
                                <dd>20678868-7309566</dd>
                                <dt>Primer Nombre</dt>
                                <dd>Ronald</dd>
                                <dt>Segundo Nombre</dt>
                                <dd>Efrain</dd>
                                <dt>Primer Apellido</dt>
                                <dd>Navas</dd>
                                <dt>Segundo Apellido</dt>
                                <dd>Hernandez</dd>
                                <dt>Fecha de Nacimiento</dt>
                                <dd>27/02/1993</dd>
                            </dl>
                        </div>
                        <div class="col-lg-4">
                            <h2>Informacion de acceso</h2>
                            <dl>
                                <dt>Correo Electronico</dt>
                                <dd>rn2702@gmail.com</dd>
                            </dl>
                        </div>
                        <div class="col-lg-4">
                            <h2>Editar informacion</h2>
                            <div class="bs-example">
                              <div class="list-group">
                                <a href="../View/PsychoProfileEdit.aspx" class="list-group-item-psycho">
                                  Editar datos personales
                                </a>
                                <a href="../View/PsychoChangePassword.aspx" class="list-group-item-psycho">
                                  Cambiar contraseña
                                </a>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
