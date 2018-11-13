using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Common
{
    public class Psychologist
    {
        private int Cedula;
        private String Email;
        private String Clave;
        private String PrimerNombre;
        private String SegundoNombre;
        private String PrimerApellido;
        private String SegundoApellido;
        private String NumeroMatricula;
        private DateTime FechaNacimiento;

        public Psychologist(int _cedula, String _email, String _clave, String _primerNombre, String _segundoNombre, String _primerApellido, String _segundoApellido, String _numeroMatricula, DateTime _fechaNacimiento)
        {
            this.Cedula = _cedula;
            this.Email = _email;
            this.Clave = _clave;
            this.PrimerNombre = _primerNombre;
            this.SegundoNombre = _segundoNombre;
            this.PrimerApellido = _primerApellido;
            this.SegundoApellido = _segundoApellido;
            this.NumeroMatricula = _numeroMatricula;
            this.FechaNacimiento = _fechaNacimiento;
        }

        public Psychologist(String _email, String _primerNombre, String _segundoNombre, String _primerApellido, String _segundoApellido, String _numeroMatricula, DateTime _fechaNacimiento)
        {
            this.Email = _email;
            this.PrimerNombre = _primerNombre;
            this.SegundoNombre = _segundoNombre;
            this.PrimerApellido = _primerApellido;
            this.SegundoApellido = _segundoApellido;
            this.NumeroMatricula = _numeroMatricula;
            this.FechaNacimiento = _fechaNacimiento;
        }

        public Psychologist(String _clave)
        {
            this.Clave = _clave;
        }

        public int _Cedula
        {
            get { return Cedula; }
            set { Cedula = value; }
        }

        public String _Email
        {
            get { return Email; }
            set { Email = value; }
        }

        public String _Clave
        {
            get { return Clave; }
            set { Clave = value; }
        }

        public String _PrimerNombre
        {
            get { return PrimerNombre; }
            set { PrimerNombre = value; }
        }

        public String _SegundoNombre
        {
            get { return SegundoNombre; }
            set { SegundoNombre = value; }
        }

        public String _PrimerApellido
        {
            get { return PrimerApellido; }
            set { PrimerApellido = value; }
        }

        public String _SegundoApellido
        {
            get { return SegundoApellido; }
            set { SegundoApellido = value; }
        }

        public String _NumeroMatricula
        {
            get { return NumeroMatricula; }
            set { NumeroMatricula = value; }
        }

        public DateTime _FechaNacimiento
        {
            get { return FechaNacimiento; }
            set { FechaNacimiento = value; }
        }
    }
}