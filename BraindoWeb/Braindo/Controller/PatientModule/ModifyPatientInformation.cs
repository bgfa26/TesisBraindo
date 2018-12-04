using Braindo.Common;
using Braindo.Model.PatientModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PatientModule
{
    public class ModifyPatientInformation : Command
    {
        private Patient modifyPatient;
        private Patient answer;

        public ModifyPatientInformation(Patient _modifypatient)
        {
            this.modifyPatient = _modifypatient;
        }

        public override void execute()
        {
            DAOPatient daopatient = new DAOPatient();
            answer = daopatient.modifyPatient(modifyPatient);
        }

        public Patient getAnswer()
        {
            return this.answer;
        }
    }
}