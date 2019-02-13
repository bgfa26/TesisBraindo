﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Statistics
    {
        private int age;
        private String career;
        private String state;
        private String municipality;
        private float totalAnxiety;
        private DateTime initialDate;
        private DateTime endingDate;
        private float month;
        private float year;

        public Statistics()
        {

        }

        public Statistics(String _state)
        {
            this.state = _state;
        }

        public Statistics(String _state, String _municipality, float _totalAnxiety)
        {
            this.state = _state;
            this.municipality = _municipality;
            this.totalAnxiety = _totalAnxiety;

        }

        public Statistics(int _age, float _totalAnxiety)
        {
            this.age = _age;
            this.totalAnxiety = _totalAnxiety;

        }

        public Statistics(String _career, float _totalAnxiety)
        {
            this.career = _career;
            this.totalAnxiety = _totalAnxiety;

        }

        public Statistics(DateTime _initialDate, DateTime _endingDate)
        {
            this.initialDate = _initialDate;
            this.endingDate = _endingDate;
        }

        public Statistics(float _month, float _year, float _totalAnxiety)
        {
            this.month = _month;
            this.year = _year;
            this.totalAnxiety = _totalAnxiety;
        }

        public int _Age
        {
            get { return age; }
            set { age = value; }
        }

        public String _Career
        {
            get { return career; }
            set { career = value; }
        }

        public String _State
        {
            get { return state; }
            set { state = value; }
        }

        public String _Municipality
        {
            get { return municipality; }
            set { municipality = value; }
        }

        public float _TotalAnxiety
        {
            get { return totalAnxiety; }
            set { totalAnxiety = value; }
        }

        public DateTime _InitialDate
        {
            get { return initialDate; }
            set { initialDate = value; }
        }

        public DateTime _EndingDate
        {
            get { return endingDate; }
            set { endingDate = value; }
        }
    }
}