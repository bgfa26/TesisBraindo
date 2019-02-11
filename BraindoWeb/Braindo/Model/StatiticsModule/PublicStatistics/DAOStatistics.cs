using Braindo.Common;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Braindo.Model.StatiticsModule.PublicStatistics
{
    public class DAOStatistics : DAO
    {
        private NpgsqlConnection conn;
        public List<Patient> GetPublicStatistics()
        {
            int age;
            String career;
            String state;
            float totalAnxiety;
            List<Patient> patientList = new List<Patient>();
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("ESTADISTICA_MAINPAGE()", conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        career = dr.GetString(0);
                        age = dr.GetInt32(1);
                        totalAnxiety = (float) dr.GetDouble(2);
                        state = dr.GetString(3);
                        Patient patient = new Patient(age, career, state, totalAnxiety);
                        patientList.Add(patient);

                    }
                    dr.Close();
                    tran.Commit();
                    return patientList;
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }
            catch (NpgsqlException ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}