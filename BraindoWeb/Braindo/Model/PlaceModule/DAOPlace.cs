using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.Model.PlaceModule
{
    public class DAOPlace : DAO
    {
        private NpgsqlConnection conn;

        public List<Place> consultState()
        {

            int id;
            String name;
            List<Place> stateList = new List<Place>();
            Place _state;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estado_consultar_todos()", conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);

                        _state = new Place(id, name);

                        stateList.Add(_state);
                    }
                    dr.Close();
                    tran.Commit();
                    return stateList;
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

        public List<Place> consultMunicipality(Place _place)
        {
            int id;
            String name;
            List<Place> municipalityList = new List<Place>();
            Place _municipality;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("municipio_consultar_todos(@STATE_ID)", conn);

                NpgsqlParameter idState = new NpgsqlParameter();

                idState.ParameterName = "@STATE_ID";

                idState.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                idState.Direction = ParameterDirection.Input;

                idState.Value = _place._ID;

                command.Parameters.Add(idState);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);

                        _municipality = new Place(id, name);

                        municipalityList.Add(_municipality);

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
            catch (NpgsqlException ex2)
            {
                
                throw ex2;
            }
            finally
            {
                conn.Close();
            }
        }

        public List<Place> consultParish(Place _place)
        {
            int id;
            String name;
            List<Place> parishList = new List<Place>();
            Place _parish;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("parroquia_consultar_todos(@MUN_ID)", conn);

                NpgsqlParameter idState = new NpgsqlParameter();

                idState.ParameterName = "@MUN_ID";

                idState.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                idState.Direction = ParameterDirection.Input;

                idState.Value = _place._ID;

                command.Parameters.Add(idState);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);

                        _parish = new Place(id, name);

                        parishList.Add(_parish);

                    }
                    dr.Close();
                    tran.Commit();
                    return parishList;
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

        public Place consultStateID(Place _place)
        {
            int id;
            String name;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("estado_consultar_codigo(@NAME)", conn);

                NpgsqlParameter nameState = new NpgsqlParameter();

                nameState.ParameterName = "@NAME";

                nameState.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                nameState.Direction = ParameterDirection.Input;

                nameState.Value = _place._Name;

                command.Parameters.Add(nameState);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);

                        _place = new Place(id, name);

                    }
                    dr.Close();
                    tran.Commit();
                    return _place;
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

        public Place consultMunicipalityID(Place _place)
        {
            int id;
            String name;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("municipio_consultar_codigo(@NAME)", conn);

                NpgsqlParameter nameState = new NpgsqlParameter();

                nameState.ParameterName = "@NAME";

                nameState.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                nameState.Direction = ParameterDirection.Input;

                nameState.Value = _place._Name;

                command.Parameters.Add(nameState);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);

                        _place = new Place(id, name);

                    }
                    dr.Close();
                    tran.Commit();
                    return _place;
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