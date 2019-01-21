using Braindo.Controller.MentalExamModule;
using Braindo.Controller.MedicalAppointmenModule;
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
        private Appointment consultRegistered;
        private List<Appointment> consultedRegistered;

        private Psychologist psycho;

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
                else
                {
                    AppointmentList_Tittle.Visible = true;
                    patient_List.Visible = true;

                    int idPsycho = 24220210;

                    psycho = new Psychologist(idPsycho);

                    consultRegistered = new Appointment(psycho);

                    try
                    {
                        ConsultRegisteredAppointmentsCommand cmd = new ConsultRegisteredAppointmentsCommand(consultRegistered);

                        cmd.execute();

                        consultedRegistered = cmd.getAnswer();

                        if (consultedRegistered.Count() != 0)
                        {
                            foreach (Appointment _appointment in consultedRegistered)
                            {

                                int idApp = _appointment._ID;

                                DateTime dateAppointment = _appointment._Date;
                                DateTime hourAppointment = _appointment._Hour;
                                String dateApp = _appointment._DateString;
                                String hourApp = _appointment._HourString;

                                int idPatient = _appointment._Patient._ID;
                                String PatientName = _appointment._Patient._Name;
                                String PatientSurname = _appointment._Patient._Surname;
                                String Reason = _appointment._Reason;

                                patient_List.Items.Add(dateApp + " " + hourApp + " " + idPatient + " " + PatientName + " " + PatientSurname + " " + Reason);

                            }
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No existen citas sin examenes registrados');window.location.href='../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        
                        throw ex;
                    }
                }
            }
        }

        protected void btnRegisterPsychoProfile_Click(object sender, EventArgs e)
        {
            if (behavior_txt.Value.Equals("") || attitude_txt.Value.Equals("") || alertness_txt.Value.Equals("") || awareness_txt.Value.Equals("") || mood_txt.Value.Equals("") || language_txt.Value.Equals("") || thought_txt.Value.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String idAppointment = Request.QueryString["appointmentID"];

                int idInt = Convert.ToInt32(idAppointment);

                if (idInt != 0)
                {
                    String behavior = behavior_txt.Value;
                    String attitude = attitude_txt.Value;
                    String alertness = alertness_txt.Value;
                    String awareness = awareness_txt.Value;
                    String mood = mood_txt.Value;
                    String language = language_txt.Value;
                    String thought = thought_txt.Value;

                    appointment = new Appointment(idInt);

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
                else
                {
                    /*INICIO - Proceso para obtener el ID de la cita*/
                    String selectItem = patient_List.SelectedItem.Text;

                    string[] Args = selectItem.Split(new char[] { ' ' });

                    String dateApp = Args[0];
                    String hourApp = Args[1];
                    String idPatientString = Args[4];

                        if (hourApp == "01:00")
                        {
                            hourApp = "13:00";
                        }
                        else if (hourApp == "02:00")
                        {
                            hourApp = "14:00";
                        }
                        else if (hourApp == "03:00")
                        {
                            hourApp = "15:00";
                        }
                        else if (hourApp == "04:00")
                        {
                            hourApp = "16:00";
                        }
                        else if (hourApp == "05:00")
                        {
                            hourApp = "17:00";
                        }

                    DateTime dateAppointment = Convert.ToDateTime(dateApp);
                    DateTime hourAppointment = new DateTime();
                    hourAppointment = DateTime.ParseExact(hourApp, "HH:mm", null);

                    int Patient = Convert.ToInt32(idPatientString);
                    int Psycho = 24220210;
                    int appointmentIDConsulted;

                    Patient consultPatient = new Patient(Patient);
                    Psychologist consultPsychologist = new Psychologist(Psycho);

                    Appointment checkAppointmentID = new Appointment(dateAppointment, hourAppointment, consultPatient, consultPsychologist);

                    try
                    {
                        ConsultMedicalAppointmentCommand cmd = new ConsultMedicalAppointmentCommand(checkAppointmentID);

                        cmd.execute();

                        Appointment _appointment = cmd.getAnswer();

                        appointmentIDConsulted = _appointment._ID;

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }

                    /*FIN - Proceso para obtener el ID de la cita*/

                    if (appointmentIDConsulted != 0)
                    {
                        String behavior = behavior_txt.Value;
                        String attitude = attitude_txt.Value;
                        String alertness = alertness_txt.Value;
                        String awareness = awareness_txt.Value;
                        String mood = mood_txt.Value;
                        String language = language_txt.Value;
                        String thought = thought_txt.Value;

                        appointment = new Appointment(appointmentIDConsulted);

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
        }
    }
}