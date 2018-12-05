using Braindo.Common;
using Braindo.Model.DiagnosisModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.DiagnosisModule
{
    public class ConsultDiagnosticDetailedCommand : Command
    {
        private Diagnostic consultDiagnostic;
        private Diagnostic answer;

        public ConsultDiagnosticDetailedCommand(Diagnostic _consultDiagnostic)
        {
            this.consultDiagnostic = _consultDiagnostic;
        }

        public override void execute()
        {
            DAODiagnosis daodiagnosis = new DAODiagnosis();
            answer = daodiagnosis.consultDiagnosticDetailed(consultDiagnostic);
        }

        public Diagnostic getAnswer()
        {
            return this.answer;
        }
    }
}