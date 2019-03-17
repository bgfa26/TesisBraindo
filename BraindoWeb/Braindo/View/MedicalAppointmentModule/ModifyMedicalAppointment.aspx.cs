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
        private Appointment dateHourAppointment;

        int resp = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["USER_ID"] == null)
                {
                    Response.Redirect("~/View/Home/index.aspx", false);
                }
                else
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

                        reasonTXT.Text = appointmentConsulted._Reason;

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }     
            }
        }

        protected void btnModifyAppointment_Click(object sender, EventArgs e)
        {

            if (date_appointment_txt.Value.Equals("") || hour_appointment.SelectedValue.Equals("") || reasonTXT.Text.Equals(""))
            {
                string script = "BootAlert('No debe dejar campos vacíos');";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {

                /*consultar cita*/
                String AppointmentInfoID = Request.QueryString["appointmentID"];

                int idInt = Convert.ToInt32(AppointmentInfoID);

                appointmentConsult = new Appointment(idInt);

                ConsultDetailedMedicalAppointmentCommand cmdCheckInfo = new ConsultDetailedMedicalAppointmentCommand(appointmentConsult);

                /*csonultar disponibilidad de fecha y hora*/
                String dateString = date_appointment_txt.Value;
                DateTime dateAppointmentConsult = Convert.ToDateTime(dateString);

                String hourString = hour_appointment.SelectedValue;
                DateTime hourAppointmentConsult = new DateTime();
                hourAppointmentConsult = DateTime.ParseExact(hourString, "HH:mm", null);

                Appointment datehourConsult = new Appointment(dateAppointmentConsult, hourAppointmentConsult);

                MedicalAppointmentExistCommand cmdConsult = new MedicalAppointmentExistCommand(datehourConsult);

                try
                {
                    /*comando para consultar datos de la cita*/
                    cmdCheckInfo.execute();
                    appointmentConsulted = cmdCheckInfo.getAnswer();

                    DateTime dateAppointmentConsulted = appointmentConsulted._Date;
                    String dateAppointmentConsultedString = dateAppointmentConsulted.ToString("yyyy-MM-dd");

                    DateTime hourAppointmentConsulted = appointmentConsulted._Hour;
                    String hourAppointmentConsultedString = hourAppointmentConsulted.ToString("HH:mm");

                    /*comando para consultar fecha y hora disponible*/
                    cmdConsult.execute();
                    dateHourAppointment = cmdConsult.getAnswer();

                    resp = dateHourAppointment._Error;

                    if ((date_appointment_txt.Value == dateAppointmentConsultedString) && (hour_appointment.SelectedValue == hourAppointmentConsultedString))
                    {
                        String fecha = date_appointment_txt.Value;
                        DateTime dateAppointment = Convert.ToDateTime(fecha);

                        String hora = hour_appointment.SelectedValue;
                        DateTime hourAppointment = new DateTime();
                        hourAppointment = DateTime.ParseExact(hora, "HH:mm", null);

                        String reason = reasonTXT.Text;

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
                                Response.Redirect("ConsultMedicalAppointment.aspx");
                                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Cambios realizados');window.location.href='ConsultMedicalAppointment.aspx';", true);
                            }
                            else
                            {
                                string script = "BootAlertNoRegistration('No se realizaron los cambios');";
                                ScriptManager.RegisterStartupScript(this, GetType(),
                                                        "ServerControlScript", script, true);
                                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se realizaron los cambios');window.location.href='ConsultMedicalAppointment.aspx';", true);
                            }

                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }
                    }
                    else if (resp == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        string script = "BootAlert('La fecha y hora esta registrada en otra cita');";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);
                    }
                    else
                    {
                        String fecha = date_appointment_txt.Value;
                        DateTime dateAppointment = Convert.ToDateTime(fecha);

                        String hora = hour_appointment.SelectedValue;
                        DateTime hourAppointment = new DateTime();
                        hourAppointment = DateTime.ParseExact(hora, "HH:mm", null);

                        String reason = reasonTXT.Text;

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
                                Response.Redirect("ConsultMedicalAppointment.aspx");
                                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Cambios realizados');window.location.href='ConsultMedicalAppointment.aspx';", true);
                            }
                            else
                            {
                                string script = "BootAlertNoRegistration('No se realizaron los cambios');";
                                ScriptManager.RegisterStartupScript(this, GetType(),
                                                        "ServerControlScript", script, true);
                                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se realizaron los cambios');window.location.href='ConsultMedicalAppointment.aspx';", true);
                            }

                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }

                    }
                }
                catch (Exception ex)
                {    
                    throw ex;
                }
            }
        }
    }
}