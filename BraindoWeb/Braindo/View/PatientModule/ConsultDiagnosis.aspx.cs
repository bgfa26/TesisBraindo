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
        private Patient patient;
        private Psychologist psycho;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                String idPatient = Request.QueryString["patiendID"];

                int idPatientInt = Convert.ToInt32(idPatient);

                int idPsycho = 24220210;

                patient = new Patient(idPatientInt);
                psycho = new Psychologist(idPsycho);

                diagnosis = new Diagnostic(patient, psycho);

                ConsultDiagnosticCommand cmd = new ConsultDiagnosticCommand(diagnosis);

                try
                {
                    cmd.execute();
                    consultedDiagnostic = cmd.getAnswer();
                    
                    listDiagnostics.DataSource = consultedDiagnostic;
                    listDiagnostics.DataBind();

                }
                catch (Exception ex)
                {
                    
                    throw ex;
                }
            }
        }
    }
}