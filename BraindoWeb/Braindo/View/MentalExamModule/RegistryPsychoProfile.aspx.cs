using Braindo.Controller.MentalExamModule;
using Braindo.Common;
using Braindo.Model;
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
            /*String behavior = "ron2";
            String attitude = "1213";
            String alertness = "1212";
            String awareness = "13werrsf";
            String mood = "sdfgsg";
            String language = "zxzcxc";
            String thought = "kgkhjg";

            int id = 3;

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
            }*/

        }

        protected void btnModifyAppointment_Click(object sender, EventArgs e)
        {
            String behavior = behavior_txt.Value;
            String attitude = attitude_txt.Value;
            String alertness = alertness_txt.Value;
            String awareness = awareness_txt.Value;
            String mood = mood_txt.Value;
            String language = language_txt.Value;
            String thought = thought_txt.Value;

            int id = 3;

            appointment = new Appointment(id);

            MentalExam mentalExamRegister = new MentalExam(behavior, attitude, alertness, awareness, mood, language, thought, appointment);

            try
            {
                RegisterMentalExamCommand cmd = new RegisterMentalExamCommand(mentalExamRegister);

                cmd.execute();

                mentalExamRegistered = cmd.getAnswer();
                if (mentalExamRegistered._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    String myStringVariable = "Se Registro";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    String myStringVariable = "No se Registro";
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