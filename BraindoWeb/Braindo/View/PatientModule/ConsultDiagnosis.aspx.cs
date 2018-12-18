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
            /*Para el Registro*/
            String fecha = "13/02/1996";
            DateTime diagDate = Convert.ToDateTime(fecha);

            String answer_percentage = "50%";
            String networkAnswer = "154";

            int idPatient = 24773340;
            String emailPsycho = "b@gmail.com";

            Patient patientConsulted = new Patient(idPatient);
            Psychologist psychoConsulted = new Psychologist(emailPsycho);

            /*Para Eliminar y Consultar*/

            int id = 5;
            diagnosis = new Diagnostic(id);
            // = new Diagnostic(diagDate, answer_percentage, networkAnswer, patientConsulted, psychoConsulted);
            try
            {
                //RegisterDiagnosticCommand cmd = new RegisterDiagnosticCommand(diagnosis);
                //DeleteDiagnosticCommand cmd = new DeleteDiagnosticCommand(diagnosis);
                ConsultDiagnosticDetailedCommand cmd = new ConsultDiagnosticDetailedCommand(diagnosis);

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