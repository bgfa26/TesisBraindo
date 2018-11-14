using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class ConsultPsychoInformationCommand : Command
    {

        private Psychologist consultPsycho;

        public ConsultPsychoInformationCommand(Psychologist _consultPsycho)
        {
            this.consultPsycho = _consultPsycho;
        }

        public override void execute()
        {
            throw new NotImplementedException();
        }
    }
}