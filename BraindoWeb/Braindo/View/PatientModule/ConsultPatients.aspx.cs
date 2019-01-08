using Braindo.Controller.PatientModule;
using Braindo.Common;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.PatientModule
{
    public partial class ConsultPatients : System.Web.UI.Page
    {

        private Patient patient;
        private Patient patientConsulted;
        private Patient patientDeleted;
        private List<Patient> patientList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                /*int id = 24220210;

                patient = new Patient(id);*/


                ConsultPatientsCommand cmd = new ConsultPatientsCommand();

                try
                {
                    cmd.execute();
                    patientList = cmd.getAnswer();

                    listPatients.DataSource = patientList;
                    listPatients.DataBind();

                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
        }

        protected void actionPatient_Command(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                Label id = (Label)listPatients.Items[e.Item.ItemIndex].FindControl("idPatient");

                String idString = id.Text;

                int idInt = Convert.ToInt32(idString);

                Patient patientDelete = new Patient(idInt);

                DeletePatientCommand cmd = new DeletePatientCommand(patientDelete);

                try
                {
                    cmd.execute();
                    patientDeleted = cmd.getAnswer();
                    if (patientDeleted._Error == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        /*Response.Redirect(Request.RawUrl);
   
                        string script = "alert(\"Se Elimino\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);*/

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se elimino exitosamente');window.location.href='ConsultPatients.aspx';", true);

                    }

                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR, no se elimino');window.location.href='ConsultPatients.aspx';", true);

                    throw ex;
                }
            }
            else if (e.CommandName == "modifyInfo")
            {
                Label id = (Label)listPatients.Items[e.Item.ItemIndex].FindControl("idPatient");

                String idString = id.Text;

                Response.Redirect("EditPatientInformation.aspx?patiendID=" + idString);
            }
        }
    }
}