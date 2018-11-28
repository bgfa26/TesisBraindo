using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Npgsql;


namespace Braindo.View.PsychologistModule
{
    public partial class PsychoProfileEdit : System.Web.UI.Page
    {

        private Psychologist psycho;

        protected void Page_Load(object sender, EventArgs e)
        {

            int cedula = 6963282;
            String correo = "darionavas01@gmail.com";
            String clave = "ronald01";
            String primerNombre = "Jose";
            String segundoNombre = "Dario";
            String primerApellido = "Navas";
            String segundoApellido = "Fernandez";
            String numeroMatricula = "6963282-1202";
            String fechaNac = "12/02/1996";

            DateTime oDate = DateTime.Parse(fechaNac);

            psycho = new Psychologist(cedula, correo, clave, primerNombre, segundoNombre, primerApellido, segundoApellido, numeroMatricula, oDate);

            EditInformationCommand cmd = new EditInformationCommand(psycho);

            cmd.execute();
            

        }
    }
}