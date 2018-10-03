﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistryPsychoProfile.aspx.cs" Inherits="Braindo.View.RegistryPsychoProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Perfil Psicologico</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />

    <script type="text/javascript" src="../Content/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../Content/bootstrap/js/bootstrap.min.js"></script>

    
</head>
<body>
    <form id="form1" runat="server">

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
                    <li><a href="portfolio.html"><i class="fa fa-tasks"></i> Portfolio</a></li>
                    <li><a href="blog.html"><i class="fa fa-globe"></i> Blog</a></li>
                    <li><a href="signup.html"><i class="fa fa-list-ol"></i> SignUp</a></li>
                    <li class="selected"><a href="../View/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Register</a></li>
                    <li><a href="timeline.html"><i class="fa fa-font"></i> Timeline</a></li>
                    <li><a href="forms.html"><i class="fa fa-list-ol"></i> Forms</a></li>
                    <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li>
                    <li><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
                    <li><a href="bootstrap-grid.html"><i class="fa fa-table"></i > Bootstrap Grid</a></li>            
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

       <div>
        <div class="row text-center">
            <h2>Registrar Perfil Psicologico</h2>
        </div>
        <div>
            <label for="comportamiento" class="col-md-2">
                Comportamiento:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>        
        <div>
            <label for="actitud" class="col-md-2">
                Actitud:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div>
            <label for="atencion" class="col-md-2">
                Atencion:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div>
            <label for="conciencia" class="col-md-2">
                Conciencia:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div>
            <label for="estadoAnimo" class="col-md-2">
                Estado de Animo:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div>
            <label for="lenguaje" class="col-md-2">
                Lenguaje:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div>
            <label for="pensamiento" class="col-md-2">
                Pensamiento:
            </label>
            <div class="col-md-9">
                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-10">
                <button type="submit" class="btn btn-info">
                    Registrar
                </button>
            </div>
        </div>
    </div>  
    </div>     

    </form>

</body>
</html>
