using Braindo.Controller.DiagnosisModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Globalization;

namespace Braindo.View.PatientModule
{
    public partial class ConsultDiagnosis : System.Web.UI.Page
    {

        private Diagnostic diagnosis;
        private Diagnostic diagnosisRegistered;
        private List<Diagnostic> consultedDiagnostic;
        private Patient patient;
        private Psychologist psycho;

        List<Diagnostic> diagnosticListConfirmed = new List<Diagnostic>();

        String highestValueFeelings;
        String othersValuesFeelings;
        String highestValueEmotions;
        String othersValuesEmotions;
        String networkAnxiety;
        String othersValuesNetworkAnxiety;

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
                    String idPatient = Request.QueryString["patiendID"];

                    int idPatientInt = Convert.ToInt32(idPatient);

                    String idSession = Session["USER_ID"].ToString();
                    int idPsycho = Convert.ToInt32(idSession);

                    patient = new Patient(idPatientInt);
                    psycho = new Psychologist(idPsycho);

                    diagnosis = new Diagnostic(patient, psycho);

                    ConsultDiagnosticCommand cmd = new ConsultDiagnosticCommand(diagnosis);

                    try
                    {
                        cmd.execute();
                        consultedDiagnostic = cmd.getAnswer();

                        foreach (Diagnostic _diagnostic in consultedDiagnostic)
                        {

                            /*SECCION SENTIMIENTOS*/
                            string[] feelingsArgs = _diagnostic._Feelings.Split(new char[] { ';' });
                            String negative = feelingsArgs[0];
                            String neutral = feelingsArgs[1];
                            String positive = feelingsArgs[2];

                            float n = (float)Convert.ToDouble(negative, CultureInfo.GetCultureInfo("en-us"));

                            Double negativeInt = Convert.ToDouble(negative, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double neutralInt = Convert.ToDouble(neutral, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double positiveInt = Convert.ToDouble(positive, CultureInfo.GetCultureInfo("en-us")) * 100;

                            if (negativeInt > neutralInt && negativeInt > positiveInt)
                            {
                                highestValueFeelings = negativeInt.ToString() + "%" + " " + "Negativo";
                                othersValuesFeelings = "Otros Sentimientos:" + "\n" + neutralInt.ToString() + "%" + " " + "Neutral" + "\n" + positiveInt.ToString() + "%" + " " + "Positivo" + "  ";
                            }
                            else if (neutralInt > negativeInt && neutralInt > positiveInt)
                            {
                                highestValueFeelings = neutralInt.ToString() + "%" + " " + "Neutral";
                                othersValuesFeelings = "Otros Sentimientos:" + "\n" + negativeInt.ToString() + "%" + " " + "Negativo" + "\n" + positiveInt.ToString() + "%" + " " + "Positivo" + "  ";
                            }
                            else
                            {
                                highestValueFeelings = positiveInt.ToString() + "%" + " " + "Positivo";
                                othersValuesFeelings = "Otros Sentimientos:" + "\n" + negativeInt.ToString() + "%" + " " + "Negativo" + "\n" + neutralInt.ToString() + "%" + " " + "Neutral" + "  ";
                            }

                            /*SECCION EMOCIONES*/
                            string[] emotionsArgs = _diagnostic._Emotions.Split(new char[] { ';' });
                            String fear = emotionsArgs[0].Substring(0,5);
                            String sad = emotionsArgs[1].Substring(0, 5);
                            String happy = emotionsArgs[2].Substring(0, 5);
                            String angry = emotionsArgs[3].Substring(0, 5);
                            String excited = emotionsArgs[4].Substring(0, 5);
                            String bored = emotionsArgs[5].Substring(0, 5);

                            Double fearInt = Convert.ToDouble(fear, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double sadInt = Convert.ToDouble(sad, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double happyInt = Convert.ToDouble(happy, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double angryInt = Convert.ToDouble(angry, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double excitedInt = Convert.ToDouble(excited, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double boredInt = Convert.ToDouble(bored, CultureInfo.GetCultureInfo("en-us")) * 100;

                            if (fearInt > sadInt && fearInt > happyInt && fearInt > angryInt && fearInt > excitedInt && fearInt > boredInt)
                            {
                                highestValueEmotions = fearInt.ToString() + "%" + " " + "Miedo";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emoción" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (sadInt > fearInt && sadInt > happyInt && sadInt > angryInt && sadInt > excitedInt && sadInt > boredInt)
                            {
                                highestValueEmotions = sadInt.ToString() + "%" + " " + "Tristeza";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emoción" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";
                            }
                            else if (happyInt > fearInt && happyInt > sadInt && happyInt > angryInt && happyInt > excitedInt && happyInt > boredInt)
                            {
                                highestValueEmotions = happyInt.ToString() + "%" + " " + "Felicidad";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emoción" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (angryInt > fearInt && angryInt > sadInt && angryInt > happyInt && angryInt > excitedInt && angryInt > boredInt)
                            {
                                highestValueEmotions = angryInt.ToString() + "%" + " " + "Enojo";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + excitedInt.ToString() + "%" + " " + "Emoción" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (excitedInt > fearInt && excitedInt > sadInt && excitedInt > happyInt && excitedInt > angryInt && excitedInt > boredInt)
                            {
                                highestValueEmotions = excitedInt.ToString() + "%" + " " + "Emoción";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else
                            {
                                highestValueEmotions = boredInt.ToString() + "%" + " " + "Aburrimiento";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emoción" + "  ";

                            }

                            /*SECCION RESPUESTA RED*/

                            string[] networkAnswerArgs = _diagnostic._NetworkAnswer.Split(new char[] { '/' });

                            String answer0 = networkAnswerArgs[0].Substring(0, 5);
                            String answer1 = networkAnswerArgs[1].Substring(0, 5);
                            String answer2 = networkAnswerArgs[2].Substring(0, 5);
                            String answer3 = networkAnswerArgs[3].Substring(0, 5);
                            String answer4 = networkAnswerArgs[4].Substring(0, 5);
                            String answer5 = networkAnswerArgs[5].Substring(0, 5);


                            Double AvoidanceDouble = Convert.ToDouble(answer0, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double ExperienceDouble = Convert.ToDouble(answer1, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double FlexibilityDouble = Convert.ToDouble(answer2, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double FusionDouble = Convert.ToDouble(answer3, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double RigidityDouble = Convert.ToDouble(answer4, CultureInfo.GetCultureInfo("en-us")) * 100;
                            Double netAnswerDouble = Convert.ToDouble(answer5, CultureInfo.GetCultureInfo("en-us")) * 100;


                            networkAnxiety = netAnswerDouble.ToString() + "%";
                            othersValuesNetworkAnxiety = "Resultados por Factor:" + "\n" + AvoidanceDouble.ToString() + "%" + " " + "Evitación" + "\n" + ExperienceDouble.ToString() + "%" + " " + "Experiencia" + "\n" + FlexibilityDouble.ToString() + "%" + " " + "Flexibilidad" + "\n" + FusionDouble.ToString() + "%" + " " + "Fusión" + "\n" + RigidityDouble.ToString() + "%" + " " + "Rigidez" + "\n";

                            Diagnostic diagnosisFixed = new Diagnostic(_diagnostic._ID, _diagnostic._DiagnosisDateString, highestValueFeelings, othersValuesFeelings, highestValueEmotions, othersValuesEmotions, _diagnostic._Answer, networkAnxiety, othersValuesNetworkAnxiety, _diagnostic._TotalAnxiety, _diagnostic._Patient, _diagnostic._Psychologist);

                            diagnosticListConfirmed.Add(diagnosisFixed);


                        }

                        listDiagnostics.DataSource = diagnosticListConfirmed;
                        listDiagnostics.DataBind();

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
            }
        }

        protected void actionDiagnostic_Command(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "viewDetailedInfo")
            {
                String idString = e.CommandArgument.ToString();

                Response.Redirect("DetailedTest.aspx?diagnosticID=" + idString);
            }
        }
    }
}