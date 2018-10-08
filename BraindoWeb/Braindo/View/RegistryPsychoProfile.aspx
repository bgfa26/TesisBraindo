<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.RegistryPsychoProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registrar Perfil Psicologico</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/RegistrationPsychoProfile.css" />

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
                    <li class="selected"><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Perfil Psicologico</a></li>
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

        <div id="page-wrapper">
            <div class="row centerRegistrationTitle">
                <h2>Perfil Psicologico</h2>
            </div>
            <div>
                <label for="comportamiento" class="col-lg-2">
                    Comportamiento:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>        
            <div>
                <label for="actitud" class="col-lg-2">
                    Actitud:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div>
                <label for="atencion" class="col-lg-2">
                    Atencion:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div>
                <label for="conciencia" class="col-lg-2">
                    Conciencia:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div>
                <label for="estadoAnimo" class="col-lg-2">
                    Estado de Animo:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div>
                <label for="lenguaje" class="col-lg-2">
                    Lenguaje:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div>
                <label for="pensamiento" class="col-lg-2">
                    Pensamiento:
                </label>
                <div class="col-lg-4">
                    <div class="form-group paddingTextArea">
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
            </div>
            <div class="row centerRegistrationButton">
                <div class="col-lg-12">
                    <button type="submit" class="btn btn-lg btn-info">
                        Registrar Perfil
                    </button>
                </div>
            </div>
        </div>  
    </div>     

</body>
</html>
