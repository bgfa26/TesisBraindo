using Braindo.Common;
using Braindo.Controller.PatientModule;
using Braindo.Controller.StatiticsModule.DashboardStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.IndexModule
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicie sesion para ver esta ventana');window.location.href='LoginTest.aspx';", true);
            }
        }

        [System.Web.Services.WebMethod]
        public static String GetDateStatistics(String initDate, String endingDate)
        {
            float janAVG = 0;
            float febAVG = 0;
            float marAVG = 0;
            float aprAVG = 0;
            float mayAVG = 0;
            float junAVG = 0;
            float julAVG = 0;
            float agoAVG = 0;
            float sepAVG = 0;
            float octAVG = 0;
            float novAVG = 0;
            float decAVG = 0;
            float year = 0;
            String answer = "";

            String fechaInicial = initDate;
            String fechaFinal = endingDate;

            string[] initDateArgs = fechaInicial.Split('-');
            String yearInit = initDateArgs[0];

            string[] endDateArgs = fechaFinal.Split('-');
            String yearEnd = endDateArgs[0];

            int compare = string.Compare(yearInit, yearEnd);

            if (compare != 0)
            {
                answer = "Los años son diferentes, deben ser el mismo año";
            }
            else
            {
                DateTime fechaInicialDT = Convert.ToDateTime(fechaInicial);
                DateTime fechaFinalDT = Convert.ToDateTime(fechaFinal);

                Statistics stats = new Statistics(fechaInicialDT, fechaFinalDT);

                DateStatisticsCommand dateCMD = new DateStatisticsCommand(stats);

                try
                {
                    dateCMD.execute();
                    List<Statistics> statisticsList = dateCMD.GetAnswer();

                    if (statisticsList.Count == 0)
                    {
                        answer = "En la fecha consultada no existen registros";
                    }
                    else
                    {
                        foreach (Statistics _statistics in statisticsList)
                        {
                            if (_statistics._Month.Equals(1))
                            {
                                janAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(2))
                            {
                                febAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(3))
                            {
                                marAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(4))
                            {
                                aprAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(5))
                            {
                                mayAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(6))
                            {
                                junAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(7))
                            {
                                julAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(8))
                            {
                                agoAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(9))
                            {
                                sepAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(10))
                            {
                                octAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(11))
                            {
                                novAVG = _statistics._TotalAnxiety * 100;
                            }
                            if (_statistics._Month.Equals(12))
                            {
                                decAVG = _statistics._TotalAnxiety * 100;
                            }

                            year = _statistics._Year;
                        }
                        answer = janAVG.ToString("0.00") + "-" + febAVG.ToString("0.00") + "-" + marAVG.ToString("0.00") + "-" + aprAVG.ToString("0.00") + "-" + mayAVG.ToString("0.00") + "-" + junAVG.ToString("0.00") + "-" + julAVG.ToString("0.00") + "-" + agoAVG.ToString("0.00") + "-" + sepAVG.ToString("0.00") + "-" + octAVG.ToString("0.00") + "-" + novAVG.ToString("0.00") + "-" + decAVG.ToString("0.00") + "-" + year;
                    }
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
            return answer;
        }

        //[System.Web.Services.WebMethod]
        //public static String GetDateStatistics()
        //{
        //    float janAVG = 0;
        //    float febAVG = 0;
        //    float marAVG = 0;
        //    float aprAVG = 0;
        //    float mayAVG = 0;
        //    float junAVG = 0;
        //    float julAVG = 0;
        //    float agoAVG = 0;
        //    float sepAVG = 0;
        //    float octAVG = 0;
        //    float novAVG = 0;
        //    float decAVG = 0;
        //    float year = 0;
        //    String answer = "";

        //    String fechaInicial = "2019-02-05";
        //    String fechaFinal = "2019-09-05";
        //    DateTime fechaInicialDT = Convert.ToDateTime(fechaInicial);
        //    DateTime fechaFinalDT = Convert.ToDateTime(fechaFinal);

        //    Statistics stats = new Statistics(fechaInicialDT, fechaFinalDT);

        //    DateStatisticsCommand dateCMD = new DateStatisticsCommand(stats);

        //    try
        //    {
        //        dateCMD.execute();
        //        List<Statistics> statisticsList = dateCMD.GetAnswer();
        //        foreach (Statistics _statistics in statisticsList)
        //        {
        //            if (_statistics._Month.Equals(1))
        //            {
        //                janAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(2))
        //            {
        //                febAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(3))
        //            {
        //                marAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(4))
        //            {
        //                aprAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(5))
        //            {
        //                mayAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(6))
        //            {
        //                junAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(7))
        //            {
        //                julAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(8))
        //            {
        //                agoAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(9))
        //            {
        //                sepAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(10))
        //            {
        //                octAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(11))
        //            {
        //                novAVG = _statistics._TotalAnxiety * 100;
        //            }
        //            if (_statistics._Month.Equals(12))
        //            {
        //                decAVG = _statistics._TotalAnxiety * 100;
        //            }

        //            year = _statistics._Year;
        //        }
        //        answer = janAVG.ToString("0.00") + "-" + febAVG.ToString("0.00") + "-" + marAVG.ToString("0.00") + "-" + aprAVG.ToString("0.00") + "-" + mayAVG.ToString("0.00") + "-" + junAVG.ToString("0.00") + "-" + julAVG.ToString("0.00") + "-" + agoAVG.ToString("0.00") + "-" + sepAVG.ToString("0.00") + "-" + octAVG.ToString("0.00") + "-" + novAVG.ToString("0.00") + "-" + decAVG.ToString("0.00") + "-" + year;
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //    return answer;
        //}

        [System.Web.Services.WebMethod]
        public static String GetStateStatistics()
        {
            long DttoCapital = 0;
            long Vargas = 0;
            long Miranda = 0;
            String answer = "";
            StateStatisticsCommand stateCMD = new StateStatisticsCommand();

            try
            {
                stateCMD.execute();
                List<Statistics> statisticsList = stateCMD.GetAnswer();
                foreach (Statistics _statistics in statisticsList)
                {
                    if (_statistics._State.Equals("Distrito Capital"))
                    {
                        DttoCapital = _statistics._TotalPatients;
                    }
                    if (_statistics._State.Equals("Vargas"))
                    {
                        Vargas = _statistics._TotalPatients;
                    }
                    if (_statistics._State.Equals("Miranda"))
                    {
                        Miranda = _statistics._TotalPatients;
                    }
                }

                answer = DttoCapital + "-" + Vargas + "-" + Miranda;
            }
            catch (Exception ex)
            {

                answer = "error";
            }
            return answer;
        }

        [System.Web.Services.WebMethod]
        public static String GetAgeStatistics()
        {
            float age19 = 0;
            float age20 = 0;
            float age21 = 0;
            float age22 = 0;
            float age23 = 0;
            float age24 = 0;
            float age25 = 0;
            String answer = "";

            AgeStatisticsCommand ageCMD = new AgeStatisticsCommand();
            try
            {
                ageCMD.execute();
                List<Statistics> statisticsList = ageCMD.GetAnswer();
                foreach (Statistics _statistics in statisticsList)
                {
                    if (_statistics._Age.Equals(19))
                    {
                        age19 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(20))
                    {
                        age20 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(21))
                    {
                        age21 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(22))
                    {
                        age22 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(23))
                    {
                        age23 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(24))
                    {
                        age24 = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Age.Equals(25))
                    {
                        age25 = _statistics._TotalAnxiety * 100;
                    }
                }
                answer = age19.ToString("0.00") + "-" + age20.ToString("0.00") + "-" + age21.ToString("0.00") + "-" + age22.ToString("0.00") + "-" + age23.ToString("0.00") + "-" + age24.ToString("0.00") + "-" + age25.ToString("0.00");
            }
            catch (Exception ex)
            {

                answer = "error";
            }
            return answer;
        }

        [System.Web.Services.WebMethod]
        public static String GetCareerStatistics()
        {
            float softwareIng = 0;
            float civilIng = 0;
            float telecomIng = 0;
            float industrialIng = 0;
            float psychology = 0;
            float theology = 0;
            float philosophy = 0;
            float letters = 0;
            float socialCom = 0;
            float industrialRel = 0;
            float law = 0;
            float accounting = 0;
            float economy = 0;
            float education = 0;
            String answer = "";

            CareerStatisticsCommand careerCMD = new CareerStatisticsCommand();

            try
            {
                careerCMD.execute();
                List<Statistics> statisticsList = careerCMD.GetAnswer();
                foreach (Statistics _statistics in statisticsList)
                {
                    if (_statistics._Career.Equals("Ingeniería Informática"))
                    {
                        softwareIng = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Ingeniería Civil"))
                    {
                        civilIng = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Ingeniería en Telecomunicaciones"))
                    {
                        telecomIng = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Ingeniería Industrial"))
                    {
                        industrialIng = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Psicología"))
                    {
                        psychology = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Teología"))
                    {
                        theology = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Filosofía"))
                    {
                        philosophy = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Letras"))
                    {
                        letters = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Comunicación Social"))
                    {
                        socialCom = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Relaciones Industriales"))
                    {
                        industrialRel = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Derecho"))
                    {
                        law = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Administración y Contaduría"))
                    {
                        accounting = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Economía"))
                    {
                        economy = _statistics._TotalAnxiety * 100;
                    }
                    if (_statistics._Career.Equals("Educación"))
                    {
                        education = _statistics._TotalAnxiety * 100;
                    }
                }

                answer = softwareIng.ToString("0.00") + "-" + civilIng.ToString("0.00") + "-" + telecomIng.ToString("0.00") + "-" + industrialIng.ToString("0.00") + "-" + psychology.ToString("0.00") + "-" + theology.ToString("0.00") + "-" + philosophy.ToString("0.00") + "-" + letters.ToString("0.00") + "-" + socialCom.ToString("0.00") + "-" + industrialRel.ToString("0.00") + "-" + law.ToString("0.00") + "-" + accounting.ToString("0.00") + "-" + economy.ToString("0.00") + "-" + education.ToString("0.00");
            }
            catch (Exception ex)
            {
                throw ex;
                answer = "error";
            }
            return answer;
        }


    }
}
