using Braindo.Controller.PatientModule;
using Braindo.Common;
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

        private Patient patient;
        private Patient patientConsulted;
        private List<Patient> patientList;

        protected void Page_Load(object sender, EventArgs e)
        {

            int id = 24220210;

            patient = new Patient(id);


            ConsultPatientsCommand cmd = new ConsultPatientsCommand();

            try
            {
                cmd.execute();
                patientList = cmd.getAnswer();
                
                foreach (Patient example in patientList){
                    TableRow row = new TableRow();

                    row.Attributes.Add("Class", "aspTableRow");

                    TableCell cellID = new TableCell();
                    TableCell cellName = new TableCell();
                    TableCell cellsurName = new TableCell();
                    TableCell cellAge = new TableCell();
                    TableCell cellCareer = new TableCell();
                    TableCell cellAdress = new TableCell();
                    TableCell cellOptions = new TableCell();

                    String idPatient = example._ID.ToString();
                    String agePatient = example._Age.ToString();

                    cellID.Text = idPatient;
                    cellName.Text = example._Name;
                    cellsurName.Text = example._Surname;
                    cellAge.Text = agePatient;
                    cellCareer.Text = example._Career;
                    cellAdress.Text = example._State + ", " + example._Municipality + ", " + example._Parish;

                    row.Cells.Add(cellID);
                    row.Cells.Add(cellName);
                    row.Cells.Add(cellsurName);
                    row.Cells.Add(cellAge);
                    row.Cells.Add(cellCareer);
                    row.Cells.Add(cellAdress);
                    tblData.Rows.Add(row);
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }

        }
    }
}