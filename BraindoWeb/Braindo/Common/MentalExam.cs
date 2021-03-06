﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class MentalExam
    {

        private int ID;
        private String behavior;
        private String attitude;
        private String attention;
        private String awareness;
        private String mood;
        private String language;
        private String thought;
        private Appointment appointment;
        private int error;

        public MentalExam()
        {

        }

        public MentalExam(int _Id)
        {
            this.ID = _Id;
        }

        public MentalExam(int _Id, String _behavior, String _attitude, String _attention, String _awareness, String _mood, String _language, String _thought, Appointment _appointment)
        {
            this.ID = _Id;
            this.behavior = _behavior;
            this.attitude = _attitude;
            this.attention = _attention;
            this.awareness = _awareness;
            this.mood = _mood;
            this.language = _language;
            this.thought = _thought;
            this.appointment = _appointment;
        }

        public MentalExam(String _behavior, String _attitude, String _attention, String _awareness, String _mood, String _language, String _thought, Appointment _appointment)
        {
            this.behavior = _behavior;
            this.attitude = _attitude;
            this.attention = _attention;
            this.awareness = _awareness;
            this.mood = _mood;
            this.language = _language;
            this.thought = _thought;
            this.appointment = _appointment;
        }

        public MentalExam(int _Id, String _behavior, String _attitude, String _attention, String _awareness, String _mood, String _language, String _thought)
        {
            this.ID = _Id;
            this.behavior = _behavior;
            this.attitude = _attitude;
            this.attention = _attention;
            this.awareness = _awareness;
            this.mood = _mood;
            this.language = _language;
            this.thought = _thought;
        }

        public int _ID
        {
            get { return ID; }
            set { ID = value; }
        }

        public String _Behavior
        {
            get { return behavior; }
            set { behavior = value; }
        }

        public String _Attitude
        {
            get { return attitude; }
            set { attitude = value; }
        }

        public String _Attention
        {
            get { return attention; }
            set { attention = value; }
        }

        public String _Awareness
        {
            get { return awareness; }
            set { awareness = value; }
        }

        public String _Mood
        {
            get { return mood; }
            set { mood = value; }
        }

        public String _Language
        {
            get { return language; }
            set { language = value; }
        }

        public String _Thought
        {
            get { return thought; }
            set { thought = value; }
        }

        public Appointment _Appointment
        {
            get { return appointment; }
            set { appointment = value; }
        }

        public int _Error
        {
            get { return error; }
            set { error = value; }
        }
    }
}