using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;
using System.Objec
namespace Braindo.Model.PsychologistModule
{
    public class DAOPsychologist : DAO
    {
        private NpgsqlConnection conn;
        private NpgsqlCommand comm;
        

        private static String _sqlConsultarInformacion;

        public Psychologist consultIInformation(Psychologist _psychologist)
        {

            try
            {
                conn = DAO.getConnection();
                NpgsqlCommand cmd = new NpgsqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "PSICOLOGO_CONSULTAR";
                cmd.Parameters.Add("param", _psychologist._ID);
                NpgsqlDataReader dr = cmd.ExecuteReader();
                
            }
            catch (NpgsqlException ex)
            {
                throw ex;
            }
            return _psychologist;
        }
        
    }
}