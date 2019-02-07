using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;
using Npgsql;


namespace Braindo.View.PsychologistModule
{
    public partial class PsychoProfileEdit : System.Web.UI.Page
    {

        private Psychologist psycho;
        private Psychologist psychoConsulted;
        private Psychologist psychoModified;

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
                    String idSession = Session["USER_ID"].ToString();
                    int id = Convert.ToInt32(idSession);
                    psychoConsulted = new Psychologist(id);

                    ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psychoConsulted);

                    try
                    {
                        psychoConsult.execute();
                        psychoConsulted = psychoConsult.getAnswer();

                        nameTXT.Text = psychoConsulted._Name;
                        secondNameTXT.Text = psychoConsulted._SecondName;
                        surnameTXT.Text = psychoConsulted._Surname;
                        secondSurnameTXT.Text = psychoConsulted._SecondSurname;
                        registrationNumberTXT.Text = psychoConsulted._RegistrationNumber;
                        email_txt.Value = psychoConsulted._Email;

                        DateTime birthdatePsycho = psychoConsulted._Birthdate;

                        date.Value = birthdatePsycho.ToString("yyyy-MM-dd");
                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
            }
        }

        protected void btnChangeData_Click(object sender, EventArgs e)
        {

            if (nameTXT.Text.Equals("") || secondNameTXT.Text.Equals("") || surnameTXT.Text.Equals("") || secondSurnameTXT.Text.Equals("") || date.Value.Equals("") || registrationNumberTXT.Text.Equals("") || email_txt.Value.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String idSession = Session["USER_ID"].ToString();
                int cedula = Convert.ToInt32(idSession);
                String correo = email_txt.Value;
                String primerNombre = nameTXT.Text;
                String segundoNombre = secondNameTXT.Text;
                String primerApellido = surnameTXT.Text;
                String segundoApellido = secondSurnameTXT.Text;
                String numeroMatricula = registrationNumberTXT.Text;
                String fechaNac = date.Value;

                DateTime oDate = DateTime.Parse(fechaNac);

                psycho = new Psychologist(cedula, correo, primerNombre, segundoNombre, primerApellido, segundoApellido, numeroMatricula, oDate);

                EditInformationCommand cmd = new EditInformationCommand(psycho);

                try
                {
                    cmd.execute();
                    psychoModified = cmd.getAnswer();
                    if (psychoModified._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se cambiaron los datos del psicologo');window.location.href='PsychoProfile.aspx';", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se cambiaron los datos');window.location.href='PsychoProfile.aspx';", true);
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