using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class ConsultAllMedicalAppointmentsCommand : Command
    {
        private Appointment Appointment;
        private List<Appointment> answer;

        public ConsultAllMedicalAppointmentsCommand(Appointment _Appointment)
        {
            this.Appointment = _Appointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.consultAllAppointment(Appointment);
        }

        public List<Appointment> getAnswer()
        {
            return this.answer;
        }

    }
}