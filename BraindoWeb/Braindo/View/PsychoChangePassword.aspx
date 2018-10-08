﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsychoChangePassword.aspx.cs" Inherits="Braindo.View.PsychoChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Cambiar Contraseña</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/PsychoProfileEdit.css" />

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
                <a class="navbar-brand" href="../View/index.aspx">Back to Admin</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="../View/index.aspx"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Perfil Psicologico</a></li>
                    <li><a href="../View/EditPatientInformation.aspx"><i class="fa fa-font"></i> Editar Datos del Paciente</a></li>    
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
        <div id="page-wrapper-PsychoEdit">
            <div class="row centerProfileTitle">
                <h1>Cambiar Contraseña</h1>
            </div>

             <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-4 col-lg-offset-4">
                                    <div class="panel-EditProfile panel-default">
                                        <div class="panel-body-EditProfile">
                                        <div class="form-group-ProfileEdit">
                                            <label>Contraseña Anterior</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>
                                        <div class="form-group-ProfileEdit">
                                            <label>Nueva Contraseña</label>
                                            <input class="form-control-ProfileEdit"/>
                                        </div>  
                                        <div class="form-group-ProfileEdit">
                                            <button type="submit" class="btn btn-lg btn-info-ProfileEdit">
                                                Cambiar Contraseña
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
