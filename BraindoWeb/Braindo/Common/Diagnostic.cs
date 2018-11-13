using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Diagnostic
    {
        private int ID;
        private DateTime date;
        private String answer;
        private String networkAnswer;
        private Patient patient;
        private Psychologist psychologist;

        public Diagnostic()
        {

        }

        public Diagnostic(int _ID, DateTime _date, String _answer, String _networkAnswer, Patient _patient, Psychologist _psychologist)
        {
            this.ID = _ID;
            this.date = _date;
            this.answer = _answer;
            this.networkAnswer = _networkAnswer;
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

        public String _Answer
        {
            get { return answer; }
            set { answer = value; }
        }

        public String _NetworkAnswer
        {
            get { return networkAnswer; }
            set { networkAnswer = value; }
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
    }
}