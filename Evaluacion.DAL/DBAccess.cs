using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;


namespace Evaluacion.DAL
{
    public class DBAccess : IDisposable
    {

        private IDbCommand cmd = new SqlCommand();
        private string strConnectionString = "";
        private bool handleErrors = false;
        private string strLastError = "";

        public DBAccess()
        {

            //ConnectionStringSettings objConnectionStringSettings = ConfigurationManager.ConnectionStrings["ConnectionString"];
            //strConnectionString = objConnectionStringSettings.ConnectionString;
            //strConnectionString = "server=localhost;Database=sigespe_evaluacionFid_Test; integrated security= false; user id=sa; password=codigolinux89";
            strConnectionString = "server=SQL2012.dbsqlserver.com,1288;Database=sigespe_evaluacionFid; integrated security= false; user id=sigespe_evaluacionsa; password=Sistemas.12; ";

            //strConnectionString = "Server=192.168.1.12;Initial Catalog = ILatinTours02032010; integrated security=false; user id=sa; password=server";
            SqlConnection cnn = new SqlConnection();
      
            cnn.ConnectionString = strConnectionString;
            cmd.Connection = cnn;
            cmd.CommandTimeout = 0;
            cmd.CommandType = CommandType.StoredProcedure;
        }


        public IDataReader ExecuteReader()
        {
            IDataReader reader = null;
            try
            {
                this.Open();
                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return reader;
        }

        public IDataReader ExecuteReader(string commandtext)
        {
            IDataReader reader = null;
            try
            {
                cmd.CommandText = commandtext;
                reader = this.ExecuteReader();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return reader;
        }

        public object ExecuteScalar()
        {
            object obj = null;
            try
            {
                this.Open();
                obj = cmd.ExecuteScalar();
                this.Close();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return obj;
        }

        public object ExecuteScalar(string commandtext)
        {
            object obj = null;
            try
            {
                cmd.CommandText = commandtext;
                obj = this.ExecuteScalar();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return obj;
        }

        public int ExecuteNonQuery()
        {
            int i = -1;
            try
            {
                this.Open();
                i = cmd.ExecuteNonQuery();
                this.Close();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return i;
        }


        public int ExecuteNonQuery(string commandtext)
        {
            int i = -1;
            try
            {
                cmd.CommandText = commandtext;
                i = this.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return i;
        }

        public DataTable ExecuteDataTable()
        {
            SqlDataAdapter da = null;
            DataTable dt = null;

            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = (SqlCommand)cmd;
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                if (handleErrors)
                {
                    strLastError = ex.Message;
                }
                else
                {
                    throw;
                }
            }
            catch
            {
                throw;
            }
            return dt;
        }

        public DataTable ExecuteDataTable(string commandtext)
        {
            DataTable dt = null;

            try
            {
                cmd.CommandText = commandtext;
                dt = this.ExecuteDataTable();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                {
                    strLastError = ex.Message;
                }
                else
                {
                    throw;
                }
            }
            catch
            {
                throw;
            }
            return dt;
        }

        public DataSet ExecuteDataSet()
        {
            SqlDataAdapter da = null;
            DataSet ds = null;
            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = (SqlCommand)cmd;
                ds = new DataSet();
                da.Fill(ds);
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return ds;
        }


        public DataSet ExecuteDataSet(string commandtext)
        {
            DataSet ds = null;
            try
            {
                cmd.CommandText = commandtext;
                ds = this.ExecuteDataSet();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }

            return ds;
        }

        public string CommandText
        {
            get
            {
                return cmd.CommandText;
            }
            set
            {
                cmd.CommandText = value;
                cmd.Parameters.Clear();
            }
        }

        public IDataParameterCollection Parameters
        {
            get
            {
                return cmd.Parameters;
            }
        }

        public void AddParameter(string paramname, object paramvalue)
        {
            SqlParameter param = new SqlParameter(paramname, paramvalue);
            cmd.Parameters.Add(param);
        }

        public void AddParameter(IDataParameter param)
        {
            cmd.Parameters.Add(param);
        }


        public string ConnectionString
        {
            get
            {
                return strConnectionString;
            }
            set
            {
                strConnectionString = value;
            }
        }

        private void Open()
        {
            cmd.Connection.Open();
        }

        private void Close()
        {
            cmd.Connection.Close();
        }

        public bool HandleExceptions
        {
            get
            {
                return handleErrors;
            }
            set
            {
                handleErrors = value;
            }
        }

        public string LastError
        {
            get
            {
                return strLastError;
            }
        }

        public void Dispose()
        {
            cmd.Dispose();
        }
    }
}
