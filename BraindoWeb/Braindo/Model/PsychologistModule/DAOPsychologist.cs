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

        public Psychologist modifyInformation(Psychologist _psychologist)
        {
            Psychologist _psychoModify = new Psychologist();
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_modificar_datos(@id, @mail, @name, @secondname, @surname, @secondsurname, @registrationnumber, @birthdate)", conn);


                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter mail = new NpgsqlParameter();
                NpgsqlParameter name = new NpgsqlParameter();
                NpgsqlParameter secondname = new NpgsqlParameter();
                NpgsqlParameter surname = new NpgsqlParameter();
                NpgsqlParameter secondsurname = new NpgsqlParameter();
                NpgsqlParameter registrationnumber = new NpgsqlParameter();
                NpgsqlParameter birthdate = new NpgsqlParameter();



                id.ParameterName = "@id";
                mail.ParameterName = "@mail";
                name.ParameterName = "@name";
                secondname.ParameterName = "@secondname";
                surname.ParameterName = "@surname";
                secondsurname.ParameterName = "@secondsurname";
                registrationnumber.ParameterName = "@registrationnumber";
                birthdate.ParameterName = "@birthdate";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                mail.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                surname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondsurname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                registrationnumber.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                birthdate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;


                id.Direction = ParameterDirection.InputOutput;
                mail.Direction = ParameterDirection.InputOutput;
                name.Direction = ParameterDirection.InputOutput;
                secondname.Direction = ParameterDirection.InputOutput;
                surname.Direction = ParameterDirection.InputOutput;
                secondsurname.Direction = ParameterDirection.InputOutput;
                registrationnumber.Direction = ParameterDirection.InputOutput;
                birthdate.Direction = ParameterDirection.InputOutput;


                id.Value = _psychologist._ID;
                mail.Value = _psychologist._Email;
                name.Value = _psychologist._Name;
                secondname.Value = _psychologist._SecondName;
                surname.Value = _psychologist._Surname;
                secondsurname.Value = _psychologist._SecondSurname;
                registrationnumber.Value = _psychologist._RegistrationNumber;
                birthdate.Value = _psychologist._Birthdate;

                command.Parameters.Add(id);
                command.Parameters.Add(mail);
                command.Parameters.Add(name);
                command.Parameters.Add(secondname);
                command.Parameters.Add(surname);
                command.Parameters.Add(secondsurname);
                command.Parameters.Add(registrationnumber);
                command.Parameters.Add(birthdate);
                


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
            finally
            {
                conn.Close();
            }

        }

        public Psychologist changePassword (Psychologist _psychologist)
        {

            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_modificar_clave(@id, @pass)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter pass = new NpgsqlParameter();


                id.ParameterName = "@id";
                pass.ParameterName = "@pass";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                pass.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                id.Direction = ParameterDirection.InputOutput;
                pass.Direction = ParameterDirection.InputOutput;

                id.Value = _psychologist._ID;
                pass.Value = _psychologist._Password;

                command.Parameters.Add(id);
                command.Parameters.Add(pass);

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
            finally
            {
                conn.Close();
            }

        }

        public Psychologist consultIInformation(Psychologist _psychologist)
        {
            Psychologist _psychoConsult = new Psychologist();
            int id;
            String email;
            String pass;
            String name;
            String secondName;
            String surname;
            String secondSurname;
            String registrationNumber;
            DateTime birthdate;
            
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_consultar(@ci)", conn);
                NpgsqlParameter p = new NpgsqlParameter();
                p.ParameterName = "@ci";
                p.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                p.Direction = ParameterDirection.InputOutput;
                p.Value = _psychologist._ID;
                command.Parameters.Add(p);
                command.CommandType = CommandType.StoredProcedure;
                command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        email = dr.GetString(1);
                        pass = dr.GetString(2);
                        name = dr.GetString(3);
                        secondName = dr.GetString(4);
                        surname = dr.GetString(5);
                        secondSurname = dr.GetString(6);
                        registrationNumber = dr.GetString(7);
                        birthdate = dr.GetDateTime(8);
                        _psychologist = new Psychologist(id, email, pass, name, secondName, surname, secondSurname, registrationNumber, birthdate);

                    }
                    dr.Close();
                    tran.Commit();
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
            finally
            {
                conn.Close();
            }
        }
        
    }
}