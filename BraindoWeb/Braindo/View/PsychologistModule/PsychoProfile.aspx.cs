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
        protected void Page_Load(object sender, EventArgs e)
        {
            cedula_txt.Value = "";
            matricula_txt.Value = "";
            nombreCompleto_txt.Value = "";
            fechaNac_txt.Value = "";
            correo_txt.Value = "";

        }
    }
}