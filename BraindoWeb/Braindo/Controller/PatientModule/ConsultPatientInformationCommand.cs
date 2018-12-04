using Braindo.Common;
using Braindo.Model.PatientModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PatientModule
{
    public class ConsultPatientInformationCommand : Command
    {
        private Patient consultPatient;
        private Patient answer;

        public ConsultPatientInformationCommand(Patient _consultpatient)
        {
            this.consultPatient = _consultpatient;
        }

        public override void execute()
        {
            DAOPatient daopatient = new DAOPatient();
            answer = daopatient.consultPatient(consultPatient);
        }

        public Patient getAnswer()
        {
            return this.answer;
        }

    }
}