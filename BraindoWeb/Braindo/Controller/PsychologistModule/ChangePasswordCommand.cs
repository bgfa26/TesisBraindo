using Braindo.Common;
using Braindo.Model.PsychologistModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class ChangePasswordCommand : Command
    {

        private Psychologist changePsycho;
        private Psychologist answer;

        public ChangePasswordCommand(Psychologist _changePsycho)
        {
            this.changePsycho = _changePsycho;
        }

        public override void execute()
        {
            DAOPsychologist daopsycho = new DAOPsychologist();
            answer = daopsycho.changePassword(changePsycho);
        }

        public Psychologist getAnswer()
        {
            return this.answer;
        }
    }
}