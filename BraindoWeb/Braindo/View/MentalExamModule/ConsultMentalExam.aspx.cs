using Braindo.Controller.MentalExamModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.MentalExamModule
{
    public partial class ConsultMentalExam : System.Web.UI.Page
    {
        private MentalExam mentalExam;
        private MentalExam consultedMentalExam;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 24220210;

            mentalExam = new MentalExam(id);

            ConsultMentalExamCommand cmd = new ConsultMentalExamCommand(mentalExam);

            try
            {
                cmd.execute();
                consultedMentalExam = cmd.getAnswer();

                String probando = consultedMentalExam._Behavior;
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
        }
    }
}