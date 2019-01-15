using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class ConsultRegisteredAppointmentsCommand : Command
    {
        private Appointment Appointment;
        private List<Appointment> answer;

        public ConsultRegisteredAppointmentsCommand(Appointment _Appointment)
        {
            this.Appointment = _Appointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.consultRegisteredAppointments(Appointment);
        }

        public List<Appointment> getAnswer()
        {
            return this.answer;
        }
    }
}