using Braindo.Common;
using Braindo.Model.PsychologistModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class LoginPsychologistCommandcs : Command
    {
        private Psychologist loginPsycho;
        private Psychologist answer;

        public LoginPsychologistCommandcs(Psychologist _loginpsycho)
        {
            this.loginPsycho = _loginpsycho;
        }

        public override void execute()
        {
            DAOPsychologist daopsycho = new DAOPsychologist();
            answer = daopsycho.loginPsychologist(loginPsycho);
        }

        public Psychologist getAnswer()
        {
            return this.answer;
        }
    }
}