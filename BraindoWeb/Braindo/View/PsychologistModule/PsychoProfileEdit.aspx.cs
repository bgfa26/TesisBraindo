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
        private Psychologist psychoModified;

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnChangeData_Click(object sender, EventArgs e)
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
                    String myStringVariable = "Se Cambio";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    String myStringVariable = "No se Cambio";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
    }
}