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

            int cedula = 123;
            String correo = "barbara2601@gmail.com";
            String clave = "barbara2601";
            String primerNombre = "Barbara";
            String segundoNombre = "Gilvania";
            String primerApellido = "Fernandez";
            String segundoApellido = "Arisitugeta";
            String numeroMatricula = "24220210-2601";
            String fechaNac = "01/26/1996";

            DateTime oDate = DateTime.Parse(fechaNac);

            psycho = new Psychologist(cedula, correo, clave, primerNombre, segundoNombre, primerApellido, segundoApellido, numeroMatricula, oDate);

            EditInformationCommand cmd = new EditInformationCommand(psycho);

            cmd.execute();
            

        }
    }
}