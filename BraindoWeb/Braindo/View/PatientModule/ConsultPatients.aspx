<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultPatients.aspx.cs" Inherits="Braindo.View.ConsultPatients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Lista de Pacientes</title>
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
                    <li class="selected"><a href="../PatientModule/ConsultPatients.aspx"><i class="fa fa-bullseye"></i> Pacientes</a></li>
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
                <h2>Lista de Pacientes</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxPatient">          
                                        <thead>
                                            <tr>
                                                <th>Cedula</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Edad</th>
                                                <th>Carrera</th>
                                                <th>Telefono</th>
                                                <th>Opciones</th>
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
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="/Content/images/edit.ico" Height="25px" Width="25px"  ToolTip="Editar paciente" onClientClick="window.open('../PatientModule/EditPatientInformation.aspx');" />
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="/Content/images/delete.ico" Height="25px" Width="25px" ToolTip="Eliminar paciente" />
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
