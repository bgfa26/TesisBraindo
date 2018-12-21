using Braindo.Controller.MedicalAppointmenModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.MedicalAppointmentModule
{
    public partial class RegisterMedicalAppointment : System.Web.UI.Page
    {
        private Appointment appointmentRegistered;
        private Appointment appointment;

        protected void Page_Load(object sender, EventArgs e)
        {
            String fecha = "21/12/2018";
            DateTime dateAppointment = Convert.ToDateTime(fecha);

            String hora = "21:00";
            DateTime hourAppointment = new DateTime();
            hourAppointment = DateTime.ParseExact(hora, "H:m", null);

            String reason = "blobloblo";

            int idAppointment = 1;
            int idPatient = 24773340;
            int idPsycho = 24220210;
            int idExam = 1;

            Patient _patient = new Patient(idPatient);
            Psychologist _psycho = new Psychologist(idPsycho);
            MentalExam _exam = new MentalExam(idExam);

            //appointment = new Appointment(dateAppointment, hourAppointment, reason, _patient, _psycho, _exam);
            appointment = new Appointment(idAppointment);

            try
            {
                //RegisterMedicalAppointmentCommand cmd = new RegisterMedicalAppointmentCommand(appointment);
                ConsultDetailedMedicalAppointment cmd = new ConsultDetailedMedicalAppointment(appointment);
                cmd.execute();

                appointmentRegistered = cmd.getAnswer();

                String hour = appointmentRegistered._Hour.ToShortTimeString();
                String razon = appointmentRegistered._Reason;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}