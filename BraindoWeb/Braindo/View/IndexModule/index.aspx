<%@ Page Title="Braindo" Language="C#" MasterPageFile="~/View/MenuLayout.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Braindo.View.IndexModule.index" %>

<asp:Content ID="ContentIndex" ContentPlaceHolderID="head" runat="server">
     <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="/Content/css/IndexDashboard.css" />
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

        #chartdiv3 {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
            
        }

        #piediv {
	        width		: 100%;
	        height		: 500px;
	        font-size	: 11px;
        }	
    </style>

</asp:Content>

<asp:Content ID="ContentIndex2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Promedio de fobia social por carrera</h3>
                        </div>
                        <div class="panel-body">
                            <div id="chartdiv"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-pie-chart"></i> Porcentaje de fobia social por edad</h3>
                        </div>
                        <div class="panel-body">
                            <div id="piediv"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Estudiantes que padecen fobia social por estado</h3>
                        </div>
                        <div class="panel-body">
                            <div id="chartdiv2"></div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-line-chart"></i> Promedio de fobia social por fecha</h3>
                    </div>
                    <div class="panel-body">
                        <div class="inline center">
                            <div>
                                <label>Desde: </label>
                                <input runat="server" id="initDate" type="date" class="form-control-DashboardInput"/>
                            </div>
                            <div>
                                <label>Hasta: </label>
                                <input runat="server" id="endDate" type="date"  class="form-control-DashboardInput"/>
                            </div>
                            <div>
                                <input type="button" value="Consultar" class="btn-info-DashboardDateInput" onclick="CargarFecha()"/>
                            </div>                              
                            </div>
                            <div id="chartdiv3"></div>
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
                                "title": "Ing. \n Telecom.",
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

    <script>
        function CargarFecha() {
            PageMethods.GetDateStatistics(document.getElementById('<%= initDate.ClientID %>').value, document.getElementById('<%= endDate.ClientID %>').value, SucessDate);
        }
        function SucessDate(response, userContext, methodName) {
            if ((response != "Los años son diferentes, deben ser el mismo año") && (response != "En la fecha consultada no existen registros") && (response != "Seleccione un rango de fecha")) {
                var date = response.split("-");
                console.log(date);
                var chart = AmCharts.makeChart("chartdiv3", {
                    "type": "serial",
                    "theme": "none",
                    "language": "es",
                    "marginRight": 40,
                    "marginLeft": 40,
                    "autoMarginOffset": 20,
                    "mouseWheelZoomEnabled": true,
                    "dataDateFormat": "YYYY-MM",
                    "valueAxes": [{
                        "id": "v1",
                        "axisAlpha": 0,
                        "position": "left",
                        "ignoreAxisWidth": true,
                        "color": "#FFFFFF"
                    }],
                    "balloon": {
                        "borderThickness": 1,
                        "shadowAlpha": 0
                    },
                    "graphs": [{
                        "id": "g1",
                        "balloon": {
                            "drop": true,
                            "adjustBorderColor": false,
                            "color": "#ffffff"
                        },
                        "bullet": "round",
                        "bulletBorderAlpha": 1,
                        "bulletColor": "#FFFFFF",
                        "bulletSize": 5,
                        "hideBulletsCount": 50,
                        "lineThickness": 2,
                        "title": "red line",
                        "useLineColorForBulletBorder": true,
                        "valueField": "value",
                        "balloonText": "<span style='font-size:18px;'>[[value]]</span>",
                        "fillColors": "#542d89",
                        "lineColor": "#45b780"
                    }],
                    "chartScrollbar": {
                        "graph": "g1",
                        "oppositeAxis": false,
                        "offset": 30,
                        "scrollbarHeight": 80,
                        "backgroundAlpha": 0,
                        "selectedBackgroundAlpha": 0.1,
                        "selectedBackgroundColor": "#888888",
                        "graphFillAlpha": 0,
                        "graphLineAlpha": 0.5,
                        "selectedGraphFillAlpha": 0,
                        "selectedGraphLineAlpha": 1,
                        "autoGridCount": true,
                        "color": "#AAAAAA"
                    },
                    "chartCursor": {
                        "pan": true,
                        "valueLineEnabled": true,
                        "valueLineBalloonEnabled": true,
                        "cursorAlpha": 1,
                        "cursorColor": "#258cbb",
                        "limitToGraph": "g1",
                        "valueLineAlpha": 0.2,
                        "valueZoomable": true
                    },
                    "valueScrollbar": {
                        "oppositeAxis": false,
                        "offset": 50,
                        "scrollbarHeight": 10
                    },
                    "categoryField": "date",
                    "categoryAxis": {
                        "parseDates": true,
                        "dashLength": 1,
                        "color": "#FFFFFF",
                        "minorGridEnabled": true
                    },
                    "export": {
                        "enabled": true
                    },
                    "dataProvider": [{
                        "date": date[12] + "-01",
                        "value": date[0].replace(",", ".")
                    },
                    {
                        "date": date[12] + "-02",
                        "value": date[1].replace(",", ".")
                    }, {
                        "date": date[12] + "-03",
                        "value": date[2].replace(",", ".")
                    }, {
                        "date": date[12] + "-04",
                        "value": date[3].replace(",", ".")
                    }, {
                        "date": date[12] + "-05",
                        "value": date[4].replace(",", ".")
                    }, {
                        "date": date[12] + "-06",
                        "value": date[5].replace(",", ".")
                    }, {
                        "date": date[12] + "-07",
                        "value": date[6].replace(",", ".")
                    }, {
                        "date": date[12] + "-08",
                        "value": date[7].replace(",", ".")
                    }, {
                        "date": date[12] + "-09",
                        "value": date[8].replace(",", ".")
                    }, {
                        "date": date[12] + "-10",
                        "value": date[9].replace(",", ".")
                    }, {
                        "date": date[12] + "-11",
                        "value": date[10].replace(",", ".")
                    }, {
                        "date": date[12] + "-12",
                        "value": date[11].replace(",", ".")
                    }]
                });

                chart.addListener("rendered", zoomChart);

                zoomChart();

                function zoomChart() {
                    chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
                }
            }
            else {
                alert(response);
            }
        }
        //PageMethods.GetDateStatistics("", onSuccess);
        //var dataValue = { "nullParameter": "" };
        //$.ajax({
        //    type: "POST",
        //    url: "index.aspx/btnMakeGraph_Click",
        //    data: {},
        //    contentType: "application/json; charset=utf-8",
        //    dataType: "text",
        //    success: function (msg) {
        //        var response = msg.replace('{"d":"', '');
        //        response = response.replace('"}', '');
        //        if ((response != "error")) {
        //            AmCharts.addInitHandler(function (chart) {
        //                // check if there are graphs with autoColor: true set
        //                for (var i = 0; i < chart.graphs.length; i++) {
        //                    var graph = chart.graphs[i];
        //                    if (graph.autoColor !== true)
        //                        continue;
        //                    var colorKey = "autoColor-" + i;
        //                    graph.lineColorField = colorKey;
        //                    graph.fillColorsField = colorKey;
        //                    for (var x = 0; x < chart.dataProvider.length; x++) {
        //                        var color = chart.colors[23]
        //                        chart.dataProvider[x][colorKey] = color;
        //                    }
        //                }

        //            }, ["serial"]);
        //            var date = response.split("-");
        //            console.log(date);
        //            var chart = AmCharts.makeChart("chartdiv3", {
        //                "type": "serial",
        //                "theme": "none",
        //                "language": "es",
        //                "marginRight": 40,
        //                "marginLeft": 40,
        //                "autoMarginOffset": 20,
        //                "mouseWheelZoomEnabled": true,
        //                "dataDateFormat": "YYYY-MM",
        //                "valueAxes": [{
        //                    "id": "v1",
        //                    "axisAlpha": 0,
        //                    "position": "left",
        //                    "ignoreAxisWidth": true,
        //                    "color": "#FFFFFF"
        //                }],
        //                "balloon": {
        //                    "borderThickness": 1,
        //                    "shadowAlpha": 0
        //                },
        //                "graphs": [{
        //                    "id": "g1",
        //                    "balloon": {
        //                        "drop": true,
        //                        "adjustBorderColor": false,
        //                        "color": "#ffffff"
        //                    },
        //                    "bullet": "round",
        //                    "bulletBorderAlpha": 1,
        //                    "bulletColor": "#FFFFFF",
        //                    "bulletSize": 5,
        //                    "hideBulletsCount": 50,
        //                    "lineThickness": 2,
        //                    "title": "red line",
        //                    "useLineColorForBulletBorder": true,
        //                    "valueField": "value",
        //                    "balloonText": "<span style='font-size:18px;'>[[value]]</span>",
        //                    "fillColors": "#542d89",
        //                    "lineColor": "#45b780"
        //                }],
        //                "chartScrollbar": {
        //                    "graph": "g1",
        //                    "oppositeAxis": false,
        //                    "offset": 30,
        //                    "scrollbarHeight": 80,
        //                    "backgroundAlpha": 0,
        //                    "selectedBackgroundAlpha": 0.1,
        //                    "selectedBackgroundColor": "#888888",
        //                    "graphFillAlpha": 0,
        //                    "graphLineAlpha": 0.5,
        //                    "selectedGraphFillAlpha": 0,
        //                    "selectedGraphLineAlpha": 1,
        //                    "autoGridCount": true,
        //                    "color": "#AAAAAA"
        //                },
        //                "chartCursor": {
        //                    "pan": true,
        //                    "valueLineEnabled": true,
        //                    "valueLineBalloonEnabled": true,
        //                    "cursorAlpha": 1,
        //                    "cursorColor": "#258cbb",
        //                    "limitToGraph": "g1",
        //                    "valueLineAlpha": 0.2,
        //                    "valueZoomable": true
        //                },
        //                "valueScrollbar": {
        //                    "oppositeAxis": false,
        //                    "offset": 50,
        //                    "scrollbarHeight": 10
        //                },
        //                "categoryField": "date",
        //                "categoryAxis": {
        //                    "parseDates": true,
        //                    "dashLength": 1,
        //                    "color": "#FFFFFF",
        //                    "minorGridEnabled": true
        //                },
        //                "export": {
        //                    "enabled": true
        //                },
        //                "dataProvider": [{
        //                    "date": date[12] + "-01",
        //                    "value": date[0].replace(",", ".")
        //                },
        //                {
        //                    "date": date[12] + "-02",
        //                    "value": date[1].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-03",
        //                    "value": date[2].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-04",
        //                    "value": date[3].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-05",
        //                    "value": date[4].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-06",
        //                    "value": date[5].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-07",
        //                    "value": date[6].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-08",
        //                    "value": date[7].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-09",
        //                    "value": date[8].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-10",
        //                    "value": date[9].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-11",
        //                    "value": date[10].replace(",", ".")
        //                }, {
        //                    "date": date[12] + "-12",
        //                    "value": date[11].replace(",", ".")
        //                }]
        //            });
        //            chart.addListener("rendered", zoomChart);

        //            zoomChart();

        //            function zoomChart() {
        //                chart.zoomToIndexes(chart.dataProvider.length - 40, chart.dataProvider.length - 1);
        //            }
        //        }
        //    }
        //});
    </script>
</asp:Content>