using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Npgsql;
using Braindo.Common;
using Braindo.Model;

namespace Braindo.Model.MedicalAppointmentModule
{
    public class DAOMedicalAppointment : DAO
    {
        private NpgsqlConnection conn;

        public Appointment registerMedicalAppointment(Appointment _appointment)
        {
            int resp = 0;
            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_registrar(@DATEAPPOINTMENTM, @TIMEAPPOINTMENT, @REASON, @PATIENT, @PSYCHO)", conn);

                NpgsqlParameter dateappointment = new NpgsqlParameter();
                NpgsqlParameter timeappointment = new NpgsqlParameter();
                NpgsqlParameter reason = new NpgsqlParameter();
                NpgsqlParameter patient = new NpgsqlParameter();
                NpgsqlParameter psycho = new NpgsqlParameter();

                dateappointment.ParameterName = "@DATEAPPOINTMENTM";
                timeappointment.ParameterName = "@TIMEAPPOINTMENT";
                reason.ParameterName = "@REASON";
                patient.ParameterName = "@PATIENT";
                psycho.ParameterName = "@PSYCHO";

                dateappointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                timeappointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Time;
                reason.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                patient.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                dateappointment.Direction = ParameterDirection.Input;
                timeappointment.Direction = ParameterDirection.Input;
                reason.Direction = ParameterDirection.Input;
                patient.Direction = ParameterDirection.Input;
                psycho.Direction = ParameterDirection.Input;

                dateappointment.Value = _appointment._Date;
                timeappointment.Value = _appointment._Hour;
                reason.Value = _appointment._Reason;
                patient.Value = _appointment._Patient._ID;
                psycho.Value = _appointment._Psychologist._ID;

                command.Parameters.Add(dateappointment);
                command.Parameters.Add(timeappointment);
                command.Parameters.Add(reason);
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
                        _appointment._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _appointment._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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

        public Appointment modifyAppointment(Appointment _appointment)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_modificar(@ID, @DATEAPPOINTMENT, @TIMEAPPOINTMENT, @REASON)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                NpgsqlParameter dateappointment = new NpgsqlParameter();
                NpgsqlParameter timeappointment = new NpgsqlParameter();
                NpgsqlParameter reason = new NpgsqlParameter();

                id.ParameterName = "@ID";
                dateappointment.ParameterName = "@DATEAPPOINTMENT";
                timeappointment.ParameterName = "@TIMEAPPOINTMENT";
                reason.ParameterName = "@REASON";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                dateappointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                timeappointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Time;
                reason.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

                id.Direction = ParameterDirection.Input;
                dateappointment.Direction = ParameterDirection.Input;
                timeappointment.Direction = ParameterDirection.Input;
                reason.Direction = ParameterDirection.Input;

                id.Value = _appointment._ID;
                dateappointment.Value = _appointment._Date;
                timeappointment.Value = _appointment._Hour;
                reason.Value = _appointment._Reason;

                command.Parameters.Add(id);
                command.Parameters.Add(dateappointment);
                command.Parameters.Add(timeappointment);
                command.Parameters.Add(reason);

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
                        _appointment._Error = Registry.RESULTADO_CODIGO_RECURSO_CREADO;
                    }
                    else
                    {
                        _appointment._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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

        public Appointment deleteAppointment(Appointment _appointment)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_eliminar(@APPOINTMENT)", conn);

                NpgsqlParameter id = new NpgsqlParameter();
                id.ParameterName = "@APPOINTMENT";

                id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                id.Direction = ParameterDirection.Input;

                id.Value = _appointment._ID;

                command.Parameters.Add(id);

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
                        _appointment._Error = Registry.RESULTADO_CODIGO_BIEN;
                    }
                    else
                    {
                        _appointment._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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

        public List<Appointment> consultAllAppointment(Appointment _appointment)
        {
            int id;
            DateTime date;
            DateTime hour;
            String reason;
            int idPatient;
            String namePatient;
            String surnamePatient;
            int idPsycho;
            String namePsycho;
            String surnamePsycho;
            int idExam;

            Patient _patient;
            Psychologist _psycho;
            MentalExam _exam;

            List<Appointment> _appointmentList = new List<Appointment>();

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_consultar_todos(@PSYCHO)", conn);

                NpgsqlParameter psycho = new NpgsqlParameter();

                psycho.ParameterName = "@PSYCHO";

                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                psycho.Direction = ParameterDirection.Input;

                psycho.Value = _appointment._Psychologist._ID;

                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        date = dr.GetDateTime(1);
                        hour = dr.GetDateTime(2);
                        reason = dr.GetString(3);
                        idPatient = dr.GetInt32(4);
                        namePatient = dr.GetString(5);
                        surnamePatient = dr.GetString(6);
                        idPsycho = dr.GetInt32(7);
                        namePsycho = dr.GetString(8);
                        surnamePsycho = dr.GetString(9);

                        if (!dr.IsDBNull(10))
                        {
                            idExam = dr.GetInt32(10);
                        }
                        else
                        {
                            idExam = 0;
                        }

                        _patient = new Patient(idPatient, namePatient, surnamePatient);
                        _psycho = new Psychologist(idPsycho, namePsycho, surnamePsycho);
                        _exam = new MentalExam(idExam);

                        _appointment = new Appointment(id, date, hour, reason, _patient, _psycho, _exam);

                        _appointmentList.Add(_appointment);
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointmentList;
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

        public List<Appointment> consultRegisteredAppointments(Appointment _appointment)
        {
            int id;
            DateTime date;
            DateTime hour;
            String reason;
            int idPatient;
            String namePatient;
            String surnamePatient;
            int idPsycho;
            String namePsycho;
            String surnamePsycho;
            int idExam;

            Patient _patient;
            Psychologist _psycho;
            MentalExam _exam;

            List<Appointment> _appointmentList = new List<Appointment>();

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_consultar_registro(@PSYCHO)", conn);

                NpgsqlParameter psycho = new NpgsqlParameter();

                psycho.ParameterName = "@PSYCHO";

                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                psycho.Direction = ParameterDirection.Input;

                psycho.Value = _appointment._Psychologist._ID;

                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        date = dr.GetDateTime(1);
                        hour = dr.GetDateTime(2);
                        reason = dr.GetString(3);
                        idPatient = dr.GetInt32(4);
                        namePatient = dr.GetString(5);
                        surnamePatient = dr.GetString(6);
                        idPsycho = dr.GetInt32(7);
                        namePsycho = dr.GetString(8);
                        surnamePsycho = dr.GetString(9);

                        if (!dr.IsDBNull(10))
                        {
                            idExam = dr.GetInt32(10);
                        }
                        else
                        {
                            idExam = 0;
                        }

                        _patient = new Patient(idPatient, namePatient, surnamePatient);
                        _psycho = new Psychologist(idPsycho, namePsycho, surnamePsycho);
                        _exam = new MentalExam(idExam);

                        _appointment = new Appointment(id, date, hour, reason, _patient, _psycho, _exam);

                        _appointmentList.Add(_appointment);
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointmentList;
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

        public Appointment consultAppointment(Appointment _appointment)
        {
            int id;
            DateTime date;
            DateTime hour;
            String reason;
            int idPatient;
            String namePatient;
            String surnamePatient;
            int idPsycho;
            String namePsycho;
            String surnamePsycho;
            int idExam;

            Patient _patient;
            Psychologist _psycho;
            MentalExam _exam;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_consultar(@DATEAPPOINTMENT, @TIMEAPPOINTMENT, @PATIENT, @PSYCHO)", conn);

                NpgsqlParameter dateapp = new NpgsqlParameter();
                NpgsqlParameter hourapp = new NpgsqlParameter();
                NpgsqlParameter patient = new NpgsqlParameter();
                NpgsqlParameter psycho = new NpgsqlParameter();

                dateapp.ParameterName = "@DATEAPPOINTMENT";
                hourapp.ParameterName = "@TIMEAPPOINTMENT";
                patient.ParameterName = "@PATIENT";
                psycho.ParameterName = "@PSYCHO";

                dateapp.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                hourapp.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Time;
                patient.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                psycho.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                dateapp.Direction = ParameterDirection.Input;
                hourapp.Direction = ParameterDirection.Input;
                patient.Direction = ParameterDirection.Input;
                psycho.Direction = ParameterDirection.Input;

                dateapp.Value = _appointment._Date;
                hourapp.Value = _appointment._Hour;
                patient.Value = _appointment._Patient._ID;
                psycho.Value = _appointment._Psychologist._ID;

                command.Parameters.Add(dateapp);
                command.Parameters.Add(hourapp);
                command.Parameters.Add(patient);
                command.Parameters.Add(psycho);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        date = dr.GetDateTime(1);
                        hour = dr.GetDateTime(2);
                        reason = dr.GetString(3);
                        idPatient = dr.GetInt32(4);
                        namePatient = dr.GetString(5);
                        surnamePatient = dr.GetString(6);
                        idPsycho = dr.GetInt32(7);
                        namePsycho = dr.GetString(8);
                        surnamePsycho = dr.GetString(9);
                        if (!dr.IsDBNull(10))
                        {
                            idExam = dr.GetInt32(10);
                        }
                        else
                        {
                            idExam = 0;
                        }

                        _patient = new Patient(idPatient, namePatient, surnamePatient);
                        _psycho = new Psychologist(idPsycho, namePsycho, surnamePsycho);
                        _exam = new MentalExam(idExam);

                        _appointment = new Appointment(id, date, hour, reason, _patient, _psycho, _exam);
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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

        public Appointment consultDetailedAppointment(Appointment _appointment)
        {
            int id;
            DateTime date;
            DateTime hour;
            String reason;
            int idPatient;
            String namePatient;
            String surnamePatient;
            int idPsycho;
            String namePsycho;
            String surnamePsycho;
            int idExam;

            Patient _patient;
            Psychologist _psycho;
            MentalExam _exam;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_consultar_detalle(@ID)", conn);

                NpgsqlParameter appointment = new NpgsqlParameter();

                appointment.ParameterName = "@ID";

                appointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                appointment.Direction = ParameterDirection.Input;

                appointment.Value = _appointment._ID;

                command.Parameters.Add(appointment);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        date = dr.GetDateTime(1);
                        hour = dr.GetDateTime(2);
                        reason = dr.GetString(3);
                        idPatient = dr.GetInt32(4);
                        namePatient = dr.GetString(5);
                        surnamePatient = dr.GetString(6);
                        idPsycho = dr.GetInt32(7);
                        namePsycho = dr.GetString(8);
                        surnamePsycho = dr.GetString(9);
                        if (!dr.IsDBNull(10))
                        {
                            idExam = dr.GetInt32(10);
                        }
                        else
                        {
                            idExam = 0;
                        }

                            _patient = new Patient(idPatient, namePatient, surnamePatient);
                            _psycho = new Psychologist(idPsycho, namePsycho, surnamePsycho);
                            _exam = new MentalExam(idExam);

                            _appointment = new Appointment(id, date, hour, reason, _patient, _psycho, _exam);

                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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

        public Appointment MedicalAppointmentExist(Appointment _appointment)
        {
            int resp = 0;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand("cita_existe(@DATEAPPOINTMENT, @TIMEAPPOINTMENT)", conn);

                NpgsqlParameter dateAppointment = new NpgsqlParameter();
                NpgsqlParameter hourAppointment = new NpgsqlParameter();

                dateAppointment.ParameterName = "@DATEAPPOINTMENT";
                hourAppointment.ParameterName = "@TIMEAPPOINTMENT";

                dateAppointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                hourAppointment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Time;

                dateAppointment.Direction = ParameterDirection.Input;
                hourAppointment.Direction = ParameterDirection.Input;

                dateAppointment.Value = _appointment._Date;
                hourAppointment.Value = _appointment._Hour;

                command.Parameters.Add(dateAppointment);
                command.Parameters.Add(hourAppointment);

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
                        _appointment._Error = Registry.RESULTADO_CODIGO_BIEN;
                    }
                    else
                    {
                        _appointment._Error = Registry.RESULTADO_CODIGO_FALLIDO;
                    }
                    dr.Close();
                    tran.Commit();
                    return _appointment;
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