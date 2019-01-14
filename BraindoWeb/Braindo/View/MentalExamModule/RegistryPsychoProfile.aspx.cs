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

            if (!Page.IsPostBack)
            {
                String idAppointment = Request.QueryString["appointmentID"];

                int idInt = Convert.ToInt32(idAppointment);

                if (idInt != 0)
                {
                    AppointmentList_Tittle.Visible = false;
                    patient_List.Visible = false;
                }
            }
        }

        protected void btnRegisterPsychoProfile_Click(object sender, EventArgs e)
        {
            String behavior = behavior_txt.Value;
            String attitude = attitude_txt.Value;
            String alertness = alertness_txt.Value;
            String awareness = awareness_txt.Value;
            String mood = mood_txt.Value;
            String language = language_txt.Value;
            String thought = thought_txt.Value;

            String idExamString = Request.QueryString["appointmentID"];

            int idExam = Convert.ToInt32(idExamString);

            appointment = new Appointment(idExam);

            MentalExam mentalExamRegister = new MentalExam(behavior, attitude, alertness, awareness, mood, language, thought, appointment);

            try
            {
                RegisterMentalExamCommand cmd = new RegisterMentalExamCommand(mentalExamRegister);

                cmd.execute();

                mentalExamRegistered = cmd.getAnswer();
                if (mentalExamRegistered._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se Registro el examen exitosamente');window.location.href='../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se Registro');window.location.href='../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';", true);

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}