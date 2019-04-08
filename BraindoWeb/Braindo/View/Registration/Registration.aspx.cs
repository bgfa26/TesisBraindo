using Braindo.Common;
using Braindo.Controller.PsychologistModule;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.Registration
{
    public partial class Registration : System.Web.UI.Page
    {

        private Psychologist _psychologist;
        private Psychologist _psychologistRegistered;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            String pwd = Request.Form["password"];
            pwd = GenerateSHA256String(pwd);
            String re_password = Request.Form["re_password"];
            re_password = GenerateSHA256String(re_password);
            String id = Request.Form["idNumber"];
            String psychologicalId = Request.Form["psychologicalId"];
            String firstname = Request.Form["firstname"];
            String secondname = Request.Form["secondname"];
            String firstlastname = Request.Form["firstlastname"];
            String secondlastname = Request.Form["secondlastname"];
            String birthday = Request.Form["birthday"];
            String email = Request.Form["email"];
            if (!pwd.Equals("") && !re_password.Equals("") && !id.Equals("") && !psychologicalId.Equals("") && !firstname.Equals("") && !firstlastname.Equals("") && !birthday.Equals("") && !email.Equals(""))
            {
                int _id = Convert.ToInt32(id);
                DateTime birthdate = DateTime.Parse(birthday);
                _psychologist = new Psychologist(_id, email, pwd, firstname, secondname, firstlastname, secondlastname, psychologicalId, birthdate);
                if (pwd.Equals(re_password))
                {
                    RegisterPsychologistCommand cmd = new RegisterPsychologistCommand(_psychologist);

                    try
                    {
                        cmd.execute();
                        _psychologistRegistered = cmd.getAnswer();
                        if (_psychologistRegistered._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                        {
                            Response.Redirect("../Home/index.aspx");
                            //Session["USER_ID"] = _psychologistRegistered._ID;
                            //string script = "alert(\"Se ha completado el registro exitosamente\");";
                            //ScriptManager.RegisterStartupScript(this, GetType(),
                            //                        "ServerControlScript", script, true);
                            //Response.AddHeader("REFRESH", "1;URL=/View/Home/postlogin.aspx");
                        }
                        else
                        {
                            string script = "BootAlert('No se ha podido completar el registro, por favor intente nuevamente');";
                            ScriptManager.RegisterStartupScript(this, GetType(),
                                                    "ServerControlScript", script, true);

                            //string script = "alert(\"No se ha podido completar el registro, por favor intente nuevamente\");";
                            //ScriptManager.RegisterStartupScript(this, GetType(),
                            //                        "ServerControlScript", script, true);
                        }
                    }
                    catch (Exception ex)
                    {

                        string script = "BootAlert('No se ha podido completar el registro, por favor intente nuevamente');";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);

                        //string script = "alert(\"No se ha podido completar el registro, por favor intente nuevamente\");";
                        //ScriptManager.RegisterStartupScript(this, GetType(),
                        //                        "ServerControlScript", script, true);
                    }
                }
                else
                {
                    string script = "BootAlert('Existen campos vacíos en el formulario');";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                            "ServerControlScript", script, true);

                    //string script = "alert(\"Existen campos vacíos en el formulario\");";
                    //ScriptManager.RegisterStartupScript(this, GetType(),
                    //                        "ServerControlScript", script, true);
                }
            }
            else
            {

                string script = "BootAlert('Existen campos vacíos en el formulario');";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);

                //string script = "alert(\"Existen campos vacíos en el formulario\");";
                //ScriptManager.RegisterStartupScript(this, GetType(),
                //                        "ServerControlScript", script, true);
            }

        }
    }
}