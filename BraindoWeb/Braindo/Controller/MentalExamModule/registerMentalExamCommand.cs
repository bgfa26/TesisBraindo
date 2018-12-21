using Braindo.Common;
using Braindo.Model.MentalExamModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MentalExamModule
{
    public class RegisterMentalExamCommand : Command
    {
        private MentalExam registerMentalExam;
        private MentalExam answer;

        public RegisterMentalExamCommand(MentalExam _registerMentalExam)
        {
            this.registerMentalExam = _registerMentalExam;
        }

        public override void execute()
        {
            DAOMentalExam daomental = new DAOMentalExam();
            answer = daomental.registerMentalExam(registerMentalExam);
        }

        public MentalExam getAnswer()
        {
            return this.answer;
        }
    }
}