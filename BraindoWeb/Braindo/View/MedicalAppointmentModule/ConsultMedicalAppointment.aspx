<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultMedicalAppointment.aspx.cs" Inherits="Braindo.View.ConsultMedicalAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Braindo - Lista de Citas</title>
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="/Content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/local.css" />
    <link rel="stylesheet" type="text/css" href="/Content/css/MedicalAppointment.css" />

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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Examen Mental<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="../MentalExamModule/RegistryPsychoProfile.aspx"><i class="fa fa-font"></i> Registrar Examen</a></li>
                        </ul>
                    </li>
                    <li><a href="../PatientModule/ConsultPatients.aspx"><i class="fa fa-bullseye"></i> Pacientes</a></li>
                    <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list-ol"></i> Gestión de Citas<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="selected"><a href="../MedicalAppointmentModule/ConsultMedicalAppointment.aspx"><i class="fa fa-font"></i> Consultar Citas</a></li>
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
                            <li><a href="#"><i class="fa fa-power-off"></i> Cerrar Sesión</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper-Medical">
            <div class="row centerProfileTitle">
                <h2>Lista de Citas</h2>
            </div>
            <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="table-responsive">
                                    <table id="tblData" class="table table-bordered table-striped table-hover boxAppointment">          
                                        <thead>
                                            <tr>
                                                <th>Fecha</th>
                                                <th>Hora</th>
                                                <th>Paciente</th>
                                                <th>Psicólogo</th>
                                                <th>Motivo</th>
                                                <th>Examen</th>
                                                <th>Opciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>17/10/2018</td>
                                                <td>8:00 am</td>
                                                <td>Ronald Navas</td>
                                                <td>Jhonnathan Sulbaran</td>
                                                <td>Primera cita para tratar ansiedad al exponer</td>
                                                <td>
                                                    <asp:ImageButton ID="Agregar" runat="server" ImageUrl="~/Content/images/addArrow4.ico" Height="27px" Width="26px"  ToolTip="Agregar Examen Mental" />
                                                    <asp:ImageButton ID="Ver" runat="server" ImageUrl="~/Content/images/search.ico" Height="25px" Width="24px"  ToolTip="Ver Examen Mental" />
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="Modificar" runat="server" ImageUrl="~/Content/images/edit.ico" Height="24px" Width="24px"  ToolTip="Editar cita" />
                                                    <asp:ImageButton ID="Eliminar" runat="server" ImageUrl="~/Content/images/delete.ico" Height="24px" Width="24px" ToolTip="Eliminar cita" />
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
