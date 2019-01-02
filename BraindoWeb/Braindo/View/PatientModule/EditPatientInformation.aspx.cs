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

        private Patient patient;
        private Patient patientModified;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangeData_Click(object sender, EventArgs e)
        {
            int id = 24773340;
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
                    String myStringVariable = "Se Cambio";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    String myStringVariable = "No se Cambio";
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