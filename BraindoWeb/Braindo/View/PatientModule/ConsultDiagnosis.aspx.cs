using Braindo.Controller.DiagnosisModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

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

                            Double negativeInt = Convert.ToDouble(negative)/10;
                            Double neutralInt = Convert.ToDouble(neutral)/10;
                            Double positiveInt = Convert.ToDouble(positive)/10;

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

                            Double fearInt = Convert.ToDouble(fear) / 10;
                            Double sadInt = Convert.ToDouble(sad) / 10;
                            Double happyInt = Convert.ToDouble(happy) / 10;
                            Double angryInt = Convert.ToDouble(angry) / 10;
                            Double excitedInt = Convert.ToDouble(excited) / 10;
                            Double boredInt = Convert.ToDouble(bored) / 10;

                            if (fearInt > sadInt && fearInt > happyInt && fearInt > angryInt && fearInt > excitedInt && fearInt > boredInt)
                            {
                                highestValueEmotions = fearInt.ToString() + "%" + " " + "Miedo";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emocion" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (sadInt > fearInt && sadInt > happyInt && sadInt > angryInt && sadInt > excitedInt && sadInt > boredInt)
                            {
                                highestValueEmotions = sadInt.ToString() + "%" + " " + "Tristeza";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emocion" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";
                            }
                            else if (happyInt > fearInt && happyInt > sadInt && happyInt > angryInt && happyInt > excitedInt && happyInt > boredInt)
                            {
                                highestValueEmotions = happyInt.ToString() + "%" + " " + "Felicidad";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emocion" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (angryInt > fearInt && angryInt > sadInt && angryInt > happyInt && angryInt > excitedInt && angryInt > boredInt)
                            {
                                highestValueEmotions = angryInt.ToString() + "%" + " " + "Enojo";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + excitedInt.ToString() + "%" + " " + "Emocion" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else if (excitedInt > fearInt && excitedInt > sadInt && excitedInt > happyInt && excitedInt > angryInt && excitedInt > boredInt)
                            {
                                highestValueEmotions = excitedInt.ToString() + "%" + " " + "Emocion";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + boredInt.ToString() + "%" + " " + "Aburrido" + "  ";

                            }
                            else
                            {
                                highestValueEmotions = boredInt.ToString() + "%" + " " + "Aburrimiento";
                                othersValuesEmotions = "Otras Emociones:" + "\n" + fearInt.ToString() + "%" + " " + "Miedo" + "\n" + sadInt.ToString() + "%" + " " + "Tristeza" + "\n" + happyInt.ToString() + "%" + " " + "Felicidad" + "\n" + angryInt.ToString() + "%" + " " + "Enojo" + "\n" + excitedInt.ToString() + "%" + " " + "Emocion" + "  ";

                            }

                            /*SECCION RESPUESTA RED*/

                            string[] networkAnswerArgs = _diagnostic._NetworkAnswer.Split(new char[] { '/' });

                            String answer0 = networkAnswerArgs[0].Substring(0, 5);
                            String answer1 = networkAnswerArgs[1].Substring(0, 5);
                            String answer2 = networkAnswerArgs[2].Substring(0, 5);
                            String answer3 = networkAnswerArgs[3].Substring(0, 5);
                            String answer4 = networkAnswerArgs[4].Substring(0, 5);
                            String answer5 = networkAnswerArgs[5].Substring(0, 5);


                            Double AvoidanceDouble = Convert.ToDouble(answer0) / 10;
                            Double ExperienceDouble = Convert.ToDouble(answer1) / 10;
                            Double FlexibilityDouble = Convert.ToDouble(answer2) / 10;
                            Double FusionDouble = Convert.ToDouble(answer3) / 10;
                            Double RigidityDouble = Convert.ToDouble(answer4) / 10;
                            Double netAnswerDouble = Convert.ToDouble(answer5) / 10;


                            networkAnxiety = netAnswerDouble.ToString() + "%";
                            othersValuesNetworkAnxiety = "Resultados por Factor:" + "\n" + AvoidanceDouble.ToString() + "%" + " " + "Evitacion" + "\n" + ExperienceDouble.ToString() + "%" + " " + "Experiencia" + "\n" + FlexibilityDouble.ToString() + "%" + " " + "Flexibilidad" + "\n" + FusionDouble.ToString() + "%" + " " + "Fusion" + "\n" + RigidityDouble.ToString() + "%" + " " + "Rigidez" + "\n";

                            Diagnostic diagnosisFixed = new Diagnostic(_diagnostic._ID, _diagnostic._DiagnosisDateString, highestValueFeelings, othersValuesFeelings, highestValueEmotions, othersValuesEmotions, _diagnostic._Answer, networkAnxiety, othersValuesNetworkAnxiety, _diagnostic._Patient, _diagnostic._Psychologist);

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