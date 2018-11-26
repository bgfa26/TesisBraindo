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
        private static NpgsqlConnection conn;


        protected void Page_Load(object sender, EventArgs e)
        {
         

            int id = 6963282;
            int cedula;
            String cedulaString;

            psycho = new Psychologist(id);

            ConsultPsychoInformationCommand psychoConsult = new ConsultPsychoInformationCommand(psycho);

            try
            {
                psychoConsult.execute();
                psychoConsulted = psychoConsult.getAnswer();
                cedula = psychoConsulted._ID;
                cedulaString = Convert.ToString(cedula);
                cedula_txt.Value = cedulaString;

            }
            catch (Exception ex)
            {
                
                throw ex;
            }

            /*Probando
            string connstring = String.Format("Server={0};Port={1};" +
                    "User Id={2};Password={3};Database={4};",
                    "localhost", "5432", "tesisbraindo",
                    "barron", "braindo");

            try
            {
                conn = new NpgsqlConnection(connstring);
                conn.Open();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_consultar(@cedula)", conn);
                NpgsqlParameter p = new NpgsqlParameter();
                p.ParameterName = "@cedula";
                p.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                p.Direction = ParameterDirection.Input;
                p.Value = id;
                command.Parameters.Add(p);
                command.CommandType = CommandType.StoredProcedure;
                command.ExecuteNonQuery();
                
                

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        Console.WriteLine("{0} \t {1} \n", dr[0], dr[1], dr[2], dr[3], dr[4], dr[5], dr[6], dr[7], dr[8]);
                        cedula_txt.Value = dr[0].ToString();
                        correo_txt.Value = dr[1].ToString();
                        nombreCompleto_txt.Value = dr[3].ToString() + " " + dr[4].ToString() + " " + dr[5].ToString() + " " + dr[6].ToString();
                        matricula_txt.Value = dr[7].ToString();
                        fechaNac_txt.Value = dr[8].ToString();


                    }
                    dr.Close();
                    tran.Commit();
                    conn.Close();   
                }
                catch (Exception x2)
                {
                    
                    throw x2;
                }


            }
            catch (NpgsqlException ex)
            {
                throw ex;
            }*/

        }
    }
}