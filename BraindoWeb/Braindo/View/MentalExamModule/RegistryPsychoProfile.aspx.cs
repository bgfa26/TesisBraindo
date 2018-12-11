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
    public partial class RegistryPsychoProfile : System.Web.UI.Page
    {
        private MentalExam mentalExamRegistered;
        private Appointment appointment;

        protected void Page_Load(object sender, EventArgs e)
        {
            String behavior = "ron2";
            String attitude = "1213";
            String alertness = "1212";
            String awareness = "13werrsf";
            String mood = "sdfgsg";
            String language = "zxzcxc";
            String thought = "kgkhjg";

            int id = 4;

            appointment = new Appointment(id);

            MentalExam mentalExamRegister = new MentalExam(behavior, attitude, alertness, awareness, mood, language, thought, appointment);

            try
            {
                RegisterMentalExamCommand cmd = new RegisterMentalExamCommand(mentalExamRegister);

                cmd.execute();

                mentalExamRegistered = cmd.getAnswer();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}