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
                NpgsqlCommand command = new NpgsqlCommand("examenmental_regisrar(@BEHAVIOR, @ATTITUDE, @ALERTNESS, @AWARENESS, @MOOD, @LANGUAGE, @THOUGHT)", conn);

                
                NpgsqlParameter behavior = new NpgsqlParameter();
                NpgsqlParameter attitude = new NpgsqlParameter();
                NpgsqlParameter alertness = new NpgsqlParameter();
                NpgsqlParameter awareness = new NpgsqlParameter();
                NpgsqlParameter mood = new NpgsqlParameter();
                NpgsqlParameter language = new NpgsqlParameter();
                NpgsqlParameter thought = new NpgsqlParameter();

                
                behavior.ParameterName = "@BEHAVIOR";
                attitude.ParameterName = "@ATTITUDE";
                alertness.ParameterName = "@ALERTNESS";
                awareness.ParameterName = "@AWARENESS";
                mood.ParameterName = "@MOOD";
                language.ParameterName = "@LANGUAGE";
                thought.ParameterName = "@THOUGHT";

                
                behavior.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                attitude.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                alertness.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                awareness.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                mood.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                language.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                thought.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                
                behavior.Direction = ParameterDirection.Input;
                attitude.Direction = ParameterDirection.Input;
                alertness.Direction = ParameterDirection.Input;
                awareness.Direction = ParameterDirection.Input;
                mood.Direction = ParameterDirection.Input;
                language.Direction = ParameterDirection.Input;
                thought.Direction = ParameterDirection.Input;

                
                behavior.Value = _mentalExam._Behavior;
                attitude.Value = _mentalExam._Attitude;
                alertness.Value = _mentalExam._Attention;
                awareness.Value = _mentalExam._Awareness;
                mood.Value = _mentalExam._Mood;
                language.Value = _mentalExam._Language;
                thought.Value = _mentalExam._Thought;


                command.Parameters.Add(behavior);
                command.Parameters.Add(attitude);
                command.Parameters.Add(alertness);
                command.Parameters.Add(awareness);
                command.Parameters.Add(mood);
                command.Parameters.Add(language);
                command.Parameters.Add(thought);

                command.CommandType = CommandType.StoredProcedure;
                command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
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
    }
}