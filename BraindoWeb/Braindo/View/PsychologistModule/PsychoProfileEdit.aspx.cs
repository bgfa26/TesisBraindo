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
                int id = 24220210;
                psychoConsulted = new Psychologist(id);

                ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psychoConsulted);

                try
                {
                    psychoConsult.execute();
                    psychoConsulted = psychoConsult.getAnswer();

                    name_txt.Value = psychoConsulted._Name;
                    secondName_txt.Value = psychoConsulted._SecondName;
                    surname_txt.Value = psychoConsulted._Surname;
                    secondSurname_txt.Value = psychoConsulted._SecondSurname;
                    registrationNumber_txt.Value = psychoConsulted._RegistrationNumber;
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

        protected void btnChangeData_Click(object sender, EventArgs e)
        {

            if (name_txt.Value.Equals("") || secondName_txt.Value.Equals("") || surname_txt.Value.Equals("") || secondSurname_txt.Value.Equals("") || date.Value.Equals("") || registrationNumber_txt.Value.Equals("") || email_txt.Value.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                int cedula = 24220210;
                String correo = email_txt.Value;
                String primerNombre = name_txt.Value;
                String segundoNombre = secondName_txt.Value;
                String primerApellido = surname_txt.Value;
                String segundoApellido = secondSurname_txt.Value;
                String numeroMatricula = registrationNumber_txt.Value;
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