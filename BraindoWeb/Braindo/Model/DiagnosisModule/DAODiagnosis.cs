using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.Model.DiagnosisModule
{
    public class DAODiagnosis : DAO
    {

        private NpgsqlConnection conn;

        public Diagnostic registerDiagnostic(Diagnostic _diagnostic)
        {
            Diagnostic _registerDiagnosis = new Diagnostic();
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("diagnostico_registrar(@DIAGNOSISDATE, @ANSWER, @ANSWER_RED, @PATIENT, @PSYCHO)", conn);

                NpgsqlParameter date = new NpgsqlParameter();
                NpgsqlParameter answer_percentage = new NpgsqlParameter();
                NpgsqlParameter answer_red = new NpgsqlParameter();
                NpgsqlParameter patient = new NpgsqlParameter();
                NpgsqlParameter psycho = new NpgsqlParameter();

                date.ParameterName = "@DIAGNOSISDATE";
                answer_percentage.ParameterName = "@ANSWER";
                answer_red.ParameterName = "@ANSWER_RED";
                patient.ParameterName = "@PATIENT";
                psycho.ParameterName = "@PSYCHO";

                date.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                answer_percentage.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                answer_red.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                patient.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                date.Direction = ParameterDirection.Input;
                answer_percentage.Direction = ParameterDirection.Input;
                answer_red.Direction = ParameterDirection.Input;
                patient.Direction = ParameterDirection.Input;
                psycho.Direction = ParameterDirection.Input;

                date.Value = _diagnostic._Date;
                answer_percentage.Value = _diagnostic._Answer;
                answer_red.Value = _diagnostic._NetworkAnswer;
                patient.Value = _diagnostic._Patient._ID;
                psycho.Value = _diagnostic._Psychologist._Email;

                command.Parameters.Add(date);
                command.Parameters.Add(answer_percentage);
                command.Parameters.Add(answer_red);
                command.Parameters.Add(patient);
                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
                    }
                    if (resp == Registry.RESULTADO_CODIGO_RECURSO_CREADO)
                    {
                        _diagnostic._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _diagnostic._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _diagnostic;
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

        public Diagnostic deleteDiagnostic(Diagnostic _diagnostic)
        {
            Diagnostic _deleteDiagnosis = new Diagnostic();
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("diagnostico_borrar(@DIAGNOSIS)", conn);

                NpgsqlParameter diagnostic= new NpgsqlParameter();

                diagnostic.ParameterName = "@DIAGNOSIS";

                diagnostic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                diagnostic.Direction = ParameterDirection.Input;

                diagnostic.Value = _diagnostic._ID;

                command.Parameters.Add(diagnostic);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
                    }
                    if (resp == Registry.RESULTADO_CODIGO_BIEN)
                    {
                        _diagnostic._Error = Registry.RESULTADO_CODIGO_BIEN;
                    }
                    else
                    {
                        _diagnostic._Error = Registry.RESULTADO_CODIGO_NO_ENCONTRADO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _diagnostic;
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

        public List<Diagnostic> consultDiagnostic(Diagnostic _diagnostic)
        {
            Patient _patient;
            Psychologist _psycho;

            int id;
            DateTime diagnosisDate;
            String feelings;
            String emotions;
            String answer;
            String networkAnswer;
            double totalAnxiety;
            String patientName;
            String patientSurname;
            String psychoName;
            String psychoSurname;

            List<Diagnostic> diagnosticList = new List<Diagnostic>();

            String DiagnosisDateString;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("diagnostico_consultar(@PATIENT, @PSYCHO)", conn);

                NpgsqlParameter patient = new NpgsqlParameter();
                NpgsqlParameter psycho = new NpgsqlParameter();

                patient.ParameterName = "@PATIENT";
                psycho.ParameterName = "@PSYCHO";

                patient.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                patient.Direction = ParameterDirection.Input;
                psycho.Direction = ParameterDirection.Input;

                patient.Value = _diagnostic._Patient._ID;
                psycho.Value = _diagnostic._Psychologist._ID;

                command.Parameters.Add(patient);
                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        diagnosisDate = dr.GetDateTime(1);
                        feelings = dr.GetString(2);
                        emotions = dr.GetString(3);
                        answer = dr.GetString(4);
                        networkAnswer = dr.GetString(5);
                        totalAnxiety = dr.GetDouble(6);
                        patientName = dr.GetString(7);
                        patientSurname = dr.GetString(8);
                        psychoName = dr.GetString(9);
                        psychoSurname = dr.GetString(10);

                        DiagnosisDateString = diagnosisDate.ToString("dd-MM-yyyy");

                        _patient = new Patient(patientName, patientSurname);
                        _psycho = new Psychologist(psychoName, psychoSurname);

                        _diagnostic = new Diagnostic(id, DiagnosisDateString, feelings, emotions, answer, networkAnswer, totalAnxiety, _patient, _psycho);

                        diagnosticList.Add(_diagnostic);
                    }
                    dr.Close();
                    tran.Commit();
                    return diagnosticList;
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

        public List<Diagnostic> consultDiagnosticIDPsycho(Diagnostic _diagnostic)
        {
            Patient _patient;
            Psychologist _psycho;

            int id;
            DateTime diagnosisDate;
            String feelings;
            String emotions;
            String answer;
            String networkAnswer;
            double totalAnxiety;
            int ciPatient;
            String patientName;
            String patientSurname;
            int ciPsycho;
            String psychoName;
            String psychoSurname;

            List<Diagnostic> diagnosticList = new List<Diagnostic>();

            String DiagnosisDateString;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("diagnostico_consultar_idpsycho(@PSYCHO)", conn);

                NpgsqlParameter psycho = new NpgsqlParameter();

                psycho.ParameterName = "@PSYCHO";

                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                psycho.Direction = ParameterDirection.Input;

                psycho.Value = _diagnostic._Psychologist._ID;

                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        diagnosisDate = dr.GetDateTime(1);
                        feelings = dr.GetString(2);
                        emotions = dr.GetString(3);
                        answer = dr.GetString(4);
                        networkAnswer = dr.GetString(5);
                        totalAnxiety = dr.GetDouble(6);
                        ciPatient = dr.GetInt32(7);
                        patientName = dr.GetString(8);
                        patientSurname = dr.GetString(9);
                        ciPsycho = dr.GetInt32(10);
                        psychoName = dr.GetString(11);
                        psychoSurname = dr.GetString(12);

                        DiagnosisDateString = diagnosisDate.ToString("dd-MM-yyyy");

                        _patient = new Patient(ciPatient, patientName, patientSurname);
                        _psycho = new Psychologist(ciPsycho, psychoName, psychoSurname);

                        _diagnostic = new Diagnostic(id, DiagnosisDateString, feelings, emotions, answer, networkAnswer, totalAnxiety, _patient, _psycho);

                        diagnosticList.Add(_diagnostic);
                    }
                    dr.Close();
                    tran.Commit();
                    return diagnosticList;
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

        public Diagnostic consultDiagnosticDetailed(Diagnostic _diagnostic)
        {

            Patient _patient;
            Psychologist _psycho;

            int id;
            DateTime diagnosisDate;
            String feelings;
            String emotions;
            String answer;
            String networkAnswer;
            Double totalAnxiety;
            String patientName;
            String patientSurname;
            String psychoName;
            String psychoSurname;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("diagnostico_consultar_detalle(@DIAGNOSIS)", conn);

                NpgsqlParameter diagnosis = new NpgsqlParameter();

                diagnosis.ParameterName = "@DIAGNOSIS";

                diagnosis.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                diagnosis.Direction = ParameterDirection.Input;

                diagnosis.Value = _diagnostic._ID;

                command.Parameters.Add(diagnosis);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        diagnosisDate = dr.GetDateTime(1);
                        feelings = dr.GetString(2);
                        emotions = dr.GetString(3);
                        answer = dr.GetString(4);
                        networkAnswer = dr.GetString(5);
                        totalAnxiety = dr.GetDouble(6);
                        patientName = dr.GetString(7);
                        patientSurname = dr.GetString(8);
                        psychoName = dr.GetString(9);
                        psychoSurname = dr.GetString(10);

                        _patient = new Patient(patientName, patientSurname);
                        _psycho = new Psychologist(psychoName, psychoSurname);

                        _diagnostic = new Diagnostic(id, diagnosisDate, feelings, emotions, answer, networkAnswer, totalAnxiety, _patient, _psycho);
                    }
                    dr.Close();
                    tran.Commit();
                    return _diagnostic;
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