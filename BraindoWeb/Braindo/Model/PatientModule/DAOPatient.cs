using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.Model.PatientModule
{
    public class DAOPatient : DAO
    {

        private NpgsqlConnection conn;

        public Patient modifyPatient(Patient _patient)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("paciente_modificar(@ID, @FIRSTNAME, @SURNAME, @AGE, @CAREER, @STATE, @MUNICIPALITY, @PARISH)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter firstname = new NpgsqlParameter();
                NpgsqlParameter surname = new NpgsqlParameter();
                NpgsqlParameter age = new NpgsqlParameter();
                NpgsqlParameter career = new NpgsqlParameter();
                NpgsqlParameter state = new NpgsqlParameter();
                NpgsqlParameter municipality = new NpgsqlParameter();
                NpgsqlParameter parish = new NpgsqlParameter();

                id.ParameterName = "@ID";
                firstname.ParameterName = "@FIRSTNAME";
                surname.ParameterName = "@SURNAME";
                age.ParameterName = "@AGE";
                career.ParameterName = "@CAREER";
                state.ParameterName = "@STATE";
                municipality.ParameterName = "@MUNICIPALITY";
                parish.ParameterName = "@PARISH";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                firstname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                surname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                age.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                career.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                state.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                municipality.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parish.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                id.Direction = ParameterDirection.Input;
                firstname.Direction = ParameterDirection.Input;
                age.Direction = ParameterDirection.Input;
                career.Direction = ParameterDirection.Input;
                state.Direction = ParameterDirection.Input;
                municipality.Direction = ParameterDirection.Input;
                parish.Direction = ParameterDirection.Input;

                id.Value = _patient._ID;
                firstname.Value = _patient._Name;
                surname.Value = _patient._Surname;
                age.Value = _patient._Age;
                career.Value = _patient._Career;
                state.Value = _patient._State;
                municipality.Value = _patient._Municipality;
                parish.Value = _patient._Parish;

                command.Parameters.Add(id);
                command.Parameters.Add(firstname);
                command.Parameters.Add(surname);
                command.Parameters.Add(age);
                command.Parameters.Add(career);
                command.Parameters.Add(state);
                command.Parameters.Add(municipality);
                command.Parameters.Add(parish);

                command.CommandType = CommandType.StoredProcedure;
                //command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
                    }
                    if (resp == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        _patient._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _patient._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _patient;
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

        public Patient deletePatient(Patient _patient)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("paciente_eliminar(@ID)", conn);
                NpgsqlParameter ci = new NpgsqlParameter();
                ci.ParameterName = "@ID";
                ci.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                ci.Direction = ParameterDirection.Input;
                ci.Value = _patient._ID;
                command.Parameters.Add(ci);
                command.CommandType = CommandType.StoredProcedure;
                //command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
                    }
                    if (resp == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        _patient._Error = Registry.RESULTADO_CODIGO_BIEN;
                    }
                    else
                    {
                        _patient._Error = Registry.RESULTADO_CODIGO_NO_ENCONTRADO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _patient;
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
            finally
            {
                conn.Close();
            }
        }

        public Patient consultPatient(Patient _patient)
        {
            int id;
            String name;
            String surname;
            int age;
            String career;
            String state;
            String municipality;
            String parish;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("paciente_consultar(@ID)", conn);
                NpgsqlParameter ci = new NpgsqlParameter();
                ci.ParameterName = "@ID";
                ci.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                ci.Direction = ParameterDirection.Input;
                ci.Value = _patient._ID;
                command.Parameters.Add(ci);
                command.CommandType = CommandType.StoredProcedure;
                //command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        surname = dr.GetString(2);
                        age = dr.GetInt32(3);
                        career = dr.GetString(4);
                        state = dr.GetString(5);
                        municipality = dr.GetString(6);
                        parish = dr.GetString(7);
                        _patient = new Patient(id, name, surname, age, career, state, municipality, parish);
                    }
                    dr.Close();
                    tran.Commit();
                    return _patient;
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
            finally
            {
                conn.Close();
            }
        }

        public List<Patient> consultAllPatients()
        {
            int id;
            String name;
            String surname;
            int age;
            String career;
            String state;
            String municipality;
            String parish;

            Patient _patient;
            List<Patient> patientList = new List<Patient>();

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("paciente_consultar_todos()", conn);
                
                command.CommandType = CommandType.StoredProcedure;
                //command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        surname = dr.GetString(2);
                        age = dr.GetInt32(3);
                        career = dr.GetString(4);
                        state = dr.GetString(5);
                        municipality = dr.GetString(6);
                        parish = dr.GetString(7);
                        _patient = new Patient(id, name, surname, age, career, state, municipality, parish);

                        patientList.Add(_patient);
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
            catch (NpgsqlException ex2)
            {

                throw ex2;
            }
            finally
            {
                conn.Close();
            }
        }

    }
}