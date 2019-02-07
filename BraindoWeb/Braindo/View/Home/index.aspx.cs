using Braindo.Common;
using Braindo.Controller.PsychologistModule;
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
    }
}