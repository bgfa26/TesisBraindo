using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.Model.PsychologistModule
{
    public class DAOPsychologist : DAO
    {
        private NpgsqlConnection conn;


        public Psychologist consultIInformation(Psychologist _psychologist)
        {
            Psychologist _psychoConsult = new Psychologist();
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_consultar(@cedula)", conn);
                NpgsqlParameter p = new NpgsqlParameter();
                p.ParameterName = "@cedula";
                p.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                p.Direction = ParameterDirection.Input;
                p.Value = _psychologist._ID;
                command.Parameters.Add(p);
                command.CommandType = CommandType.StoredProcedure;
                command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                       
                        _psychoConsult = new Psychologist(dr.GetInt32(0), dr.GetString(1), dr.GetString(2), dr.GetString(3), dr.GetString(4), dr.GetString(5), dr.GetString(6), dr.GetString(7), dr.GetDateTime(8));
                    }
                    return _psychologist;
                }
                catch (Exception ex)
                {
                    
                    throw ex;
                }
                
            }
            catch (NpgsqlException ex2)
            {
                throw ex2;
            }
        }
        
    }
}