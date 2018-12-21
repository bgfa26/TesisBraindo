using Braindo.Common;
using Braindo.Model.DiagnosisModule;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.DiagnosisModule
{
    public class ConsultDiagnosticCommand : Command
    {
        private List<Diagnostic> answer;
        private Diagnostic consultDiagnostic;

        public ConsultDiagnosticCommand (Diagnostic _consultDiagnostic)
        {
            this.consultDiagnostic = _consultDiagnostic;
        }

        public override void execute()
        {
            DAODiagnosis daodiagnosis = new DAODiagnosis();
            answer = daodiagnosis.consultDiagnostic(consultDiagnostic);
        }

        public List<Diagnostic> getAnswer()
        {
            return this.answer;
        }
    }
}