using Braindo.Common;
using Braindo.Model;
using Braindo.Controller.MedicalAppointmenModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.MedicalAppointmentModule
{
    public partial class ModifyMedicalAppointment : System.Web.UI.Page
    {
        private Appointment appointmentConsult;
        private Appointment appointmentConsulted;
        private Appointment appointmentModified;
        private Appointment appointment;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String idAppointment = Request.QueryString["appointmentID"];

                int idInt = Convert.ToInt32(idAppointment);

                appointmentConsult = new Appointment(idInt);

                ConsultDetailedMedicalAppointmentCommand cmd = new ConsultDetailedMedicalAppointmentCommand(appointmentConsult);

                try
                {
                    cmd.execute();
                    appointmentConsulted = cmd.getAnswer();

                    DateTime dateAppointment = appointmentConsulted._Date;

                    date_appointment_txt.Value = dateAppointment.ToString("yyyy-MM-dd");

                    DateTime hourAppointment = appointmentConsulted._Hour;

                    hour_appointment.SelectedValue = hourAppointment.ToString("HH:mm");

                    reason_txt.Value = appointmentConsulted._Reason;

                }
                catch (Exception ex)
                {
                    
                    throw ex;
                }
            }
        }

        protected void btnModifyAppointment_Click(object sender, EventArgs e)
        {
            String fecha = date_appointment_txt.Value;
            DateTime dateAppointment = Convert.ToDateTime(fecha);

            String hora = hour_appointment.SelectedValue;
            DateTime hourAppointment = new DateTime();
            hourAppointment = DateTime.ParseExact(hora, "HH:mm", null);

            String reason = reason_txt.Value;

            String idAppointment = Request.QueryString["appointmentID"];

            int idExam = Convert.ToInt32(idAppointment);

            appointment = new Appointment(idExam, dateAppointment, hourAppointment, reason);
            try
            {
                ModifyMedicalAppointmentCommand cmd = new ModifyMedicalAppointmentCommand(appointment);
                cmd.execute();
                appointmentModified = cmd.getAnswer();

                if (appointmentModified._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Cambios realizados');window.location.href='ConsultMedicalAppointment.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se realzaron los cambios');window.location.href='ConsultMedicalAppointment.aspx';", true);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}