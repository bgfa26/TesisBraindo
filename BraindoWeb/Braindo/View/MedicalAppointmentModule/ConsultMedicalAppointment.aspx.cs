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
                int id = 24220210;

                psychologist = new Psychologist(id);

                consultAppointment = new Appointment(psychologist);

                ConsultAllMedicalAppointmentsCommand cmd = new ConsultAllMedicalAppointmentsCommand(consultAppointment);

                try
                {
                    cmd.execute();
                    consultedAppointment = cmd.getAnswer();

                    listMedicalAppointments.DataSource = consultedAppointment;
                    listMedicalAppointments.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
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
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se elimino exitosamente');window.location.href='ConsultMedicalAppointment.aspx';", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! no se elimino');window.location.href='ConsultMedicalAppointment.aspx';", true);
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

                Response.Redirect("ModifyMedicalAppointment.aspx?appointmentID=" + id);
            }

        }
    }
}