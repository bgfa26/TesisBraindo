using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace Braindo.View.IndexModule
{
    public partial class LoginTest : System.Web.UI.Page
    {
        private Psychologist _psychologist;
        private Psychologist _psychologistConsulted;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public static String GenerateSHA256String(string inputString)
        {
            SHA256 sha256 = SHA256Managed.Create();
            byte[] bytes = Encoding.UTF8.GetBytes(inputString);
            byte[] hash = sha256.ComputeHash(bytes);
            return GetStringFromHash(hash);
        }

        private static string GetStringFromHash(byte[] hash)
        {
            StringBuilder result = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)
            {
                result.Append(hash[i].ToString("X2"));
            }
            return result.ToString();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String correo = email.Text;
            String contra = GenerateSHA256String(password.Text);
            DateTime NullDateTime = new DateTime();

            _psychologist = new Psychologist(0, correo, contra, "", "", "", "", "", NullDateTime);

            LoginPsychologistCommandcs cmd = new LoginPsychologistCommandcs(_psychologist);

            try
            {
                cmd.execute();
                _psychologistConsulted = cmd.getAnswer();

                if (_psychologistConsulted._ID == 0)
                {
                    String myStringVariable = "ERROR! No existe la cuenta, verificar datos";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    Session["USER_ID"] = _psychologistConsulted._ID;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicio de sesion exitoso, Bienvenido');window.location.href='../IndexModule/index.aspx';", true);
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}