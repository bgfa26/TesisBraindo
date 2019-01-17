using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;

namespace Braindo.View.PsychologistModule
{
    public partial class PsychoProfile : System.Web.UI.Page
    {

        private Psychologist psycho;
        private Psychologist psychoConsulted;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                int id = 24220210;
                psycho = new Psychologist(id);

                ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psycho);

                try
                {
                    psychoConsult.execute();
                    psychoConsulted = psychoConsult.getAnswer();

                    DateTime datePsycho = psychoConsulted._Birthdate;
                    String datePsychoString = datePsycho.ToString("dd-MM-yyyy");

                    cedula_txt.Value = Convert.ToString(psychoConsulted._ID);
                    matricula_txt.Value = psychoConsulted._RegistrationNumber;
                    nombreCompleto_txt.Value = psychoConsulted._Name + " " + psychoConsulted._SecondName + " " + psychoConsulted._Surname + " " + psychoConsulted._SecondSurname;
                    fechaNac_txt.Value = datePsychoString;
                    correo_txt.Value = psychoConsulted._Email;
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
        }
    }
}