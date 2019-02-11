using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Patient
    {
        private int ID;
        private String name;
        private String surname;
        private int age;
        private String career;
        private String state;
        private String municipality;
        private String parish;
        private float totalAnxiety;
        private int error;

        public Patient()
        {

        }

        public Patient(int _id)
        {
            this.ID = _id;
        }

        public Patient(String _name, String _surname)
        {
            this.name = _name;
            this.surname = _surname;
        }

        public Patient(int _id, String _name, String _surname)
        {
            this.ID = _id;
            this.name = _name;
            this.surname = _surname;
        }

        public Patient(int _ID, String _name, String _surname, int _age, String _career, String _state, String _municipality, String _parish)
        {
            this.ID = _ID;
            this.name = _name;
            this.surname = _surname;
            this.age = _age;
            this.career = _career;
            this.state = _state;
            this.municipality = _municipality;
            this.parish = _parish;
        }

        public Patient(String _name, String _surname, int _age, String _career, String _state, String _municipality, String _parish)
        {
            this.name = _name;
            this.surname = _surname;
            this.age = _age;
            this.career = _career;
            this.state = _state;
            this.municipality = _municipality;
            this.parish = _parish;

        }

        public Patient(int _age, String _career, String _state, float _totalAnxiety)
        {
            this.age = _age;
            this.career = _career;
            this.state = _state;
            this.totalAnxiety = _totalAnxiety;

        }

        public int _ID
        {
            get { return ID; }
            set { ID = value; }
        }

        public String _Name
        {
            get { return name; }
            set { name = value; }
        }

        public String _Surname
        {
            get { return surname; }
            set { surname = value; }
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

        public String _Parish
        {
            get { return parish; }
            set { parish = value; }
        }

        public int _Error
        {
            get { return error; }
            set { error = value; }
        }

    }
}