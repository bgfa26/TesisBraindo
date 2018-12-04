using Braindo.Common;
using Braindo.Model.PatientModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PatientModule
{
    public class DeletePatientCommand : Command
    {

        private Patient deletepatient;
        private Patient answer;

        public DeletePatientCommand(Patient _deletepatient)
        {
            this.deletepatient = _deletepatient;
        }

        public override void execute()
        {
            DAOPatient daopatient = new DAOPatient();
            answer = daopatient.deletePatient(deletepatient);
        }

        public Patient getAnswer()
        {
            return this.answer;
        }
    }
}