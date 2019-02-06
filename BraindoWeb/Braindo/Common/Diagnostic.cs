using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Diagnostic
    {
        private int ID;
        private DateTime diagnosisDate;
        private String feelings;
        private String emotions;
        private String answer;
        private String networkAnswer;
        private Patient patient;
        private Psychologist psychologist;
        private int error;

        private String diagnosisDateString;

        public Diagnostic()
        {

        }

        public Diagnostic(int _id)
        {
            this.ID = _id;
        }

        public Diagnostic(Psychologist _psycho)
        {
            this.psychologist = _psycho;
        }

        public Diagnostic(Patient _patient, Psychologist _psycho)
        {
            this.patient = _patient;
            this.psychologist = _psycho;
        }

        public Diagnostic(int _ID, DateTime _date, String _feelings, String _emotions, String _answer, String _networkAnswer, Patient _patient, Psychologist _psychologist)
        {
            this.ID = _ID;
            this.diagnosisDate = _date;
            this.feelings = _feelings;
            this.emotions = _emotions;
            this.answer = _answer;
            this.networkAnswer = _networkAnswer;
            this.patient = _patient;
            this.psychologist = _psychologist;
        }

        public Diagnostic(int _ID, String _diagnosisDateString, String _feelings, String _emotions, String _answer, String _networkAnswer, Patient _patient, Psychologist _psychologist)
        {
            this.ID = _ID;
            this.diagnosisDateString = _diagnosisDateString;
            this.feelings = _feelings;
            this.emotions = _emotions;
            this.answer = _answer;
            this.networkAnswer = _networkAnswer;
            this.patient = _patient;
            this.psychologist = _psychologist;
        }

        public Diagnostic(DateTime _date, String _answer, String _networkAnswer, Patient _patient, Psychologist _psychologist)
        {
            this.diagnosisDate = _date;
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
            get { return diagnosisDate; }
            set { diagnosisDate = value; }
        }

        public String _Feelings
        {
            get { return feelings; }
            set { feelings = value; }
        }

        public String _Emotions
        {
            get { return emotions; }
            set { emotions = value; }
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

        public int _Error
        {
            get { return error; }
            set { error = value; }
        }

        public String _DiagnosisDateString
        {
            get { return diagnosisDateString; }
            set { diagnosisDateString = value; }
        }
    }
}