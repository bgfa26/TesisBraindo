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
                NpgsqlCommand command = new NpgsqlCommand("psicologo_registrar(@cedula, @email, @clave, @primerNombre, @segundoNombre, @primerApellido, @segundoApellido, @numeroMatricula, @fechaNacimiento)", conn);
                
                
                NpgsqlParameter cedula = new NpgsqlParameter();
                NpgsqlParameter email = new NpgsqlParameter();
                NpgsqlParameter clave = new NpgsqlParameter();
                NpgsqlParameter primerNombre = new NpgsqlParameter();
                NpgsqlParameter segundoNombre = new NpgsqlParameter();
                NpgsqlParameter primerApellido = new NpgsqlParameter();
                NpgsqlParameter segundoApellido = new NpgsqlParameter();
                NpgsqlParameter numeroMatricula = new NpgsqlParameter();
                NpgsqlParameter fechaNacimiento = new NpgsqlParameter();



                cedula.ParameterName = "@cedula";
                email.ParameterName = "@email";
                clave.ParameterName = "@clave";
                primerNombre.ParameterName = "@primerNombre";
                segundoNombre.ParameterName = "@segundoNombre";
                primerApellido.ParameterName = "@primerApellido";
                segundoApellido.ParameterName = "@segundoApellido";
                numeroMatricula.ParameterName = "@numeroMatricula";
                fechaNacimiento.ParameterName = "@fechaNacimiento";

                cedula.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                clave.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                primerNombre.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                segundoNombre.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                primerApellido.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                segundoApellido.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                numeroMatricula.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                fechaNacimiento.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;


                cedula.Direction = ParameterDirection.Input;
                email.Direction = ParameterDirection.Input;
                clave.Direction = ParameterDirection.Input;
                primerNombre.Direction = ParameterDirection.Input;
                segundoNombre.Direction = ParameterDirection.Input;
                primerApellido.Direction = ParameterDirection.Input;
                segundoApellido.Direction = ParameterDirection.Input;
                numeroMatricula.Direction = ParameterDirection.Input;
                fechaNacimiento.Direction = ParameterDirection.Input;


                cedula.Value = _psychologist._ID;
                email.Value = _psychologist._Email;
                clave.Value = _psychologist._Password;
                primerNombre.Value = _psychologist._Name;
                segundoNombre.Value = _psychologist._SecondName;
                primerApellido.Value = _psychologist._Surname;
                segundoApellido.Value = _psychologist._SecondSurname;
                numeroMatricula.Value = _psychologist._RegistrationNumber;
                fechaNacimiento.Value = _psychologist._Birthdate;

                command.Parameters.Add(cedula);
                command.Parameters.Add(email);
                command.Parameters.Add(clave);
                command.Parameters.Add(primerNombre);
                command.Parameters.Add(segundoNombre);
                command.Parameters.Add(primerApellido);
                command.Parameters.Add(segundoApellido);
                command.Parameters.Add(numeroMatricula);
                command.Parameters.Add(fechaNacimiento);
                


                command.CommandType = CommandType.StoredProcedure;
                command.ExecuteNonQuery();

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        resp = dr.GetInt32(0);
                    }

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