using Braindo.Common;
using Braindo.Model.PatientModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PatientModule
{
    public class ConsultPatientsCommand : Command
    {
        private Patient consultPatient;
        private List<Patient> answer;

        public ConsultPatientsCommand()
        {
           
        }

        public override void execute()
        {
            DAOPatient daopatient = new DAOPatient();
            answer = daopatient.consultAllPatients();
            
        }

        public List<Patient> getAnswer()
        {
            return this.answer;
        }
    }
}