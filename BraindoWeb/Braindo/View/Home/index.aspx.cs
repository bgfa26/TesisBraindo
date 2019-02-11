using Braindo.Common;
using Braindo.Controller.PsychologistModule;
using Braindo.Controller.StatiticsModule.PublicStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.Home
{
    public partial class index : System.Web.UI.Page
    {
        private Psychologist _psychologist;
        private Psychologist _psychologistConsulted;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] != null)
            {
                Response.Redirect("~/View/Home/postlogin.aspx", false);
            }
        }

        private string GetStringFromHash(byte[] hash)
        {
            StringBuilder result = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)
            {
                result.Append(hash[i].ToString("X2"));
            }
            return result.ToString();
        }

        private String GenerateSHA256String(string inputString)
        {
            SHA256 sha256 = SHA256Managed.Create();
            byte[] bytes = Encoding.UTF8.GetBytes(inputString);
            byte[] hash = sha256.ComputeHash(bytes);
            return GetStringFromHash(hash);
        }

        protected void aceptar_Click(object sender, EventArgs e)
        {
            String pwd = Request.Form["psw"];
            pwd = GenerateSHA256String(pwd);
            String email = Request.Form["mail"];

            _psychologist = new Psychologist();
            _psychologist._Email = email;
            _psychologist._Password = pwd;

            LoginPsychologistCommand cmd = new LoginPsychologistCommand(_psychologist);

            try
            {
                cmd.execute();
                _psychologistConsulted = cmd.getAnswer();

                if (_psychologistConsulted._ID == 0)
                {
                    String message = "Correo o contraseña invalido";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                }
                else
                {
                    Session["USER_ID"] = _psychologistConsulted._ID;
                    Response.Redirect("~/View/Home/postlogin.aspx", false);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
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
                foreach(Patient patient in patientList){
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