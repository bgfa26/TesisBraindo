﻿using Braindo.Common;
using Braindo.Model.MedicalAppointmentModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.MedicalAppointmenModule
{
    public class ConsultMedicalAppointmentCommand : Command
    {
        private Appointment consultAppointment;
        private Appointment answer;

        public ConsultMedicalAppointmentCommand(Appointment _consultAppointment)
        {
            this.consultAppointment = _consultAppointment;
        }

        public override void execute()
        {
            DAOMedicalAppointment daoappointment = new DAOMedicalAppointment();
            answer = daoappointment.consultAppointment(consultAppointment);
        }

        public Appointment getAnswer()
        {
            return this.answer;
        }
    }
}