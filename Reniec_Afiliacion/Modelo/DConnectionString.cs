using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace DataTierGenerator
{
    public class DConnectionString
    {
        private readonly static string Server = ConfigurationManager.AppSettings["Server"];
        private readonly static string DataBase = ConfigurationManager.AppSettings["DataBase"];
        private readonly static string User = ConfigurationManager.AppSettings["User"];
        private readonly static string Password = ConfigurationManager.AppSettings["Password"];

        private static DConnectionString instance = null;
        public string connectionString = "";

        protected DConnectionString()
        {
            connectionString = this.ConnectionString();
        }

        public static DConnectionString Istance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DConnectionString();
                }
                return instance;
            }
        }

        public string ConnectionString()
        {
            string connection = "";

            try
            {
                SqlConnectionStringBuilder connectionBuilder = new SqlConnectionStringBuilder
                {
                    DataSource = Server,
                    InitialCatalog = DataBase,
                    UserID = User,
                    Password = Password,
                };
                connection = connectionBuilder.ToString();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                connection = "";
            }

            return connection;
        }
    }
}
