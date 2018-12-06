using Braindo.Common;
using Braindo.Model.DiagnosisModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.DiagnosisModule
{
    public class RegisterDiagnosticCommand : Command
    {
        private Diagnostic registerDiagnostic;
        private Diagnostic answer;

        public RegisterDiagnosticCommand(Diagnostic _registerDiagnostic)
        {
            this.registerDiagnostic = _registerDiagnostic;
        }

        public override void execute()
        {
            DAODiagnosis daodiagnosis = new DAODiagnosis();
            answer = daodiagnosis.registerDiagnostic(registerDiagnostic);
        }

        public Diagnostic getAnswer()
        {
            return this.answer;
        }
    }
}