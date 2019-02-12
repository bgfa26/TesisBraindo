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
    public partial class ConsultMedicalAppointment : System.Web.UI.Page
    {
        private Psychologist psychologist;
        private Appointment consultAppointment;
        private Appointment deleteAppointment;
        private Appointment deletedAppointment;
        private List<Appointment> consultedAppointment;
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
                    String idSession = Session["USER_ID"].ToString();
                    int id = Convert.ToInt32(idSession);

                    psychologist = new Psychologist(id);

                    consultAppointment = new Appointment(psychologist);

                    ConsultAllMedicalAppointmentsCommand cmd = new ConsultAllMedicalAppointmentsCommand(consultAppointment);

                    try
                    {
                        cmd.execute();
                        consultedAppointment = cmd.getAnswer();

                        listMedicalAppointments.DataSource = consultedAppointment;
                        listMedicalAppointments.DataBind();

                        if (listMedicalAppointments.Items.Count < 1)
                        {
                            listMedicalAppointments.Visible = false;
                            NoRecord.Visible = true;
                        }

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }

                }
            }
        }

        protected void actionAppointment_Command(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "delete")
            {
                String id = e.CommandArgument.ToString();

                int idInt = Convert.ToInt32(id);

                deleteAppointment = new Appointment(idInt);

                DeleteMedicalAppointmentCommand cmd = new DeleteMedicalAppointmentCommand(deleteAppointment);

                try
                {
                    cmd.execute();
                    deletedAppointment = cmd.getAnswer();
                    if (deletedAppointment._Error == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se eliminó exitosamente');window.location.href='ConsultMedicalAppointment.aspx';", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! no pudo eliminarse la cita');window.location.href='ConsultMedicalAppointment.aspx';", true);
                    }

                }
                catch (Exception ex)
                {
                    
                    throw ex;
                }
            }
            else if (e.CommandName == "modifyInfo")
            {
                String id = e.CommandArgument.ToString();

                int idInt = Convert.ToInt32(id);

                Response.Redirect("ModifyMedicalAppointment.aspx?appointmentID=" + id);

            }
            else if (e.CommandName == "viewExam")
            {
                String id = e.CommandArgument.ToString();

                int idInt = Convert.ToInt32(id);

                if (idInt != 0)
                {
                    Response.Redirect("../MentalExamModule/ConsultMentalExam.aspx?mentalExamID=" + id);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! Esta cita no tiene examen mental registrado');", true);
                }
            }
            else if (e.CommandName == "addExam")
            {

                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                String idAppointment = commandArgs[0];
                String idExam = commandArgs[1];
                String idPatient = commandArgs[2];

                int idInt = Convert.ToInt32(idExam);

                if (idInt == 0)
                {
                    Response.Redirect("../MentalExamModule/RegistryPsychoProfile.aspx?appointmentID=" + idAppointment);
                }
                else
                {

                    string script = "alert(\"ERROR! Esta cita ya tiene un examen mental registrado\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                            "ServerControlScript", script, true);

                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! Esta cita ya tiene un examen mental registrado');window.location.href='../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';", true);
                }      
            }

        }
    }
}