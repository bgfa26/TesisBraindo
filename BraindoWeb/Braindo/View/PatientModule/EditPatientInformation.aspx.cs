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
    public partial class EditPatientInformation : System.Web.UI.Page
    {
        private Patient consult;
        private Patient consulted;
        private Patient patient;
        private Patient patientModified;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String idPatient = Request.QueryString["patiendID"];

                int idInt = Convert.ToInt32(idPatient);

                consult = new Patient(idInt);

                ConsultPatientInformationCommand command = new ConsultPatientInformationCommand(consult);

                try
                {
                    command.execute();
                    consulted = command.getAnswer();

                    name_txt.Value = consulted._Name;
                    surname_txt.Value = consulted._Surname;
                    age_txt.Value = consulted._Age.ToString();
                    career_txt.Value = consulted._Career;
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            } 
        }

        protected void btnChangeData_Click(object sender, EventArgs e)
        {

            if (name_txt.Value.Equals("") || surname_txt.Value.Equals("") || age_txt.Value.Equals("") || career_txt.Value.Equals("") || state1.SelectedValue.Equals("") || municipality1.SelectedValue.Equals("") || parish1.SelectedValue.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String idPatient = Request.QueryString["patiendID"];

                int id = Convert.ToInt32(idPatient);
                String name = name_txt.Value;
                String surname = surname_txt.Value;
                int age = Convert.ToInt32(age_txt.Value);
                String career = career_txt.Value;
                String state = state1.SelectedValue;
                String municipality = municipality1.SelectedValue;
                String parish = parish1.SelectedValue;

                patient = new Patient(id, name, surname, age, career, state, municipality, parish);

                ModifyPatientInformation cmd = new ModifyPatientInformation(patient);
                try
                {
                    cmd.execute();
                    patientModified = cmd.getAnswer();
                    if (patientModified._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        /*String myStringVariable = "Se Cambio";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);*/

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Los datos fueron cambiados exitosamente');window.location.href='ConsultPatients.aspx';", true);

                    }
                    else
                    {
                        /*String myStringVariable = "No se Cambio";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);*/

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR, no se realizaron los cambios');window.location.href='ConsultPatients.aspx';", true);
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