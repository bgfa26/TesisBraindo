﻿using Braindo.Controller.MentalExamModule;
using Braindo.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.MentalExamModule
{
    public partial class ConsultMentalExam : System.Web.UI.Page
    {
        private MentalExam mentalExam;
        private MentalExam consultedMentalExam;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                String idAppointment = Request.QueryString["mentalExamID"];

                int idInt = Convert.ToInt32(idAppointment);

                if (idInt != 0)
                {
                    mentalExam = new MentalExam(idInt);

                    ConsultMentalExamCommand cmd = new ConsultMentalExamCommand(mentalExam);

                    try
                    {
                        cmd.execute();
                        consultedMentalExam = cmd.getAnswer();

                        behavior_txt.Value = consultedMentalExam._Behavior;
                        attitude_txt.Value = consultedMentalExam._Attitude;
                        alertness_txt.Value = consultedMentalExam._Attention;
                        awareness_txt.Value = consultedMentalExam._Awareness;
                        mood_txt.Value = consultedMentalExam._Mood;
                        language_txt.Value = consultedMentalExam._Language;
                        thought_txt.Value = consultedMentalExam._Thought;
                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR! Esta cita no tiene examen mental registrado');window.location.href='../MedicalAppointmentModule/ConsultMedicalAppointment.aspx';", true);
                }
            }
        }
    }
}