using Braindo.Common;
using Braindo.Model.PsychologistModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class ConsultPsychoInformationCommand : Command
    {

        private Psychologist consultPsycho;
        private Psychologist answer;

        public ConsultPsychoInformationCommand(Psychologist _consultPsycho)
        {
            this.consultPsycho = _consultPsycho;
        }

        public override void execute()
        {
            DAOPsychologist daopsycho = new DAOPsychologist();
            answer = daopsycho.consultIInformation(consultPsycho);
        }

        public Psychologist getAnswer()
        {
            return this.answer;
        }
    }
}