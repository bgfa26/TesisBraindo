using Braindo.Common;
using Braindo.Model.MentalExamModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MentalExamModule
{
    public class ConsultMentalExamCommand : Command
    {
        private MentalExam consultMentalExam;
        private MentalExam answer;

        public ConsultMentalExamCommand(MentalExam _consultMentalExam)
        {
            this.consultMentalExam = _consultMentalExam;
        }

        public override void execute()
        {
            DAOMentalExam daomental = new DAOMentalExam();
            answer = daomental.consultMentalExam(consultMentalExam);
        }

        public MentalExam getAnswer()
        {
            return this.answer;
        }
    }
}