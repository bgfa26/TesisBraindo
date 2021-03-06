﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postlogin.aspx.cs" Inherits="Braindo.View.Home.postlogin" %>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Home | Braindo</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

  <!-- Plugin CSS -->
  <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/creative.css" rel="stylesheet">

  <!-- Resources -->
  <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
  <script src="https://www.amcharts.com/lib/3/pie.js"></script>
  <script src="https://www.amcharts.com/lib/3/serial.js"></script>
  <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
  <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
  <script src="https://www.amcharts.com/lib/3/themes/black.js"></script>

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <img src="img/logo/braindo.png" alt="Braindo" height="40" width="48" style="margin-right:5px"/> 
      <a class="navbar-brand js-scroll-trigger" href="#page-top" style="margin-top:8px">BRAINDO</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">¿Qué es la fobia social?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">¿Qué hacer?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Braindo: Versión Móvil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Estadísticas</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="redirect()">Administración</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <header class="masthead text-center text-white d-flex">
    <div class="container my-auto">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h1 class="text-uppercase">
            <strong>Conoce sobre trastorno de fobia social</strong>
          </h1>
          <hr style="border-color:#69f0ae" />
        </div>
        <div class="col-lg-8 mx-auto">
          <a class="btn-creative btn-primary-creative btn-xl-creative js-scroll-trigger" href="#about" style="background-color:#69f0ae; color:white;">Descubre más</a>
        </div>
      </div>
    </div>
  </header>

  <section class="bg-primary" id="about" style="background-color:#45b780!important">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center">
          <h2 class="section-heading text-white">¿Qué es la fobia social?</h2>
          <hr class="light my-4">
          <p class="text-faded mb-4">El trastorno de fobia social es un problema de salud mental que consiste en un temor intenso y persistente de ser observado y juzgado por otros. Este temor puede afectar el trabajo, la escuela y otras actividades cotidianas, incluso puede dificultar hacer y mantener amistades. Sin embargo ¡el trastorno de fobia social no tiene que detenerlo de alcanzar su potencial! Ya que el diagnóstico y tratamiento le puede ayudar a superar sus síntomas.</p>
          <a class="btn-creative btn-light btn-xl-creative js-scroll-trigger" href="#services">Iniciemos</a>
        </div>
      </div> 
    </div>
  </section>

  <section id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">¿Cómo lidiar con este trastorno?</h2>
          <hr class="my-4" style="border-color:#69f0ae" />
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box mt-5 mx-auto">
            <i class="fas fa-4x fa-edit text-primary mb-3 sr-icon-1"></i>
            <h3 class="mb-3">Realizar exámenes psicológicos</h3>
            <p class="text-muted mb-0">Existen diversos exámenes psicólogicos o test que permiten realizar un diagnótico antes de ir con un profesional en el área</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box mt-5 mx-auto">
            <i class="fas fa-4x fa-user-md text-primary mb-3 sr-icon-2"></i>
            <h3 class="mb-3">Ser diágnosticado por profesionales</h3>
            <p class="text-muted mb-0">Ir a consulta con un psicólogo permitiría dar un diagnóstico acertado sobre el padecimiento de este trastorno</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box mt-5 mx-auto">
            <i class="fas fa-4x fa-prescription text-primary mb-3 sr-icon-3"></i>
            <h3 class="mb-3">Realizar el tramiento prescrito</h3>
            <p class="text-muted mb-0">En el caso de recibir un tratamiento farmacológico es importante realizarlo ya que de esta manera podrás sentir mejorías</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box mt-5 mx-auto">
            <i class="fas fa-4x fa-mobile-alt text-primary mb-3 sr-icon-4"></i>
            <h3 class="mb-3">Usar Braindo: Versión Móvil</h3>
            <p class="text-muted mb-0">La aplicación de Android "Braindo" permite realizar un test psicológico que será enviado a un psicólogo con experiencia</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section style="background-color: #7127a0" id="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center">
          <h2 class="section-heading text-white">Braindo: Versión Móvil ¿Qué es?
          </h2>
          <hr class="my-4" style="border-color:#69f0ae" />
          <p class="text-faded mb-4">Braindo: Versión Móvil es una aplicación para dispositivos con sistema operativo Android que permite a sus usuarios realizar un test que será enviado a su psicólogo tratante* luego de ser procesado por una red neuronal y un analizador de texto que determinan el porcentaje de fobia social que el paciente padece y los sentimientos y emociones presentes en sus respuestas escritas </p>
          <p class="text-faded mb-4"><i>* El psicólogo tratante debe estar registrado en la versión web de Braindo</i></p>
          <img src="img/google.png" alt="Disponible en Google Play" width="200" height="80"/>
        </div>
      </div> 
    </div>
  </section>   

  <section id="contact" class="bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center">
          <h2 class="section-heading" style="color:white">Estadísticas</h2>
          <hr class="my-4" style="border-color:#69f0ae" />
          <p class="mb-5"  style="color:white">A continuación se podrán observar estadísticas realizadas por el sistema de Braindo para poder hacer mejores estudios sobre la fobia social</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6 ml-auto text-center">
            <p class="mb-5"  style="color:white">Fobia social por estado</p>
            <div id="chartdiv" class="wow fadeInDown" style="margin-top:-50px"></div> 
        </div>
        <div class="col-lg-6 mr-auto text-center">
            <p class="mb-5"  style="color:white">Fobia social por carrera (%)</p>
            <div id="piediv" class="wow fadeInDown" style="margin-top:-50px"></div> 
        </div>
      </div>
      <div class="row text-center" style="margin-top:50px">
        <div class="col-lg-12 ml-auto text-center">
            <p class="mb-5"  style="color:white">Fobia social por carrera</p>
            <div id="chartdiv2" class="wow fadeInDown" style="margin-top:-50px"></div> 
        </div>
      </div>
    </div>
  </section>
  <style>
        #chartdiv {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
            
        }	
        
        #piediv {
	        width		: 110%;
	        height		: 500px;
	        font-size	: 11px;
        }	
        #chartdiv2 {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
            
        }	
        
        #piediv2 {
	        width		: 110%;
	        height		: 500px;
	        font-size	: 11px;
        }		
  </style>


    
  
  
  <style>
    body {font-family: Arial, Helvetica, sans-serif;}

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
      background-color: #45b780;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      border-radius: 8px;
    }


    button:hover {
      opacity: 0.8;
    }

    /* Set a style for all buttons */
    .buttonLog {
      background-color: #45b780;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      border-radius: 8px;
    }


    .buttonLog:hover {
      opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #7127a0;
      border-radius: 8px;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 80%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
  
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
         display: block;
         float: none;
      }
      .cancelbtn {
         width: 100%;
      }
    }
  </style>
  

  <div id="login_modal" class="modal">
  
    <form id="formlogin" class="modal-content animate" runat="server">
      <div class="imgcontainer">
        <span onclick="document.getElementById('login_modal').style.display='none'" class="close" title="Cerrar">&times;</span>
        <h1><strong>Inicio de sesión</strong></h1>
      </div>

      <div class="container">
        <label for="uname"><b>Correo electrónico</b></label>
        <input type="text" placeholder="Introduzca el correo" name="mail" required oninvalid="alert('El campo de correo electrónico no puede estar vacío');">

        <label for="psw"><b>Contraseña</b></label>
        <input type="password" placeholder="Introduzca la contraseña" name="psw" required oninvalid="alert('El campo de contraseña no puede estar vacío')">
        <asp:ScriptManager runat="server" ID="sm">
        </asp:ScriptManager>
        <asp:updatepanel runat="server">
            <ContentTemplate>
                 <asp:Button ID="aceptar" runat="server" Text="Ingresar" class="buttonLog" />
            </ContentTemplate>
        </asp:updatepanel>

      </div>

      <div class="container" style="background-color:#f1f1f1;width:100%;height:80%">
        <button type="button" onclick="document.getElementById('login_modal').style.display='none'" class="cancelbtn">Cancelar</button>
        <span class="psw">Regístrese <a href="../Registration/Registration.aspx">aquí</a></span>
      </div>
    </form>
  </div>

  
  <!-- Modal  -->
  <script>
      // Get the modal
      var modal = document.getElementById('login_modal');

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function (event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }

  </script>


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
  <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/creative.min.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {

          //PageMethods.GetStatistics("", onSuccess);
          var dataValue = { "nullParameter": "" };
          $.ajax({
              type: "POST",
              url: "index.aspx/GetStatistics",
              data: {},
              contentType: "application/json; charset=utf-8",
              dataType: "text",
              success: function (msg) {
                  var response = msg.replace('{"d":"', '');
                  response = response.replace('"}', '');
                  if ((response != "error")) {
                      AmCharts.addInitHandler(function (chart) {
                          // check if there are graphs with autoColor: true set
                          for (var i = 0; i < chart.graphs.length; i++) {
                              var graph = chart.graphs[i];
                              if (graph.autoColor !== true)
                                  continue;
                              var colorKey = "autoColor-" + i;
                              graph.lineColorField = colorKey;
                              graph.fillColorsField = colorKey;
                              for (var x = 0; x < chart.dataProvider.length; x++) {
                                  var color = chart.colors[23]
                                  chart.dataProvider[x][colorKey] = color;
                              }
                          }

                      }, ["serial"]);
                      var careers = response.split("/")[0].split(",");
                      var states = response.split("/")[1].split(",");
                      var careerChart = AmCharts.makeChart("chartdiv2", {
                          "type": "serial",
                          "theme": "light",
                          "dataProvider": [{
                              "title": "Ing. \n Informática",
                              "value": careers[0]
                          }, {
                              "title": "Ing. Civil",
                              "value": careers[1]
                          }, {
                              "title": "Ing. \n Telecomuni- \n caciones",
                              "value": careers[2]
                          }, {
                              "title": "Ing. \n Industrial",
                              "value": careers[3]
                          }, {
                              "title": "Psicología",
                              "value": careers[4]
                          }, {
                              "title": "Teología",
                              "value": careers[5]
                          }, {
                              "title": "Filosofía",
                              "value": careers[6]
                          }, {
                              "title": "Letras",
                              "value": careers[7]
                          }, {
                              "title": "Com. \n Social",
                              "value": careers[8]
                          }, {
                              "title": "Relaciones \n Industriales",
                              "value": careers[9]
                          }, {
                              "title": "Derecho",
                              "value": careers[10]
                          }, {
                              "title": "Adm. \n y Contaduría",
                              "value": careers[11]
                          }, {
                              "title": "Economía",
                              "value": careers[12]
                          }, {
                              "title": "Educación",
                              "value": careers[13]
                          }],
                          "valueAxes": [{
                              "gridColor": "#FFFFFF",
                              "gridAlpha": 0.2,
                              "dashLength": 0,
                              "color": "#FFFFFF"
                          }],
                          "gridAboveGraphs": true,
                          "startDuration": 1,
                          "graphs": [{
                              "balloonText": "[[category]]: <b>[[value]]</b>",
                              "fillColors": "#45b780",
                              "fillAlphas": 0.8,
                              "lineAlpha": 0.2,
                              "type": "column",
                              "valueField": "value",
                              "autoColor": true,
                          }],
                          "chartCursor": {
                              "categoryBalloonEnabled": false,
                              "cursorAlpha": 0,
                              "zoomable": false
                          },
                          "categoryField": "title",
                          "categoryAxis": {
                              "gridPosition": "start",
                              "gridAlpha": 0,
                              "tickPosition": "start",
                              "tickLength": 20,
                              "color": "#FFFFFF"
                          },
                          "export": {
                              "enabled": true
                          }

                      });
                      var stateChart = AmCharts.makeChart("chartdiv", {
                          "type": "serial",
                          "theme": "light",
                          "dataProvider": [{
                              "title": "Distrito Capital",
                              "value": states[0]
                          }, {
                              "title": "Miranda",
                              "value": states[1]
                          }, {
                              "title": "Vargas",
                              "value": states[2]
                          }],
                          "valueAxes": [{
                              "gridColor": "#FFFFFF",
                              "gridAlpha": 0.2,
                              "dashLength": 0,
                              "color": "#FFFFFF"
                          }],
                          "gridAboveGraphs": true,
                          "startDuration": 1,
                          "graphs": [{
                              "balloonText": "[[category]]: <b>[[value]]</b>",
                              "fillColors": "#45b780",
                              "fillAlphas": 0.8,
                              "lineAlpha": 0.2,
                              "type": "column",
                              "valueField": "value",
                              "autoColor": true,
                          }],
                          "chartCursor": {
                              "categoryBalloonEnabled": false,
                              "cursorAlpha": 0,
                              "zoomable": false
                          },
                          "categoryField": "title",
                          "categoryAxis": {
                              "gridPosition": "start",
                              "gridAlpha": 0,
                              "tickPosition": "start",
                              "tickLength": 20,
                              "color": "#FFFFFF"
                          },
                          "export": {
                              "enabled": true
                          }

                      });
                      var pieChart = AmCharts.makeChart("piediv", {
                          "type": "pie",
                          "radius": 100,
                          "theme": "black",
                          "dataProvider": [{
                              "title": "Ingeniería Informática",
                              "value": careers[0]
                          }, {
                              "title": "Ingeniería Civil",
                              "value": careers[1]
                          }, {
                              "title": "Ingeniería en Telecomunicaciones",
                              "value": careers[2]
                          }, {
                              "title": "Ingeniería Industrial",
                              "value": careers[3]
                          }, {
                              "title": "Psicología",
                              "value": careers[4]
                          }, {
                              "title": "Teología",
                              "value": careers[5]
                          }, {
                              "title": "Filosofía",
                              "value": careers[6]
                          }, {
                              "title": "Letras",
                              "value": careers[7]
                          }, {
                              "title": "Comunicación Social",
                              "value": careers[8]
                          }, {
                              "title": "Relaciones Industriales",
                              "value": careers[9]
                          }, {
                              "title": "Derecho",
                              "value": careers[10]
                          }, {
                              "title": "Administración y Contaduría",
                              "value": careers[11]
                          }, {
                              "title": "Economía",
                              "value": careers[12]
                          }, {
                              "title": "Educación",
                              "value": careers[13]
                          }],
                          "valueField": "value",
                          "titleField": "title",
                          "colorField": "color",
                          "balloon": {
                              "fixedPosition": true
                          },
                          "export": {
                              "enabled": true
                          }
                      });
                  }
              }
          });

      });

      function redirect() {
          window.location.replace("../IndexModule/index.aspx");
      }
  </script>	

</body>

</html>
