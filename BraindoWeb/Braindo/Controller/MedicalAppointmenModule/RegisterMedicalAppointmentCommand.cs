using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class RegisterMedicalAppointmentCommand : Command
    {
        private Appointment registerAppointment;
        private Appointment answer;

        public RegisterMedicalAppointmentCommand(Appointment _registerAppointment)
        {
            this.registerAppointment = _registerAppointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.registerMedicalAppointment(registerAppointment);
        }

        public Appointment getAnswer()
        {
            return this.answer;
        }
    }
}