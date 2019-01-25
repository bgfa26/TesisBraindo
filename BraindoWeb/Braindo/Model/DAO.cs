using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;

namespace Braindo.Model
{
    public class DAO
    {

        private static NpgsqlConnection conn = null;
        private static NpgsqlConnection conInstance;

        public static NpgsqlConnection getConInstance()
        {
            try
            {
                conInstance = getConnection();
            }
            catch (Exception e)
            {
                
                throw e;
            }

            return conInstance;
        }

        public static NpgsqlConnection getConnection()
        {
            string connstring = String.Format("Server={0};Port={1};" +
                    "User Id={2};Password={3};Database={4};Encoding={5};",
                    "localhost", "5432", "tesisbraindo",
                    "barron", "braindo", "Unicode");

            try
            {
                conn = new NpgsqlConnection(connstring);
                conn.Open();
            }
            catch (NpgsqlException e)
            {
                throw e;
            }

            return conn;
        }

        protected static void closeConnection()
        {
            try
            {
                conn.Close();
            }
            catch (NpgsqlException e)
            {

                throw e;
            }

        }

    }
}