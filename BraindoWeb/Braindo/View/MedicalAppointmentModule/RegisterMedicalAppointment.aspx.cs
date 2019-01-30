using Braindo.Controller.MedicalAppointmenModule;
using Braindo.Controller.PatientModule;
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
        private List<Patient> listOfPatientsConsulted;
        private Appointment appointmentRegistered;
        private Appointment appointment;
        private Appointment dateHourAppointment;

        int resp = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["USER_ID"] == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicie sesion para ver esta ventana');window.location.href='../IndexModule/LoginTest.aspx';", true);
                }
                else
                {
                    ConsultPatientsCommand cmd = new ConsultPatientsCommand();

                    try
                    {
                        cmd.execute();
                        listOfPatientsConsulted = cmd.getAnswer();

                        foreach (Patient _patient in listOfPatientsConsulted)
                        {
                            int idPatient = _patient._ID;
                            String patientName = _patient._Name;
                            String patientSurname = _patient._Surname;


                            patient_List.Items.Add(idPatient + " " + patientName + " " + patientSurname);
                        }
                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
            }
        }

        protected void btnRegisterAppointment_Click(object sender, EventArgs e)
        {

            if (date_appointment.Value.Equals("") || hour_appointment.SelectedValue.Equals("") || reasonTXT.Text.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String dateString = date_appointment.Value;
                DateTime dateAppointmentConsult = Convert.ToDateTime(dateString);

                String hourString = hour_appointment.SelectedValue;
                DateTime hourAppointmentConsult = new DateTime();
                hourAppointmentConsult = DateTime.ParseExact(hourString, "HH:mm", null);

                Appointment datehourConsult = new Appointment(dateAppointmentConsult, hourAppointmentConsult);

                MedicalAppointmentExistCommand cmdConsult = new MedicalAppointmentExistCommand(datehourConsult);

                try
                {
                    cmdConsult.execute();
                    dateHourAppointment = cmdConsult.getAnswer();

                    resp = dateHourAppointment._Error;

                    if (resp == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        string script = "alert(\"ERROR! La fecha y hora esta registrada en otra cita\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);
                    }
                    else
                    {
                        String fecha = date_appointment.Value;
                        DateTime dateAppointment = Convert.ToDateTime(fecha);

                        String hora = hour_appointment.SelectedValue;
                        DateTime hourAppointment = new DateTime();
                        hourAppointment = DateTime.ParseExact(hora, "HH:mm", null);

                        String reason = reasonTXT.Text;

                        String selectItem = patient_List.SelectedItem.Text;

                        string[] Args = selectItem.Split(new char[] { ' ' });

                        String idPatientString = Args[0];

                        int id_patientSelected = Convert.ToInt32(idPatientString);

                        String idSession = Session["USER_ID"].ToString();
                        int idPsycho = Convert.ToInt32(idSession);

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
                catch (Exception ex)
                {

                    throw ex;
                }

            }  
        }
    }
}