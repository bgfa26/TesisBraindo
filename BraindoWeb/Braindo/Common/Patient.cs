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
        private Place place;

        public Patient()
        {

        }

        public Patient(int _ID, String _name, String _surname, int _age, String _career, Place _place)
        {
            this.ID = _ID;
            this.name = _name;
            this.surname = _surname;
            this.age = _age;
            this.career = _career;
            this.place = _place;
        }

        public Patient(String _name, String _surname, int _age, String _career, Place _place)
        {
            this.name = _name;
            this.surname = _surname;
            this.age = _age;
            this.career = _career;
            this.place = _place;
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

        public Place Place
        {
            get { return place; }
            set { place = value; }
        }

    }
}