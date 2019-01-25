using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class MedicalAppointmentExistCommand : Command
    {
        private Appointment consultDateHour;
        private Appointment answer;

        public MedicalAppointmentExistCommand(Appointment _consultDateHour)
        {
            this.consultDateHour = _consultDateHour;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.MedicalAppointmentExist(consultDateHour);
        }

        public Appointment getAnswer()
        {
            return this.answer;
        }
    }
}