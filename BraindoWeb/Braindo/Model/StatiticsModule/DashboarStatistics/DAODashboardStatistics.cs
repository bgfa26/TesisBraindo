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

        public List<Patient> GetDateStatistics(Patient _patient)
        {
            float month;
            float year;
            float totalAnxiety;
            Patient patient;
            List<Patient> dateList = new List<Patient>();
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

                initDateConsult.Value = _patient._InitialDate;
                endDateConsult.Value = _patient._EndingDate;

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
                        totalAnxiety = dr.GetFloat(2);

                        patient = new Patient(month, year, totalAnxiety);

                        dateList.Add(patient);
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

        public List<Patient> GetMunicipalityStatistics(Patient _patient)
        {
            String state;
            String municipality;
            float totalAnxiety;
            Patient patient;
            List<Patient> municipalityList = new List<Patient>();
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estadistica_estados(@estado)", conn);

                NpgsqlParameter stateConsult = new NpgsqlParameter();

                stateConsult.ParameterName = "@estado";

                stateConsult.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                stateConsult.Direction = ParameterDirection.Input;

                stateConsult.Value = _patient._State;

                command.Parameters.Add(stateConsult);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        state = _patient._State;
                        municipality = dr.GetString(0);
                        totalAnxiety = dr.GetFloat(1);

                        patient = new Patient(state, municipality, totalAnxiety);

                        municipalityList.Add(patient);
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

        public List<Patient> GetAgeStatistics()
        {
            int age;
            float totalAnxiety;
            Patient patient;
            List<Patient> ageList = new List<Patient>();

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
                        totalAnxiety = dr.GetFloat(1);

                        patient = new Patient(age, totalAnxiety);
                        ageList.Add(patient);
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

        public List<Patient> GetCareerStatistics()
        {
            String career;
            float totalAnxiety;
            Patient patient;
            List<Patient> ageList = new List<Patient>();

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
                        totalAnxiety = dr.GetFloat(1);

                        patient = new Patient(career, totalAnxiety);
                        ageList.Add(patient);
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
    }
}