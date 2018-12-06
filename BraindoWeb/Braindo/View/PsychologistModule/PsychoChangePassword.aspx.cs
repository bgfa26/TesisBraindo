using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Controller.PsychologistModule;
using Braindo.Common;

namespace Braindo.View.PsychologistModule
{
    public partial class PsychoChangePassword : System.Web.UI.Page
    {

        private Psychologist psycho;
        private Psychologist psychoChanged;


        protected void Page_Load(object sender, EventArgs e)
        {

            int id = 24220210;
            String password = "dario02";

            psycho = new Psychologist(id, password);

            ChangePasswordCommand cmd = new ChangePasswordCommand(psycho);

            try
            {
                cmd.execute();
                psychoChanged = cmd.getAnswer();
                String myStringVariable = "Probando";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}