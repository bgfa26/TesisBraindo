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

        public Psychologist registerPsychologist(Psychologist _psychologist)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_registrar(@ID, @MAIL, @PASS, @NAME, @SECONDNAME, @SURNAME, @SECONDSURNAME, @REGISTRATIONNUMBER, @BIRTHDATE)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter pass = new NpgsqlParameter();
                NpgsqlParameter mail = new NpgsqlParameter();
                NpgsqlParameter name = new NpgsqlParameter();
                NpgsqlParameter secondname = new NpgsqlParameter();
                NpgsqlParameter surname = new NpgsqlParameter();
                NpgsqlParameter secondsurname = new NpgsqlParameter();
                NpgsqlParameter registrationnumber = new NpgsqlParameter();
                NpgsqlParameter birthdate = new NpgsqlParameter();

                id.ParameterName = "@ID";
                mail.ParameterName = "@MAIL";
                pass.ParameterName = "@PASS";
                name.ParameterName = "@NAME";
                secondname.ParameterName = "@SECONDNAME";
                surname.ParameterName = "@SURNAME";
                secondsurname.ParameterName = "@SECONDSURNAME";
                registrationnumber.ParameterName = "@REGISTRATIONNUMBER";
                birthdate.ParameterName = "@BIRTHDATE";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                mail.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                pass.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                surname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondsurname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                registrationnumber.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                birthdate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;

                id.Direction = ParameterDirection.Input;
                mail.Direction = ParameterDirection.Input;
                pass.Direction = ParameterDirection.Input;
                name.Direction = ParameterDirection.Input;
                secondname.Direction = ParameterDirection.Input;
                surname.Direction = ParameterDirection.Input;
                secondsurname.Direction = ParameterDirection.Input;
                registrationnumber.Direction = ParameterDirection.Input;
                birthdate.Direction = ParameterDirection.Input;

                id.Value = _psychologist._ID;
                mail.Value = _psychologist._Email;
                pass.Value = _psychologist._Password;
                name.Value = _psychologist._Name;
                secondname.Value = _psychologist._SecondName;
                surname.Value = _psychologist._Surname;
                secondsurname.Value = _psychologist._SecondSurname;
                registrationnumber.Value = _psychologist._RegistrationNumber;
                birthdate.Value = _psychologist._Birthdate;

                command.Parameters.Add(id);
                command.Parameters.Add(mail);
                command.Parameters.Add(pass);
                command.Parameters.Add(name);
                command.Parameters.Add(secondname);
                command.Parameters.Add(surname);
                command.Parameters.Add(secondsurname);
                command.Parameters.Add(registrationnumber);
                command.Parameters.Add(birthdate);

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
                        _psychologist._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _psychologist._Error = Registry.RESULTADO_CODIGO_FALLIDO;
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

        public Psychologist modifyInformation(Psychologist _psychologist)
        {
            Psychologist _psychoModify = new Psychologist();
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("psicologo_modificar_datos(@ID, @MAIL, @NAME, @SECONDNAME, @SURNAME, @SECONDSURNAME, @REGISTRATIONNUMBER, @BIRTHDATE)", conn);


                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter mail = new NpgsqlParameter();
                NpgsqlParameter name = new NpgsqlParameter();
                NpgsqlParameter secondname = new NpgsqlParameter();
                NpgsqlParameter surname = new NpgsqlParameter();
                NpgsqlParameter secondsurname = new NpgsqlParameter();
                NpgsqlParameter registrationnumber = new NpgsqlParameter();
                NpgsqlParameter birthdate = new NpgsqlParameter();



                id.ParameterName = "@ID";
                mail.ParameterName = "@MAIL";
                name.ParameterName = "@NAME";
                secondname.ParameterName = "@SECONDNAME";
                surname.ParameterName = "@SURNAME";
                secondsurname.ParameterName = "@SECONDSURNAME";
                registrationnumber.ParameterName = "@REGISTRATIONNUMBER";
                birthdate.ParameterName = "@BIRTHDATE";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                mail.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                surname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                secondsurname.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                registrationnumber.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                birthdate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;


                id.Direction = ParameterDirection.Input;
                mail.Direction = ParameterDirection.Input;
                name.Direction = ParameterDirection.Input;
                secondname.Direction = ParameterDirection.Input;
                surname.Direction = ParameterDirection.Input;
                secondsurname.Direction = ParameterDirection.Input;
                registrationnumber.Direction = ParameterDirection.Input;
                birthdate.Direction = ParameterDirection.Input;


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
                        _psychologist._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _psychologist._Error = Registry.RESULTADO_CODIGO_FALLIDO;
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
                NpgsqlCommand command = new NpgsqlCommand("psicologo_modificar_clave(@ID, @PASS)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter pass = new NpgsqlParameter();


                id.ParameterName = "@ID";
                pass.ParameterName = "@PASS";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                pass.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                id.Direction = ParameterDirection.Input;
                pass.Direction = ParameterDirection.Input;

                id.Value = _psychologist._ID;
                pass.Value = _psychologist._Password;

                command.Parameters.Add(id);
                command.Parameters.Add(pass);

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
                        _psychologist._Error = resp;
                    }
                    else
                    {
                        _psychologist._Error = Registry.RESULTADO_CODIGO_NO_ENCONTRADO;
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
                NpgsqlCommand command = new NpgsqlCommand("psicologo_consultar(@CI)", conn);
                NpgsqlParameter p = new NpgsqlParameter();
                p.ParameterName = "@CI";
                p.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                p.Direction = ParameterDirection.Input;
                p.Value = _psychologist._ID;
                command.Parameters.Add(p);
                command.CommandType = CommandType.StoredProcedure;
                //command.ExecuteNonQuery();

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

        public Psychologist loginPsychologist(Psychologist _psychologist)
        {
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
                NpgsqlCommand command = new NpgsqlCommand("psicologo_iniciarsesion(@PSYCHOEMAIL, @PSYCHOPASS)", conn);

                NpgsqlParameter _email = new NpgsqlParameter();
                NpgsqlParameter _pass = new NpgsqlParameter();

                _email.ParameterName = "@PSYCHOEMAIL";
                _pass.ParameterName = "@PSYCHOPASS";

                _email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                _pass.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                _email.Direction = ParameterDirection.Input;
                _pass.Direction = ParameterDirection.Input;

                _email.Value = _psychologist._Email;
                _pass.Value = _psychologist._Password;

                command.Parameters.Add(_email);
                command.Parameters.Add(_pass);

                command.CommandType = CommandType.StoredProcedure;
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