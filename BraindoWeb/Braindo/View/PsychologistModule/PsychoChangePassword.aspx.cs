using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;
using System.Security.Cryptography;
using System.Text;

namespace Braindo.View.PsychologistModule
{
    public partial class PsychoChangePassword : System.Web.UI.Page
    {

        private Psychologist psycho;
        private Psychologist psychoChanged;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("~/View/Home/index.aspx", false);
            }
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

        protected void btnChange_Click(object sender, EventArgs e)
        {

            if (passTXT.Text.Equals(""))
            {
                string script = "BootAlert('ERROR! No debe dejar espacios en blanco');";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String idSession = Session["USER_ID"].ToString();
                int id = Convert.ToInt32(idSession);
                String password = GenerateSHA256String(passTXT.Text);
                psycho = new Psychologist(id, password);

                ChangePasswordCommand cmd = new ChangePasswordCommand(psycho);

                try
                {
                    cmd.execute();
                    psychoChanged = cmd.getAnswer();
                    if (psychoChanged._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        Response.Redirect("PsychoProfile.aspx");
                        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se cambió la contraseña');window.location.href='PsychoProfile.aspx';", true);
                    }
                    else
                    {
                        string script = "BootAlertNoRegistration('ERROR! No se hizo el cambio de la contraseña');";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);
                        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se hizo el cambio de la contraseña');window.location.href='PsychoProfile.aspx';", true);
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