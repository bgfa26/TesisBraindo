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
    public partial class ConsultPatients : System.Web.UI.Page
    {

        private Patient patient;
        private Patient patientConsulted;
        private List<Patient> patientList;

        protected void Page_Load(object sender, EventArgs e)
        {

            int id = 24220210;

            patient = new Patient(id);

            ConsultPatientInformationCommand cmd = new ConsultPatientInformationCommand(patient);

            DeletePatientCommand cmd2 = new DeletePatientCommand(patient);

            ConsultPatientsCommand cmd3 = new ConsultPatientsCommand();

            try
            {
                cmd3.execute();
                patientList = cmd3.getAnswer();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}