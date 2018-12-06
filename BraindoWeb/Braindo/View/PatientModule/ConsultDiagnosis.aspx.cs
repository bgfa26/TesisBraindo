using Braindo.Controller.DiagnosisModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Braindo.View.PatientModule
{
    public partial class ConsultDiagnosis : System.Web.UI.Page
    {

        private Diagnostic diagnosis;
        private Diagnostic diagnosisRegistered;

        protected void Page_Load(object sender, EventArgs e)
        {

            String fecha = "12/02/1996";
            DateTime diagDate = DateTime.Parse(fecha);

            String answer_percentage = "90%";
            String networkAnswer = "155";

            int idPatient = 24220210;
            String emailPsycho = "dario01@gmail.com";

            Patient patientConsulted = new Patient(idPatient);
            Psychologist psychoConsulted = new Psychologist(emailPsycho);

            diagnosis = new Diagnostic(diagDate, answer_percentage, networkAnswer, patientConsulted, psychoConsulted);
            try
            {
                RegisterDiagnosticCommand cmd = new RegisterDiagnosticCommand(diagnosis);

                cmd.execute();

                diagnosisRegistered = cmd.getAnswer();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }


        }
    }
}