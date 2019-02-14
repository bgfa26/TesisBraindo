<%@ Page Title="Braindo" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Braindo.View.IndexModule.index" %>

<asp:Content ID="ContentIndex" ContentPlaceHolderID="head" runat="server">
     <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="/Content/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="/Content/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="/Content/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="/Content/js/gridData.js"></script>

    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/pie.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <script src="https://www.amcharts.com/lib/3/themes/black.js"></script>

    <style>

        #chartdiv {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
            
        }
        
        #chartdiv2 {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
            
        }	

        #piediv {
	        width		: 110%;
	        height		: 500px;
	        font-size	: 11px;
        }	
    </style>

</asp:Content>

<asp:Content ID="ContentIndex2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Promedio de Fobia Social por carrera</h3>
                        </div>
                        <div class="panel-body">
                            <div id="chartdiv"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Promedio de Fobia Social por edad</h3>
                        </div>
                        <div class="panel-body">
                            <div id="piediv"></div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Estudiantes que padecen Fobia Social por estado</h3>
                        </div>
                        <div class="panel-body">
                            <div id="chartdiv2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        $(document).ready(function () {

            //PageMethods.GetCareerStatistics("", onSuccess);
            var dataValue = { "nullParameter": "" };
            $.ajax({
                type: "POST",
                url: "index.aspx/GetCareerStatistics",
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
                        var careers = response.split("-");
                        console.log(careers);
                        var pieChart = AmCharts.makeChart("chartdiv", {
                            "type": "serial",
                            "theme": "light",
                            "dataProvider": [{
                                "title": "Ing. \n Informática",
                                "value": careers[0].replace(",", ".")
                            }, {
                                "title": "Ing. Civil",
                                "value": careers[1].replace(",", ".")
                            }, {
                                "title": "Ing. \n Telecomuni- \n caciones",
                                "value": careers[2].replace(",", ".")
                            }, {
                                "title": "Ing. \n Industrial",
                                "value": careers[3].replace(",", ".")
                            }, {
                                "title": "Psicología",
                                "value": careers[4].replace(",", ".")
                            }, {
                                "title": "Teología",
                                "value": careers[5].replace(",", ".")
                            }, {
                                "title": "Filosofía",
                                "value": careers[6].replace(",", ".")
                            }, {
                                "title": "Letras",
                                "value": careers[7].replace(",", ".")
                            }, {
                                "title": "Com. \n Social",
                                "value": careers[8].replace(",", ".")
                            }, {
                                "title": "Relaciones \n Industriales",
                                "value": careers[9].replace(",", ".")
                            }, {
                                "title": "Derecho",
                                "value": careers[10].replace(",", ".")
                            }, {
                                "title": "Adm. \n y Contaduría",
                                "value": careers[11].replace(",", ".")
                            }, {
                                "title": "Economía",
                                "value": careers[12].replace(",", ".")
                            }, {
                                "title": "Educación",
                                "value": careers[13].replace(",", ".")
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
                    }
                }
            });

            //PageMethods.GetStateStatistics("", onSuccess);
            var dataValue = { "nullParameter": "" };
            $.ajax({
                type: "POST",
                url: "index.aspx/GetStateStatistics",
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
                        var states = response.split("-");
                        console.log(states);
                        var pieChart = AmCharts.makeChart("chartdiv2", {
                            "type": "serial",
                            "theme": "light",
                            "dataProvider": [{
                                "title": "Distrito Capital",
                                "value": states[0]
                            }, {
                                "title": "Vargas",
                                "value": states[1]
                            }, {
                                "title": "Miranda",
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
                    }
                }
            });


            //PageMethods.GetAgeStatistics("", onSuccess);
            var dataValue = { "nullParameter": "" };
            $.ajax({
                type: "POST",
                url: "index.aspx/GetAgeStatistics",
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
                        var age = response.split("-");
                        console.log(age);
                        var pieChart = AmCharts.makeChart("piediv", {
                            "type": "pie",
                            "radius": 100,
                            "theme": "black",
                            "dataProvider": [{
                                "title": "19 años",
                                "value": age[0].replace(",", ".")
                            }, {
                                "title": "20 años",
                                "value": age[1].replace(",", ".")
                            }, {
                                "title": "21 años",
                                "value": age[2].replace(",", ".")
                            }, {
                                "title": "22 años",
                                "value": age[3].replace(",", ".")
                            }, {
                                "title": "23 años",
                                "value": age[4].replace(",", ".")
                            }, {
                                "title": "24 años",
                                "value": age[5].replace(",", ".")
                            }, {
                                "title": "25 años",
                                "value": age[6].replace(",", ".")
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
    </script>
</asp:Content>