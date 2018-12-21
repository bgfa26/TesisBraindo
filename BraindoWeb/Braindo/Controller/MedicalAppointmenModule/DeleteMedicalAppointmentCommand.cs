using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class DeleteMedicalAppointmentCommand : Command
    {
        private Appointment deleteAppointment;
        private Appointment answer;

        public DeleteMedicalAppointmentCommand(Appointment _deleteAppointment)
        {
            this.deleteAppointment = _deleteAppointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.deleteAppointment(deleteAppointment);
        }

        public Appointment getAnswer()
        {
            return this.answer;
        }
    }
}