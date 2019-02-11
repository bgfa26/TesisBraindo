using Braindo.Common;
using Braindo.Controller.StatiticsModule.PublicStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.Home
{
    public partial class postlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod]
        public static String GetStatistics()
        {
            int softwareIng = 0;
            int civilIng = 0;
            int telecomIng = 0;
            int industrialIng = 0;
            int psychology = 0;
            int theology = 0;
            int philosophy = 0;
            int letters = 0;
            int socialCom = 0;
            int industrialRel = 0;
            int law = 0;
            int accounting = 0;
            int economy = 0;
            int education = 0;
            int capital = 0;
            int miranda = 0;
            int vargas = 0;
            String answer = "";
            PublicStatisticsCommand cmd = new PublicStatisticsCommand();
            try
            {
                cmd.execute();
                List<Patient> patientList = cmd.GetAnswer();
                foreach (Patient patient in patientList)
                {
                    if (patient._Career.Equals("Ingeniería Informática"))
                    {
                        softwareIng++;
                    }
                    if (patient._Career.Equals("Ingeniería Civil"))
                    {
                        civilIng++;
                    }
                    if (patient._Career.Equals("Ingeniería en Telecomunicaciones"))
                    {
                        telecomIng++;
                    }
                    if (patient._Career.Equals("Ingeniería Industrial"))
                    {
                        industrialIng++;
                    }
                    if (patient._Career.Equals("Psicología"))
                    {
                        psychology++;
                    }
                    if (patient._Career.Equals("Teología"))
                    {
                        theology++;
                    }
                    if (patient._Career.Equals("Filosofía"))
                    {
                        philosophy++;
                    }
                    if (patient._Career.Equals("Letras"))
                    {
                        letters++;
                    }
                    if (patient._Career.Equals("Comunicación Social"))
                    {
                        socialCom++;
                    }
                    if (patient._Career.Equals("Relaciones Industriales"))
                    {
                        industrialRel++;
                    }
                    if (patient._Career.Equals("Derecho"))
                    {
                        law++;
                    }
                    if (patient._Career.Equals("Administración y Contaduría"))
                    {
                        accounting++;
                    }
                    if (patient._Career.Equals("Economía"))
                    {
                        economy++;
                    }
                    if (patient._Career.Equals("Educación"))
                    {
                        education++;
                    }
                    if (patient._State.Equals("Distrito Capital"))
                    {
                        capital++;
                    }
                    if (patient._State.Equals("Miranda"))
                    {
                        miranda++;
                    }
                    if (patient._State.Equals("Vargas"))
                    {
                        vargas++;
                    }
                }
                answer = softwareIng + "," + civilIng + "," + telecomIng + "," + industrialIng + "," + psychology + "," + theology + "," +
                         philosophy + "," + letters + "," + socialCom + "," + industrialRel + "," + law + "," + accounting + "," +
                         economy + "," + education + "/" + capital + "," + miranda + "," + vargas;

            }
            catch (Exception ex)
            {
                answer = "error";
            }
            return answer;
        }
    }
}