using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;


namespace Braindo.Model.MentalExamModule
{
    public class DAOMentalExam : DAO
    {
        private NpgsqlConnection conn;

        public MentalExam registerMentalExam(MentalExam _mentalExam)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("examenmental_registrar(@ID, @BEHAVIOR, @ATTITUDE, @ALERTNESS, @AWARENESS, @MOOD, @LANGUAGE, @THOUGHT)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter behavior = new NpgsqlParameter();
                NpgsqlParameter attitude = new NpgsqlParameter();
                NpgsqlParameter alertness = new NpgsqlParameter();
                NpgsqlParameter awareness = new NpgsqlParameter();
                NpgsqlParameter mood = new NpgsqlParameter();
                NpgsqlParameter language = new NpgsqlParameter();
                NpgsqlParameter thought = new NpgsqlParameter();


                id.ParameterName = "@ID";
                behavior.ParameterName = "@BEHAVIOR";
                attitude.ParameterName = "@ATTITUDE";
                alertness.ParameterName = "@ALERTNESS";
                awareness.ParameterName = "@AWARENESS";
                mood.ParameterName = "@MOOD";
                language.ParameterName = "@LANGUAGE";
                thought.ParameterName = "@THOUGHT";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                behavior.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                attitude.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                alertness.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                awareness.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                mood.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                language.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                thought.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;


                id.Direction = ParameterDirection.Input;
                behavior.Direction = ParameterDirection.Input;
                attitude.Direction = ParameterDirection.Input;
                alertness.Direction = ParameterDirection.Input;
                awareness.Direction = ParameterDirection.Input;
                mood.Direction = ParameterDirection.Input;
                language.Direction = ParameterDirection.Input;
                thought.Direction = ParameterDirection.Input;

                id.Value = _mentalExam._Appointment._ID;
                behavior.Value = _mentalExam._Behavior;
                attitude.Value = _mentalExam._Attitude;
                alertness.Value = _mentalExam._Attention;
                awareness.Value = _mentalExam._Awareness;
                mood.Value = _mentalExam._Mood;
                language.Value = _mentalExam._Language;
                thought.Value = _mentalExam._Thought;


                command.Parameters.Add(id);
                command.Parameters.Add(behavior);
                command.Parameters.Add(attitude);
                command.Parameters.Add(alertness);
                command.Parameters.Add(awareness);
                command.Parameters.Add(mood);
                command.Parameters.Add(language);
                command.Parameters.Add(thought);

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
                        _mentalExam._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _mentalExam._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _mentalExam;
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

        public MentalExam consultMentalExam(MentalExam _mentalExam)
        {
            int id;
            String behavior;
            String attitude;
            String alertness;
            String awareness;
            String mood;
            String language;
            String thought;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("examenmental_consultar(@ID)", conn);
                NpgsqlParameter ID = new NpgsqlParameter();

                ID.ParameterName = "@ID";
                ID.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                ID.Direction = ParameterDirection.Input;

                ID.Value = _mentalExam._ID;
                command.Parameters.Add(ID);

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        behavior = dr.GetString(1);
                        attitude = dr.GetString(2);
                        alertness = dr.GetString(3);
                        awareness = dr.GetString(4);
                        mood = dr.GetString(5);
                        language = dr.GetString(6);
                        thought = dr.GetString(7);
                        _mentalExam = new MentalExam(id, behavior, attitude, alertness, awareness, mood, language, thought);
                    }
                    dr.Close();
                    tran.Commit();
                    return _mentalExam;
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