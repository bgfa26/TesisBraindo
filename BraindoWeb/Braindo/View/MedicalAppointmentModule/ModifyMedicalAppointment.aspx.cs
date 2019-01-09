using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Common;
using Braindo.Model;
using Braindo.Controller.MedicalAppointmenModule;

namespace Braindo.View.MedicalAppointmentModule
{
    public partial class ModifyMedicalAppointment : System.Web.UI.Page
    {
        private Appointment appointmentModified;
        private Appointment appointment;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModifyAppointment_Click(object sender, EventArgs e)
        {
            String fecha = date_appointment.Value;
            DateTime dateAppointment = Convert.ToDateTime(fecha);

            String hora = hour_appointment.SelectedValue;
            DateTime hourAppointment = new DateTime();
            hourAppointment = DateTime.ParseExact(hora, "H:m", null);

            String reason = reason_txt.Value;

            int idExam = 3;

            appointment = new Appointment(idExam, dateAppointment, hourAppointment, reason);
            try
            {
                ModifyMedicalAppointmentCommand cmd = new ModifyMedicalAppointmentCommand(appointment);
                cmd.execute();

                appointmentModified = cmd.getAnswer();
                if (appointmentModified._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    String myStringVariable = "Se Modifico";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    String myStringVariable = "No se Modifico";
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