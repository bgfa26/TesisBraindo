<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultPatients.aspx.cs" Inherits="Braindo.View.ConsultPatients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Lista de Pacientes</title>
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="~/Content/css/PatientInformation.css" />

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
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Paciente<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="selected"><a href="../View/EditPatientInformation.aspx"><i class="fa fa-font"></i> Editar Datos</a></li>
                            <li><a href="../View/DeletePatient.aspx"><i class="fa fa-font"></i> Eliminar Paciente</a></li>
                        </ul>
                    </li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Administrar Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../View/RegisterMedicalAppointment.aspx"><i class="fa fa-font"></i> Registrar cita</a></li>
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
        <div id="page-wrapper-PatientEdit">
            <div class="row centerProfileTitle">
                <h1>Lista de Pacientes</h1>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover box">          
                                        <thead>
                                            <tr>
                                                <th>Cedula</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Edad</th>
                                                <th>Carrera</th>
                                                <th>Telefono</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>20678868</td>
                                                <td>Ronald</td>
                                                <td>Navas</td>
                                                <td>25</td>
                                                <td>Ing. Informatica</td>
                                                <td>04127309566</td>
                                                <td>
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="~/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar paciente" />
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="~/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar paciente" onClientClick="window.open('../View/EditPatientInformation.aspx');" />
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
