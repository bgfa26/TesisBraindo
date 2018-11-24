using Braindo.Controller.PsychologistModule;
using Braindo.Common;
using System;
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
        private String connString;
        private String user = "TesisBraindo";
        private String pass = "barron";
        private String server = "localhost";
        private String port = "5432";
        private String db = "BRAINDO";

        protected void Page_Load(object sender, EventArgs e)
        {
            cedula_txt.Value = "20678868";
            matricula_txt.Value = "20678868-2702";
            nombreCompleto_txt.Value = "Ronald Efrain Navas Hernandez";
            fechaNac_txt.Value = "27/02/1993";
            correo_txt.Value = "rn2702@gmail.com";

            int id = 20678868;

            psycho = new Psychologist(id);

            ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psycho);

            NpgsqlConnection conn = new NpgsqlConnection();
            conn.ConnectionString = "User ID=" + user + "; Password=" + pass + "; Host=" + server + "; Port=" + port + "; Database=" + db;

            try
            {
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    Console.WriteLine("Success open postgreSQL connection.");
                }  
                conn.Close();
            }
            catch (Exception ex )
            {
                
                throw ex;
            }

            /*connString = String.Format("Server={0};Port={1};" +
                    "User Id={2};Password={3};Database={4};",
                    "localhost", "5432", "TesisBraindo",
                    "barron2601", "braindo");

            NpgsqlConnection conn = new NpgsqlConnection(connString);
            conn.Open();

            if (conn.State == System.Data.ConnectionState.Open)
                Console.WriteLine("Success open postgreSQL connection.");
            conn.Close(); */

        }
    }
}