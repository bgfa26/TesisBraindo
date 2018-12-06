using Braindo.Controller.PatientModule;
using Braindo.Common;
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
        private Patient patientConsulted;

        int id = 24220210;
        String name = "Gilvania";
        String surname = "Aristigueta";
        int age = 23;
        String career = "Ingenieria Civil";
        String state = "Miranda";
        String municipality = "Brion";
        String parish = "Higuerote";


        protected void Page_Load(object sender, EventArgs e)
        {
            patient = new Patient(id, name, surname, age, career, state, municipality, parish);

            ModifyPatientInformation cmd = new ModifyPatientInformation(patient);
            try
            {
                cmd.execute();
                patientConsulted = cmd.getAnswer();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}