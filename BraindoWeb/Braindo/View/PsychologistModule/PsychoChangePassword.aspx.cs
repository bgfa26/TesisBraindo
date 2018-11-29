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


        protected void Page_Load(object sender, EventArgs e)
        {

            int id = 20678868;
            String password = "master93";

            psycho = new Psychologist(id, password);

            ChangePasswordCommand cmd = new ChangePasswordCommand(psycho);

            try
            {
                cmd.execute();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}