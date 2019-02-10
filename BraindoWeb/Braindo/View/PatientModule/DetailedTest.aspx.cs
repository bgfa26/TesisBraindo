using Braindo.Controller.DiagnosisModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.PatientModule
{
    public partial class DetailedTest : System.Web.UI.Page
    {
        private Diagnostic diagnosis;
        private Diagnostic diagnosisConsulted;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["USER_ID"] == null)
                {
                    Response.Redirect("~/View/Home/index.aspx", false);
                }
                else
                {
                    String idDiagnosis = Request.QueryString["diagnosticID"];

                    int idInt = Convert.ToInt32(idDiagnosis);

                    diagnosis = new Diagnostic(idInt);

                    ConsultDiagnosticDetailedCommand cmdDetailedDiag = new ConsultDiagnosticDetailedCommand(diagnosis);

                    try
                    {
                        cmdDetailedDiag.execute();
                        diagnosisConsulted = cmdDetailedDiag.getAnswer();


                        tittle_Test.InnerText = "Test: " + diagnosisConsulted._Patient._Name + " " + diagnosisConsulted._Patient._Surname;
                        string[] answerArgs = diagnosisConsulted._Answer.Split(new char[] { ',' });

                        /*Asignar valores a los dropdownlist (EXCLUYO LA PREGUNTA 23, osea answerArgs[22] Y 40 osea answerArgs[39]*/
                        question1.SelectedValue = answerArgs[0];
                        question2.SelectedValue = answerArgs[1];
                        question3.SelectedValue = answerArgs[2];
                        question4.SelectedValue = answerArgs[3];
                        question5.SelectedValue = answerArgs[4];
                        question6.SelectedValue = answerArgs[5];
                        question7.SelectedValue = answerArgs[6];
                        question8.SelectedValue = answerArgs[7];
                        question9.SelectedValue = answerArgs[8];
                        question10.SelectedValue = answerArgs[9];

                        question11.SelectedValue = answerArgs[10];
                        question12.SelectedValue = answerArgs[11];
                        question13.SelectedValue = answerArgs[12];
                        question14.SelectedValue = answerArgs[13];
                        question15.SelectedValue = answerArgs[14];
                        question16.SelectedValue = answerArgs[15];
                        question17.SelectedValue = answerArgs[16];
                        question18.SelectedValue = answerArgs[17];
                        question19.SelectedValue = answerArgs[18];
                        question20.SelectedValue = answerArgs[19];

                        question21.SelectedValue = answerArgs[20];
                        question22.SelectedValue = answerArgs[21];
                        question24.SelectedValue = answerArgs[23];
                        question25.SelectedValue = answerArgs[24];
                        question26.SelectedValue = answerArgs[25];
                        question27.SelectedValue = answerArgs[26];
                        question28.SelectedValue = answerArgs[27];
                        question29.SelectedValue = answerArgs[28];
                        question30.SelectedValue = answerArgs[29];

                        question31.SelectedValue = answerArgs[30];
                        question32.SelectedValue = answerArgs[31];
                        question33.SelectedValue = answerArgs[32];
                        question34.SelectedValue = answerArgs[33];
                        question35.SelectedValue = answerArgs[34];
                        question36.SelectedValue = answerArgs[35];
                        question37.SelectedValue = answerArgs[36];
                        question38.SelectedValue = answerArgs[37];
                        question39.SelectedValue = answerArgs[38];


                        /*Asignar Valores a las preguntas 23 y 40*/
                        question40.Text = answerArgs[39];

                        if(answerArgs[22].Equals("1"))
                        {
                            question23.Text = "No me molesta ser evaluado de ninguna manera";
                        }
                        else if (answerArgs[22].Equals("2"))
                        {
                            question23.Text = "A veces, porque me siento más seguro";
                        }
                        else if (answerArgs[22].Equals("3"))
                        {
                            question23.Text = "Ambas opciones a veces me incomodan";
                        }
                        else if (answerArgs[22].Equals("4"))
                        {
                            question23.Text = "Si, porque solo el profesor lee lo que escribo";
                        }
                        else if (answerArgs[22].Equals("5"))
                        {
                            question23.Text = "No me gusta ser evaluado en ningún caso";
                        }


                    }
                    catch (Exception ex)
                    {
                        
                        throw ex;
                    }
                }
            }
        }
    }
}