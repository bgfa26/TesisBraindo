using Braindo.Common;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Braindo.Model.StatiticsModule.DashboarStatistics
{
    public class DAODashboardStatistics : DAO
    {
        private NpgsqlConnection conn;

        public List<Statistics> GetDateStatistics(Statistics _statistics)
        {
            float month;
            float year;
            float totalAnxiety;
            Statistics statistic;
            List<Statistics> dateList = new List<Statistics>();
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estadistica_fechas(@initdate, @enddate)", conn);

                NpgsqlParameter initDateConsult = new NpgsqlParameter();
                NpgsqlParameter endDateConsult = new NpgsqlParameter();

                initDateConsult.ParameterName = "@initdate";
                endDateConsult.ParameterName = "@enddate";

                initDateConsult.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                endDateConsult.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;

                initDateConsult.Direction = ParameterDirection.Input;
                endDateConsult.Direction = ParameterDirection.Input;

                initDateConsult.Value = _statistics._InitialDate;
                endDateConsult.Value = _statistics._EndingDate;

                command.Parameters.Add(initDateConsult);
                command.Parameters.Add(endDateConsult);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        month = dr.GetFloat(0);
                        year = dr.GetFloat(1);
                        totalAnxiety = (float) dr.GetDouble(2);

                        statistic = new Statistics(month, year, totalAnxiety);

                        dateList.Add(statistic);
                    }
                    dr.Close();
                    tran.Commit();
                    return dateList;
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

        public List<Statistics> GetMunicipalityStatistics(Statistics _statistics)
        {
            String state;
            String municipality;
            float totalAnxiety;
            Statistics statistic;
            List<Statistics> municipalityList = new List<Statistics>();
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estadistica_estados(@estado)", conn);

                NpgsqlParameter stateConsult = new NpgsqlParameter();

                stateConsult.ParameterName = "@estado";

                stateConsult.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                stateConsult.Direction = ParameterDirection.Input;

                stateConsult.Value = _statistics._State;

                command.Parameters.Add(stateConsult);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        state = _statistics._State;
                        municipality = dr.GetString(0);
                        totalAnxiety = (float) dr.GetDouble(1);

                        statistic = new Statistics(state, municipality, totalAnxiety);

                        municipalityList.Add(statistic);
                    }
                    dr.Close();
                    tran.Commit();
                    return municipalityList;
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

        public List<Statistics> GetAgeStatistics()
        {
            int age;
            float totalAnxiety;
            Statistics statistic;
            List<Statistics> ageList = new List<Statistics>();

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estadistica_edad()", conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        age = dr.GetInt32(0);
                        totalAnxiety = (float)dr.GetDouble(1);

                        statistic = new Statistics(age, totalAnxiety);
                        ageList.Add(statistic);
                    }
                    dr.Close();
                    tran.Commit();
                    return ageList;
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

        public List<Statistics> GetCareerStatistics()
        {
            String career;
            float totalAnxiety;
            Statistics statistic;
            List<Statistics> careerList = new List<Statistics>();

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estadistica_carrera()", conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        career = dr.GetString(0);
                        totalAnxiety = (float)dr.GetDouble(1);

                        statistic = new Statistics(career, totalAnxiety);
                        careerList.Add(statistic);
                    }
                    dr.Close();
                    tran.Commit();
                    return careerList;
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