using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.PsychologistModule
{
    public partial class PsychoProfile : System.Web.UI.Page
    {

        private Psychologist psycho;

        protected void Page_Load(object sender, EventArgs e)
        {
            cedula_txt.Value = "20678868";
            matricula_txt.Value = "20678868-2702";
            nombreCompleto_txt.Value = "Ronald Efrain Navas Hernandez";
            fechaNac_txt.Value = "27/02/1993";
            correo_txt.Value = "rn2702@gmail.com";

            int id = 20678868;

            psycho = new Psychologist(id);

            ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psycho);

        }
    }
}