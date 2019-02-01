using Braindo.Common;
using Braindo.Model.PsychologistModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class RegisterPsychologistCommand : Command
    {
        private Psychologist registerPsycho;
        private Psychologist answer;

        public RegisterPsychologistCommand(Psychologist _registerPsycho)
        {
            this.registerPsycho = _registerPsycho;
        }

        public override void execute()
        {
            DAOPsychologist daopsycho = new DAOPsychologist();
            answer = daopsycho.registerPsychologist(registerPsycho);
        }

        public Psychologist getAnswer()
        {
            return this.answer;
        }
    }
}