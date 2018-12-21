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
        private List<Diagnostic> consultedDiagnostic;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Para el Registro*/
            String fecha = "12/20/2018";
            DateTime diagDate = Convert.ToDateTime(fecha);

            String answer_percentage = "70%";
            String networkAnswer = "254";

            int idPatient = 24773340;
            int idPsycho = 24220210;
            String emailPsycho = "b@gmail.com";

            Patient patientConsulted = new Patient(idPatient);
            Psychologist psychoConsulted = new Psychologist(emailPsycho);
            Psychologist psychoExample = new Psychologist(idPsycho);

            /*Para Eliminar y Consultar*/

            int id = 5;
            diagnosis = new Diagnostic(patientConsulted, psychoExample);
            // = new Diagnostic(diagDate, answer_percentage, networkAnswer, patientConsulted, psychoConsulted);
            try
            {
                //RegisterDiagnosticCommand cmd = new RegisterDiagnosticCommand(diagnosis);
                //DeleteDiagnosticCommand cmd = new DeleteDiagnosticCommand(diagnosis);
                //ConsultDiagnosticDetailedCommand cmd = new ConsultDiagnosticDetailedCommand(diagnosis);
                ConsultDiagnosticCommand cmd = new ConsultDiagnosticCommand(diagnosis);

                cmd.execute();

                consultedDiagnostic = cmd.getAnswer();
                foreach(Diagnostic d in consultedDiagnostic){

                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }


        }
    }
}