using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class ModifyMedicalAppointmentCommand : Command
    {
        private Appointment modifyAppointment;
        private Appointment answer;

        public ModifyMedicalAppointmentCommand(Appointment _modifyappointment)
        {
            this.modifyAppointment = _modifyappointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.modifyAppointment(modifyAppointment);
        }

        public Appointment getAnswer()
        {
            return this.answer;
        }
    }
}