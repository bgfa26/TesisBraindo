using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Appointment
    {

        private int ID;
        private DateTime date;
        private DateTime hour;
        private String reason;
        private Patient patient;
        private Psychologist psychologist;
        private MentalExam mentalExam;
        private int error;

        public Appointment()
        {

        }

        public Appointment(int _ID)
        {
            this.ID = _ID;
        }

        public Appointment(Psychologist _psychologist)
        {
            this.psychologist = _psychologist;
        }

        public Appointment(DateTime _date, DateTime _hour, Patient _patient, Psychologist _psychologist)
        {
            this.date = _date;
            this.hour = _hour;
            this.patient = _patient;
            this.psychologist = _psychologist;
        }

        public Appointment(DateTime _date, DateTime _hour, String _reason, Patient _patient, Psychologist _psychologist, MentalExam _mentalExam)
        {
            this.date = _date;
            this.hour = _hour;
            this.reason = _reason;
            this.patient = _patient;
            this.psychologist = _psychologist;
            this.mentalExam = _mentalExam;
        }

        public Appointment(int _ID, DateTime _date, DateTime _hour, String _reason)
        {
            this.ID = _ID;
            this.date = _date;
            this.hour = _hour;
            this.reason = _reason;
        }

        public Appointment(int _ID, DateTime _date, DateTime _hour, String _reason, Patient _patient, Psychologist _psychologist)
        {
            this.ID = _ID;
            this.date = _date;
            this.hour = _hour;
            this.reason = _reason;
            this.patient = _patient;
            this.psychologist = _psychologist;
        }

        public Appointment(int _ID, DateTime _date, DateTime _hour, String _reason, Patient _patient, Psychologist _psychologist, MentalExam _mentalExam)
        {
            this.ID = _ID;
            this.date = _date;
            this.hour = _hour;
            this.reason = _reason;
            this.patient = _patient;
            this.psychologist = _psychologist;
            this.mentalExam = _mentalExam;
        }

        public Appointment(DateTime _date, DateTime _hour, String _reason, Patient _patient, Psychologist _psychologist)
        {
            this.date = _date;
            this.hour = _hour;
            this.reason = _reason;
            this.patient = _patient;
            this.psychologist = _psychologist;
        }

        public int _ID
        {
            get { return ID; }
            set { ID = value; }
        }

        public DateTime _Date
        {
            get { return date; }
            set { date = value; }
        }

        public DateTime _Hour
        {
            get { return hour; }
            set { hour = value; }
        }

        public String _Reason
        {
            get { return reason; }
            set { reason = value; }
        }

        public Patient _Patient
        {
            get { return patient; }
            set { patient = value; }
        }

        public Psychologist _Psychologist
        {
            get { return psychologist; }
            set { psychologist = value; }
        }

        public MentalExam _MentalExam
        {
            get { return mentalExam; }
            set { mentalExam = value; }
        }

        public int _Error
        {
            get { return error; }
            set { error = value; }
        }

    }
}