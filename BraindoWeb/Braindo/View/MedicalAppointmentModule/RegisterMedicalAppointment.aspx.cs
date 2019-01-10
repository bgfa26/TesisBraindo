using Braindo.Controller.MedicalAppointmenModule;
using Braindo.Common;
using Braindo.Model;
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
            
        }

        protected void btnRegisterAppointment_Click(object sender, EventArgs e)
        {
            String fecha = date_appointment.Value;
            DateTime dateAppointment = Convert.ToDateTime(fecha);

            String hora = hour_appointment.SelectedValue;
            DateTime hourAppointment = new DateTime();
            hourAppointment = DateTime.ParseExact(hora, "HH:mm", null);

            String reason = reason_txt.Value;

            String patientSelected = patient_List.SelectedValue;
            int id_patientSelected = Convert.ToInt32(patientSelected);

            int idPsycho = 24220210;

            Patient _patient = new Patient(id_patientSelected);
            Psychologist _psycho = new Psychologist(idPsycho);

            appointment = new Appointment(dateAppointment, hourAppointment, reason, _patient, _psycho);

            try
            {
                RegisterMedicalAppointmentCommand cmd = new RegisterMedicalAppointmentCommand(appointment);
                cmd.execute();

                appointmentRegistered = cmd.getAnswer();
                if (appointmentRegistered._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se registro la cita');window.location.href='ConsultMedicalAppointment.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se registro la cita');window.location.href='ConsultMedicalAppointment.aspx';", true);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}