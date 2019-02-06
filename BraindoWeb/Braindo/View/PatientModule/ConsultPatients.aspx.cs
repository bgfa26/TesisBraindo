﻿using Braindo.Controller.PatientModule;
using Braindo.Controller.DiagnosisModule;
using Braindo.Common;
using Braindo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Braindo.View.PatientModule
{
    public partial class ConsultPatients : System.Web.UI.Page
    {
        private Psychologist psychoConsult;
        private Patient patient;
        private Patient patientConsulted;
        private Patient patientDeleted;
        private List<Patient> patientList;
        List<Patient> patientListConfirmed = new List<Patient>();
        private Diagnostic diagnosticConsult;
        private List<Diagnostic> diagnosticList;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["USER_ID"] == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Inicie sesion para ver esta ventana');window.location.href='../IndexModule/LoginTest.aspx';", true);
                }
                else
                {
                    String idSession = Session["USER_ID"].ToString();
                    int id = Convert.ToInt32(idSession);
                    psychoConsult = new Psychologist(id);

                    diagnosticConsult = new Diagnostic(psychoConsult);

                    ConsultDiagnosticIDPsychoCommand cmdDiagnostic = new ConsultDiagnosticIDPsychoCommand(diagnosticConsult);
                    ConsultPatientsCommand cmdPatient = new ConsultPatientsCommand();

                    try
                    {
                        cmdPatient.execute();
                        patientList = cmdPatient.getAnswer();

                        cmdDiagnostic.execute();
                        diagnosticList = cmdDiagnostic.getAnswer();

                        foreach (Diagnostic _diagnostic in diagnosticList)
                        {
                            int patientFK = _diagnostic._Patient._ID;

                            foreach (Patient _patient in patientList)
                            {
                                if (patientFK == _patient._ID)
                                {
                                    patientListConfirmed.Add(_patient);
                                }
                            }
                        }

                        listPatients.DataSource = patientListConfirmed;
                        listPatients.DataBind();

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
            }
        }

        protected void actionPatient_Command(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                Label id = (Label)listPatients.Items[e.Item.ItemIndex].FindControl("idPatient");

                String idString = id.Text;

                int idInt = Convert.ToInt32(idString);

                Patient patientDelete = new Patient(idInt);

                DeletePatientCommand cmd = new DeletePatientCommand(patientDelete);

                try
                {
                    cmd.execute();
                    patientDeleted = cmd.getAnswer();
                    if (patientDeleted._Error == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        /*Response.Redirect(Request.RawUrl);
   
                        string script = "alert(\"Se Elimino\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                                "ServerControlScript", script, true);*/

                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Se elimino exitosamente');window.location.href='ConsultPatients.aspx';", true);

                    }

                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR, no se elimino');window.location.href='ConsultPatients.aspx';", true);

                    throw ex;
                }
            }
            else if (e.CommandName == "modifyInfo")
            {
                Label id = (Label)listPatients.Items[e.Item.ItemIndex].FindControl("idPatient");

                String idString = id.Text;

                Response.Redirect("EditPatientInformation.aspx?patiendID=" + idString);
            }
            else if (e.CommandName == "viewDiagnosis")
            {
                Label id = (Label)listPatients.Items[e.Item.ItemIndex].FindControl("idPatient");

                String idString = id.Text;

                Response.Redirect("ConsultDiagnosis.aspx?patiendID=" + idString);

            }
        }
    }
}