﻿using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.IndexModule
{
    public partial class LoginTest : System.Web.UI.Page
    {
        private Psychologist _psychologist;
        private Psychologist _psychologistConsulted;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String correo = email.Text;
            String contra = password.Text;
            DateTime NullDateTime = new DateTime();

            _psychologist = new Psychologist(0, correo, contra, "", "", "", "", "", NullDateTime);

            LoginPsychologistCommandcs cmd = new LoginPsychologistCommandcs(_psychologist);

            try
            {
                cmd.execute();
                _psychologistConsulted = cmd.getAnswer();

                if (_psychologistConsulted._ID == 0)
                {
                    String myStringVariable = "ERROR! No existe la cuenta, verificar datos";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                }
                else
                {
                    Session["USER_ID"] = _psychologistConsulted._ID;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicio de sesion exitoso, Bienvenido');window.location.href='../IndexModule/index.aspx';", true);
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}