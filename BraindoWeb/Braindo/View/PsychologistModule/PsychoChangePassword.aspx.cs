﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.View.PsychologistModule
{
    public partial class PsychoChangePassword : System.Web.UI.Page
    {

        private Psychologist psycho;
        private Psychologist psychoChanged;


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnChange_Click(object sender, EventArgs e)
        {
            int id = 24220210;
            String password = pass_txt.Value;
            psycho = new Psychologist(id, password);

            ChangePasswordCommand cmd = new ChangePasswordCommand(psycho);

            try
            {
                cmd.execute();
                psychoChanged = cmd.getAnswer();
                if (psychoChanged._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se cambio la contraseña');window.location.href='PsychoProfile.aspx';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! No se hizo el cambio de la contraseña');window.location.href='PsychoProfile.aspx';", true);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}