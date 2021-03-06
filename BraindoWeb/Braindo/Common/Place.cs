﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Place
    {
        private int ID;
        private String type;
        private String name;
        private int foreignID;

        public Place()
        {

        }

        public Place(String _name)
        {
            this.name = _name;
        }

        public Place(String _name, int _foreignID)
        {
            this.name = _name;
            this.foreignID = _foreignID;
        }

        public Place(int _ID, String _name)
        {
            this.ID = _ID;
            this.name = _name;
        }

        public Place(int _ID, String _type, String _name)
        {
            this.ID = _ID;
            this.type = _type;
            this.name = _name;
        }

        public int _ID
        {
            get { return ID; }
            set { ID = value; }
        }

        public String _Type
        {
            get { return type; }
            set { type = value; }
        }

        public String _Name
        {
            get { return name; }
            set { name = value; }
        }

        public int _ForeignID
        {
            get { return foreignID; }
            set { foreignID = value; }
        }
    }
}