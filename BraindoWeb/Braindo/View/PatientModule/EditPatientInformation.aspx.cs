using Braindo.Controller.PatientModule;
using Braindo.Controller.PlaceModule;
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
    public partial class EditPatientInformation : System.Web.UI.Page
    {
        private Patient consult;
        private Patient consulted;
        private Patient patient;
        private Patient patientModified;

        private List<Place> stateConsultList;
        private List<Place> municipalityConsultList;
        private List<Place> parishConsultList;
        private List<Place> parishConsultList2;
        private Place _state;
        private Place _municipality;
        private Place _parish;
        private Place _probando;

        public int idState;
        public int test2;
        private int idMunicipality;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["USER_ID"] == null)
                {
                    Response.Redirect("~/View/Home/index.aspx", false);
                }
                else
                {
                    ConsultStateCommand consultState = new ConsultStateCommand();

                    try
                    {
                        consultState.execute();
                        stateConsultList = consultState.getAnswer();

                        foreach (Place _place1 in stateConsultList)
                        {
                            state1.Items.Add(_place1._Name);
                            String test = _place1._Name;
                        }

                    }
                    catch (Exception stateEx)
                    {

                        throw stateEx;
                    }


                    String idPatient = Request.QueryString["patiendID"];

                    int idInt = Convert.ToInt32(idPatient);

                    consult = new Patient(idInt);

                    ConsultPatientInformationCommand command = new ConsultPatientInformationCommand(consult);

                    try
                    {
                        command.execute();
                        consulted = command.getAnswer();

                        nameTXT.Text = consulted._Name;
                        surnameTXT.Text = consulted._Surname;
                        ageTXT.Text = consulted._Age.ToString();
                        career1.SelectedValue = consulted._Career;

                        foreach (Place _searchState in stateConsultList)
                        {
                            if (_searchState._Name == consulted._State)
                            {
                                state1.SelectedValue = consulted._State;
                            }
                        }

                        //MUNICIPIOS

                        String nameState = consulted._State;

                        Place consultstateID = new Place(nameState);

                        ConsultStateIDCommand consultIDState = new ConsultStateIDCommand(consultstateID);

                        try
                        {
                            consultIDState.execute();
                            _state = consultIDState.getAnswer();
                            idState = _state._ID;

                            test2 = idState;

                            ConsultMunicipalityCommand cmd = new ConsultMunicipalityCommand(_state);

                            cmd.execute();
                            municipalityConsultList = cmd.getAnswer();

                            foreach (Place _municipality in municipalityConsultList)
                            {
                                municipality1.Items.Add(_municipality._Name);
                                _probando = _municipality;
                            }

                            foreach (Place _searchMunicipality in municipalityConsultList)
                            {
                                if (_searchMunicipality._Name == consulted._Municipality)
                                {
                                    municipality1.SelectedValue = consulted._Municipality;
                                }
                            }

                        }
                        catch (Exception stateEx)
                        {

                            throw stateEx;
                        }

                        //PARROQUIAS

                        String nameMunicipality = consulted._Municipality;

                        Place consultmunicipalityID = new Place(nameMunicipality);

                        ConsultMunicipalityIDCommand consultIDMunicipality = new ConsultMunicipalityIDCommand(consultmunicipalityID);

                        try
                        {
                            consultIDMunicipality.execute();
                            _municipality = consultIDMunicipality.getAnswer();
                            idMunicipality = _municipality._ID;

                            ConsultParishCommand cmd = new ConsultParishCommand(_municipality);

                            cmd.execute();
                            parishConsultList = cmd.getAnswer();

                            foreach (Place _parish in parishConsultList)
                            {
                                parish1.Items.Add(_parish._Name);
                            }

                            foreach (Place _searchParish in parishConsultList)
                            {
                                if (_searchParish._Name == consulted._Parish)
                                {
                                    parish1.SelectedValue = consulted._Parish;
                                }
                            }


                        }
                        catch (Exception municipalityEx)
                        {

                            throw municipalityEx;
                        }

                    }
                    catch (Exception ex)
                    {

                        throw ex;
                    }
                }
            } 
        }

        protected void State_SelectedIndex(object sender, EventArgs e)
        {

            //PARROQUIA
               municipality1.Items.Clear();
               parish1.Items.Clear();

                String nameState = state1.SelectedItem.Text;

                Place consultstateID = new Place(nameState);

                ConsultStateIDCommand consultIDState = new ConsultStateIDCommand(consultstateID);

                try
                {
                    consultIDState.execute();
                    _state = consultIDState.getAnswer();
                    idState = _state._ID;

                    test2 = idState;

                    ConsultMunicipalityCommand cmdMunicipality = new ConsultMunicipalityCommand(_state);

                    cmdMunicipality.execute();
                    municipalityConsultList = cmdMunicipality.getAnswer();

                    foreach (Place _municipality in municipalityConsultList)
                    {
                        municipality1.Items.Add(_municipality._Name);
                    }


                    //MUNICIPIO

                    String nameMunicipality = municipality1.Items[0].Text;

                    Place consultmunicipalityID = new Place(nameMunicipality);

                    ConsultMunicipalityIDCommand consultIDMunicipality = new ConsultMunicipalityIDCommand(consultmunicipalityID);

                    try
                    {
                        consultIDMunicipality.execute();
                        _municipality = consultIDMunicipality.getAnswer();
                        idMunicipality = _municipality._ID;

                        ConsultParishCommand cmdParish = new ConsultParishCommand(_municipality);

                        cmdParish.execute();
                        parishConsultList = cmdParish.getAnswer();

                        foreach (Place _parish in parishConsultList)
                        {
                            parish1.Items.Add(_parish._Name);
                        }

                    }
                    catch (Exception municipalityEx)
                    {

                        throw municipalityEx;
                    }

                }
                catch (Exception stateEx)
                {

                    throw stateEx;
                }
        }

        protected void Municipality_SelectedIndex(object sender, EventArgs e)
        {

            parish1.Items.Clear();

                String nameMunicipality = municipality1.SelectedItem.Text;

                Place consultmunicipalityID = new Place(nameMunicipality);

                ConsultMunicipalityIDCommand consultIDMunicipality = new ConsultMunicipalityIDCommand(consultmunicipalityID);

                try
                {
                    consultIDMunicipality.execute();
                    _municipality = consultIDMunicipality.getAnswer();
                    idMunicipality = _municipality._ID;

                    ConsultParishCommand cmd = new ConsultParishCommand(_municipality);

                    cmd.execute();
                    parishConsultList = cmd.getAnswer();

                    foreach (Place _parish in parishConsultList)
                    {
                        parish1.Items.Add(_parish._Name);
                    }
                }
                catch (Exception municipalityEx)
                {

                    throw municipalityEx;
                }

        }

        protected void btnChangeData_Click(object sender, EventArgs e)
        {

            if (nameTXT.Text.Equals("") || surnameTXT.Text.Equals("") || ageTXT.Text.Equals("") || career1.SelectedValue.Equals("") || state1.SelectedValue.Equals("") || municipality1.SelectedValue.Equals("") || parish1.SelectedValue.Equals(""))
            {
                string script = "alert(\"ERROR! No debe dejar espacios en blancos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                        "ServerControlScript", script, true);
            }
            else
            {
                String idPatient = Request.QueryString["patiendID"];

                int id = Convert.ToInt32(idPatient);
                String name = nameTXT.Text;
                String surname = surnameTXT.Text;
                int age = Convert.ToInt32(ageTXT.Text);
                String career = career1.SelectedValue;
                String state = state1.SelectedValue;
                String municipality = municipality1.SelectedValue;
                String parish = parish1.SelectedValue;

                patient = new Patient(id, name, surname, age, career, state, municipality, parish);

                ModifyPatientInformation cmd = new ModifyPatientInformation(patient);
                try
                {
                    cmd.execute();
                    patientModified = cmd.getAnswer();
                    if (patientModified._Error == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        Response.Redirect("ConsultPatients.aspx");

                        //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Los datos fueron cambiados exitosamente');window.location.href='ConsultPatients.aspx';", true);

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('ERROR, no se realizaron los cambios');window.location.href='ConsultPatients.aspx';", true);
                    }
                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
        }
    }

}