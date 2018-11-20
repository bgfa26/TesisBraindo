using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Psychologist
    {
        private int ID;
        private String email;
        private String password;
        private String name;
        private String secondName;
        private String surname;
        private String secondSurname;
        private String registrationNumber;
        private DateTime birthdate;

        public Psychologist()
        {

        }

        public Psychologist(int _id)
        {
            this.ID = _id;
        }

        public Psychologist(int _id, String _email, String _password, String _name, String _secondName, String _surname, String _secondSurname, String _registrationNumber, DateTime _birthdate)
        {
            this.ID = _id;
            this.email = _email;
            this.password = _password;
            this.name = _name;
            this.secondName = _secondName;
            this.surname = _surname;
            this.secondSurname = _secondSurname;
            this.registrationNumber = _registrationNumber;
            this.birthdate = _birthdate;
        }

        public Psychologist(String _email, String _name, String _secondName, String _surname, String _secondSurname, String _registrationNumber, DateTime _birthdate)
        {
            this.email = _email;
            this.name = _name;
            this.secondName = _secondName;
            this.surname = _surname;
            this.secondSurname = _secondSurname;
            this.registrationNumber = _registrationNumber;
            this.birthdate = _birthdate;
        }

        public Psychologist(String _password)
        {
            this.password = _password;
        }

        public int _ID
        {
            get { return ID; }
            set { ID = value; }
        }

        public String _Email
        {
            get { return email; }
            set { email = value; }
        }

        public String _Password
        {
            get { return password; }
            set { password = value; }
        }

        public String _Name
        {
            get { return name; }
            set { name = value; }
        }

        public String _SecondName
        {
            get { return secondName; }
            set { secondName = value; }
        }

        public String _Surname
        {
            get { return surname; }
            set { surname = value; }
        }

        public String _SecondSurname
        {
            get { return secondSurname; }
            set { secondSurname = value; }
        }

        public String _RegistrationNumber
        {
            get { return registrationNumber; }
            set { registrationNumber = value; }
        }

        public DateTime _Birthdate
        {
            get { return birthdate; }
            set { birthdate = value; }
        }
    }
}