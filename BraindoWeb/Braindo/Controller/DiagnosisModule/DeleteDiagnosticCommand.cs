using Braindo.Common;
using Braindo.Model.DiagnosisModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.DiagnosisModule
{
    public class DeleteDiagnosticCommand : Command
    {
        private Diagnostic deleteDiagnostic;
        private Diagnostic answer;

        public DeleteDiagnosticCommand(Diagnostic _deleteDiagnostic)
        {
            this.deleteDiagnostic = _deleteDiagnostic;
        }

        public override void execute()
        {
            DAODiagnosis daodiagnosis = new DAODiagnosis();
            answer = daodiagnosis.deleteDiagnostic(deleteDiagnostic);
        }

        public Diagnostic getAnswer()
        {
            return this.answer;
        }
    }
}