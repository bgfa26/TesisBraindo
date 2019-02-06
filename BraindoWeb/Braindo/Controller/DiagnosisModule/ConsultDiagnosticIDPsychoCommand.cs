using Braindo.Common;
using Braindo.Model.DiagnosisModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.DiagnosisModule
{
    public class ConsultDiagnosticIDPsychoCommand : Command
    {
        private List<Diagnostic> answer;
        private Diagnostic consultDiagnosticIDPsycho;

        public ConsultDiagnosticIDPsychoCommand(Diagnostic _consultDiagnosticIDPsycho)
        {
            this.consultDiagnosticIDPsycho = _consultDiagnosticIDPsycho;
        }

        public override void execute()
        {
            DAODiagnosis daodiagnosis = new DAODiagnosis();
            answer = daodiagnosis.consultDiagnosticIDPsycho(consultDiagnosticIDPsycho);
        }

        public List<Diagnostic> getAnswer()
        {
            return this.answer;
        }
    }
}